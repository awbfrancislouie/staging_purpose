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


class CustomerAccountType(models.Model):
    _name = 'x_customer_account_type'
    _description = 'Customer Account Type'
    _inherit = ['mail.thread', 'mail.activity.mixin']

    x_name = fields.Char('Name')
    x_code = fields.Char('Code')
    test = fields.Char('Test')
