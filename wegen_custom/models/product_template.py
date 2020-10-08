# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class ProductTemplate(models.Model):
    _inherit = 'product.template'

    purchase_uom = fields.Many2one('uom.uom', 'Purchase Unit of Measure')
    uom = fields.Many2one('uom.uom', 'Unit of Measure')
