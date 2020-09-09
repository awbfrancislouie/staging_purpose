# -*- coding: utf-8 -*-
from odoo import models
import logging

_logger = logging.getLogger(__name__)


class SaleOrder(models.Model):
    _name = "sale.order"
    _inherit = "sale.order"

    def _prepare_subscription_data(self, template):
        _logger.debug('Overriding Subscription Data Default')
        payment_subscription = self.payment_term_id.subscription_template_id
        if payment_subscription:
            template = payment_subscription
        values = super(SaleOrder, self)._prepare_subscription_data(template)
        default_stage = self.env['sale.subscription.stage'].search([('in_progress', '=', False)], order='sequence', limit=1)
        _logger.debug(f'Setting Default Stage {default_stage.id}')
        if default_stage:
            values['stage_id'] = default_stage.id
        return values


class SaleOrderLine(models.Model):
    _inherit = "sale.order.line"

    def _prepare_subscription_line_data(self):
        """Prepare a dictionnary of values to add lines to a subscription."""
        values = super(SaleOrderLine, self)._prepare_subscription_line_data()
        if 'monthly_amortization' in self.env['sale.order']._fields:
            amount = self.order_id.monthly_amortization
            for line in values:
                line[2]['quantity'] = 1
                line[2]['price_unit'] = amount
        return values
