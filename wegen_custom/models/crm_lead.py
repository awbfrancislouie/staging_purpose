from odoo import api, models, fields, _
from odoo.exceptions import ValidationError
from datetime import date
import logging


_logger = logging.getLogger(__name__)


class Wegen_Lead(models.Model):
    _inherit = "crm.lead"

    site_location_id = fields.Many2one('project.site', ondelete='restrict')
    x_studio_account_type = fields.Many2one('x_customer_account_type', )
    project_code = fields.Char('Project Code')
    project_code_id = fields.Many2one('project.code.inventory')

    def _create_lead_partner_data(self, name, is_company, parent_id=False):
        """ Override default partner data removes the user_id """
        _logger.info('Overriding Default Lead Partner Data')
        retval = super(Wegen_Lead, self)._create_lead_partner_data(name, is_company, parent_id)
        retval['user_id'] = None
        return retval

    def redirect_lead_opportunity_view(self):
        self.ensure_one()
        params = [('id', '=', self.id)]
        has_access = self.env['crm.lead'].search_count(params)

        message = f'Redirecting to Lead or Opportunity {self.type} {self.id} {has_access}'
        _logger.info(message)

        if has_access:
            vals = {
                'name': _('Lead or Opportunity'),
                'domain': [('type', '=', self.type)],
                'res_id': self.id,
                'view_mode': 'form',
                'context': {'default_type': self.type}
            }
        else:
            vals = {
                'name': 'Leads',
                'domain': [('type', '=', 'lead')],
                'res_id': None,
                'view_mode': 'list',
                'context': {'default_type': 'lead'},
                'clear_breadcrumb': True,
                'target': 'main'
            }

        retval = {
            'res_model': 'crm.lead',
            'type': 'ir.actions.act_window',
            'view_id': False,
            **vals
        }

        _logger.info(f'Redirect to {retval}')

        return retval

    def action_sale_quotations_new(self):
        if not self.project_code:
            raise ValidationError('Please generate the Project Code first before creating new contracts.')
        retval = super(Wegen_Lead, self).action_sale_quotations_new()
        return retval

    @api.onchange('stage_id')
    def _require_project_code(self):
        REQUIRED_STAGE = ['GRADE 3', 'GRADE 4', 'GRADE 5', 'PARKED', 'GRADE 6']
        rec = self
        _logger.info(f'{rec.stage_id.name.upper()} | {rec.project_code}')
        if rec.stage_id.name.upper() in REQUIRED_STAGE and not rec.project_code:
            raise ValidationError('Project is empty. Please generate a Project Code.')

    def action_generate_project_code(self):
        if self.site_location_id is None:
            raise ValidationError('Invalid Project Site. Please select a project site.')

        if self.x_studio_account_type is None:
            raise ValidationError('Invalid Account Type. Please select an account type.')

        zip_code = self.site_location_id.zip_code
        account_type = self.x_studio_account_type.x_code
        today = date.today()
        year = str(today.year)[:-2]
        
        get_current_zip_code = self.project_code[0:4] if self.project_code else None
        get_current_account_type = self.project_code[5:8] if self.project_code else None
        get_current_year = self.project_code[9:11] if self.project_code else None

        if not account_type:
            raise ValidationError('Account type code is empty. Please enter code in account type')

        if get_current_zip_code == zip_code and get_current_account_type == account_type and get_current_year == year:
            raise ValidationError('You cannot generate a new project code if the same zipcode, account type and year.')

        series = self._get_series(zip_code, account_type, year)

        code = f'{zip_code}-{account_type}-{year}-{series:05}'

        self.project_code = code

        msg_body = _("Project Code Generated: %s") % (code)
        self.message_post(body=msg_body)

        for order_id in self.order_ids:
            _logger.info(f'Order ID: {order_id} {order_id.project_code} {order_id.project_ids}')
            projs = order_id.project_ids
            for project in projs:
                _logger.info(f'Order ID: {order_id} Project Id: {project.name}')
                project_name = project.name.split(' - ')
                project_name = f'{code} - {project_name[1]}'
                project.name = project_name

    def _get_series(self, zip_code, account_type, year):
        args = [('zip_code', '=', zip_code),
                ('account_type', '=', account_type),
                ('year', '=', year)
                ]
        code_inventory = self.env['project.code.inventory'].sudo()
        series = code_inventory.search(args, limit=1, order='series DESC')
        if len(series) == 0:
            series = 1
        else:
            series = series[0].series + 1

        data = {'zip_code': zip_code,
                'account_type': account_type,
                'year': year,
                'series': series
                }
        code = code_inventory.create([data])
        self.project_code_id = code[0].id

        return series


class ProjectCode(models.Model):
    _name = 'project.code.inventory'

    zip_code = fields.Char('Zip Code')
    account_type = fields.Char('Account Type')
    year = fields.Integer('Year')
    series = fields.Integer('Series')

    _sql_contraints = [
        ('unique sequence', 'UNIQUE(zip_code, account_type, year, series)', 'Series already exists')
    ]
