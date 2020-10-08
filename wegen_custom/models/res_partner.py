# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class ResPartner(models.Model):
    _inherit = 'res.partner'

    authorized_partner_signatory = fields.Many2one('res.partner', 'Authorized Signatory')
    is_authorized_partner_signatory = fields.Boolean('Authorized Signatory?')
    authorized_signatory_update = fields.Datetime('Authorized Signatory Update')

    billing_partner_contact = fields.Many2one('res.partner', 'Billing Contact')
    is_billing_contact = fields.Boolean('Billing Contact?')
    billing_contact_update = fields.Datetime('Billing Contact Update')

    technical_partner_contact = fields.Many2one('res.partner', 'Technical Contact')
    is_technical_contact = fields.Boolean('Technical Contact?')
    technical_contact_update = fields.Datetime('Technical Contact Update')
