from odoo import models, fields, _
import logging


_logger = logging.getLogger(__name__)


class Wegen_Lead(models.Model):
    _inherit = "crm.lead"

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
