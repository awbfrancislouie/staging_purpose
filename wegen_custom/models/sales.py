from odoo import models, fields, api
from odoo.exceptions import ValidationError
import logging

_logger = logging.getLogger(__name__)


class Wegen_Sales(models.Model):
    _inherit = "sale.order"

    downpayment_rate = fields.Float(string='Downpayment Rate', digits=(3, 2))
    downpayment = fields.Monetary(string='Downpayment Amount', store=True, readonly=True, compute='_compute_downpayment')
    monthly_amortization = fields.Monetary(string="Monthly Amortization", store=True, readonly=True, compute='_compute_monthly_amortization')

    @api.depends('amount_total', 'downpayment_rate')
    def _compute_downpayment(self):
        _logger.info('Computing Downpayment Amount')
        for order in self:
            downpayment = order.amount_total * (order.downpayment_rate / 100)
            _logger.info(f'{order.amount_total} * {order.downpayment_rate} = {downpayment}')
            order.downpayment = downpayment

    @api.constrains('downpayment_rate')
    def _check_downpayment_rate(self):
        for record in self:
            if record.downpayment_rate > 100:
                raise ValidationError("Downpayment Rate should not exceed 100%.")

    @api.depends('amount_total', 'downpayment', 'payment_term_id')
    def _compute_monthly_amortization(self):
        for record in self:
            amortization = 0
            if record.payment_term_id:
                count = len(record.payment_term_id.line_ids)
                amortization = (record.amount_total - record.downpayment) / count
            record.monthly_amortization = amortization
