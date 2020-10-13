from odoo import models, fields, api
from odoo.exceptions import Warning, ValidationError
import logging

_logger = logging.getLogger(__name__)


class Wegen_Sales(models.Model):
    _inherit = "sale.order"

    project_code = fields.Char("Project Code", related='opportunity_id.project_code', readonly=True)
    downpayment_rate = fields.Float(string='Downpayment (%)', digits=(3, 2))
    delivery_rate = fields.Float(string="Delivery (%)", digits=(3,2))
    power_rate = fields.Float(string="System Power (%)", digits=(3,2))
    turn_over_rate = fields.Float(string="Turn Over (%)", digits=(3,2))
    downpayment = fields.Monetary(string='Downpayment Amount', store=True, readonly=True, compute='_compute_amount')
    delivery_amount = fields.Monetary(string="Delivery Amount", store=True, readonly=True, compute='_compute_amount')
    power_amount = fields.Monetary(string="System Power Up Amount", store=True, readonly=True, compute='_compute_amount')
    turn_over_amount = fields.Monetary(string="Commissioning and Turn Over Amount", store=True, readonly=True, compute='_compute_amount')
    monthly_amortization = fields.Monetary(string="Monthly Amortization", store=True, readonly=True, compute='_compute_monthly_amortization')
    payment_terms_type = fields.Selection('Payment Terms Type', related='payment_term_id.payment_term_type')
    annex_description = fields.Text("Annex")
    authorized_signatory = fields.Many2one('res.users', "Authorized Signatory", default=lambda self: self.env.user, required=True)

    account_type = fields.Many2one('sale.customer_account_type', 'Account Type')
    account_type_1 = fields.Many2one('sale.customer_account_type', 'Account Type')

    customer_market_type = fields.Many2one('sale.customer_market_type', 'Market Type')
    customer_property_type = fields.Many2one('sale.customer_property_type', 'Property Type')
    customer_system_type = fields.Many2one('sale.customer_system_type', 'System Type')

    quotation_template = fields.Many2one('sale.order.template', 'Quotation Template')

    estimated_kwp = fields.Float('Estimated kWp', readonly=True)
    kwp_rate = fields.Float('kWp Rate')

    batteries = fields.Integer('Batteries')
    inverter_count = fields.Integer('Number of Inverters')
    panel_tier_1_count = fields.Integer('Number of Tier 1 Panels')

    solar_panel_type = fields.Many2one('sale.solar_panel_type', 'Solar Panel Type')
    capacity = fields.Char('Capacity', related='solar_panel_type.capacity')

    state_id = fields.Char('Region', related='partner_id.state_id.name')

    system_size = fields.Float('System Size', readonly=True, compute='_compute_system_size')
    system_type = fields.Many2one('sale.customer_system_type', 'System Type')

    transaction_type = fields.Selection([('installation', 'Installation'),
                                         ('items', 'Items')],
                                        string='Transaction Type')

    @api.onchange('team_id')
    def _oc_filter_authorized_signatory(self):
        if self.authorized_signatory.sale_team_id not in self.team_id:
            self.authorized_signatory = False

    @api.depends('amount_total', 'downpayment_rate', 'power_rate')
    def _compute_amount(self):
        _logger.info('Computing Amount')
        for order in self:
            downpayment = order.amount_total * (order.downpayment_rate / 100)
            power = order.amount_total * (order.power_rate / 100)
            delivery = order.amount_total * (order.delivery_rate / 100)
            turn_over = order.amount_total * (order.turn_over_rate / 100)
            _logger.info(f'{order.amount_total} * {order.downpayment_rate} = {downpayment}')
            order.downpayment = downpayment
            order.power_amount = power
            order.delivery_amount = delivery
            order.turn_over_amount = turn_over

    @api.depends('panel_tier_1_count', 'capacity')
    def _compute_system_size(self):
        for record in self:
            record.system_size = record.panel_tier_1_count * float(record.capacity)

    @api.constrains('downpayment_rate')
    def _check_downpayment_rate(self):
        for record in self:
            if record.payment_term_id.payment_term_type == 'installment':
                if record.downpayment_rate > 100:
                    raise Warning("Downpayment Rate should not exceed 100%.")
                elif record.downpayment_rate < 0:
                    raise Warning("Downpayment Rate should not be lower than 0%.")

    @api.constrains('downpayment_rate','delivery_rate','power_rate','turn_over_rate','payment_term_id')
    def _check_total_amount(self):
        for record in self:
            if record.payment_term_id.payment_term_type == 'outright':
                total_outright = record.downpayment_rate + record.delivery_rate + record.power_rate + record.turn_over_rate
                if total_outright > 100:
                    raise Warning("Total Outright Rate should not exceed 100%.")
                elif total_outright != 100:
                    raise Warning("Total Outright Rate should be 100%.")
                elif total_outright < 0:
                    raise Warning("Total Outright Rate should not be lower than 0%.")

    @api.depends('amount_total', 'downpayment', 'payment_term_id')
    def _compute_monthly_amortization(self):
        for record in self:
            amortization = 0
            if record.payment_term_id:
                count = len(record.payment_term_id.line_ids)
                amortization = (record.amount_total - record.downpayment) / count
            record.monthly_amortization = amortization


class SalesOrderLine(models.Model):
    _inherit = 'sale.order.line'

    def _timesheet_create_project(self):
        values = super(SalesOrderLine, self)._timesheet_create_project()
        _logger.info(f'CREATING PROJECT: {values}')
        if self.order_id.project_code:
            values['name'] = self.order_id.project_code

        _logger.info(f'CREATING OVERRIDE PROJECT: {values}')
        return values
