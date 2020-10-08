# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class Wegen_Payment_Terms(models.Model):
    _inherit = 'account.payment.term'

    payment_term_scope = fields.Selection([('installation', 'Installation'),
                                           ('items', 'Items')],
                                          string='Payment Term Scope')
    payment_term_type = fields.Selection([('outright', 'Outright'),
                                          ('installment', 'Installment'),
                                          ('none', 'None')],
                                         default='none')
