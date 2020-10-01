# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class CustomerMarketType(models.Model):
    _name = 'x_customer_market_type'
    _description = 'Customer Market Type'
    _inherit = ['mail.thread', 'mail.activity.mixin']

    x_name = fields.Char('Name')
    test = fields.Char('Test')
