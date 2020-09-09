from odoo import fields, models


class PaymentTerm(models.Model):
    _inherit = 'account.payment.term'

    subscription_template_id = fields.Many2one('sale.subscription.template', 'Subscription Template', ondelete="restrict")
