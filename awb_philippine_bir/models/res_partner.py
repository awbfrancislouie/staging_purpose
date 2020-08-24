from odoo import models, fields, api
import logging

_logger = logging.getLogger(__name__)


class ResPartnerBIRExt(models.Model):
    _inherit = 'res.partner'
    _description = 'Vendor Ext'

    vendor_purchase_tax_ids = fields.Many2many('account.tax', string='Vendor Taxes')