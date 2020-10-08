# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class Users(models.Model):
    _inherit = 'res.users'

    authorized_partner_signatory = fields.Many2one('res.partner', 'Authorized Signatory', related='partner_id.authorized_partner_signatory')
    is_authorized_partner_signatory = fields.Boolean('Authorized Signatory?', related='partner_id.is_authorized_partner_signatory')
    authorized_signatory_update = fields.Datetime('Authorized Signatory Update', related='partner_id.authorized_signatory_update')

    billing_partner_contact = fields.Many2one('res.partner', 'Billing Contact', related='partner_id.billing_partner_contact')
    is_billing_contact = fields.Boolean('Billing Contact?', related='partner_id.is_billing_contact')
    billing_contact_update = fields.Datetime('Billing Contact Update', related='partner_id.billing_contact_update')

    technical_partner_contact = fields.Many2one('res.partner', 'Technical Contact', related='partner_id.technical_partner_contact')
    is_technical_contact = fields.Boolean('Technical Contact?', related='partner_id.is_technical_contact')
    technical_contact_update = fields.Datetime('Technical Contact Update', related='partner_id.technical_contact_update')
