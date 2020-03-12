from odoo import models, fields, api
from odoo.exceptions import Warning,ValidationError
import logging

_logger = logging.getLogger(__name__)


class Wegen_Sales(models.Model):
    _inherit = "sale.order"

    project_name = fields.Char("Project Name")
    downpayment_rate = fields.Float(string='Downpayment (%)', digits=(3, 2))
    delivery_rate = fields.Float(string="Delivery (%)", digits=(3,2))
    power_rate = fields.Float(string="System Power (%)", digits=(3,2))
    turn_over_rate = fields.Float(string="Turn Over (%)", digits=(3,2))
    downpayment = fields.Monetary(string='Downpayment Amount', store=True, readonly=True, compute='_compute_amount')
    delivery_amount = fields.Monetary(string="Delivery Amount", store=True, readonly=True, compute='_compute_amount')
    power_amount = fields.Monetary(string="System Power Up Amount", store=True, readonly=True, compute='_compute_amount')
    turn_over_amount = fields.Monetary(string="Commissioning and Turn Over Amount", store=True, readonly=True, compute='_compute_amount')
    monthly_amortization = fields.Monetary(string="Monthly Amortization", store=True, readonly=True, compute='_compute_monthly_amortization')
    payment_terms_type = fields.Selection('Payment Terms Type',related='payment_term_id.payment_term_type')
    annex_description = fields.Text("Annex")

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