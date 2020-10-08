# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class CustomerAccountType(models.Model):
    _name = 'sale.customer_account_type'
    _description = 'Customer Account Type'
    _inherit = ['mail.thread', 'mail.activity.mixin']

    name = fields.Char('Name')
    code = fields.Char('Code')


class CustomerMarketType(models.Model):
    _name = 'sale.customer_market_type'
    _description = 'Customer Market Type'
    _inherit = ['mail.thread', 'mail.activity.mixin']

    name = fields.Char('Name')


class CustomerPropertyType(models.Model):
    _name = 'sale.customer_property_type'
    _description = 'Customer Property Type'
    _inherit = ['mail.thread', 'mail.activity.mixin']

    name = fields.Char('Name')


class CustomerSystemType(models.Model):
    _name = 'sale.customer_system_type'
    _description = 'Customer System Type'
    _inherit = ['mail.thread', 'mail.activity.mixin']

    name = fields.Char('Name')


class SolarPanelType(models.Model):
    _name = 'sale.solar_panel_type'
    _description = 'Solar Panel Type'
    _inherit = ['mail.thread', 'mail.activity.mixin']

    name = fields.Char('Name')
    capacity = fields.Char('Capacity')
