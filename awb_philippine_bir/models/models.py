# -*- coding: utf-8 -*-

# from odoo import models, fields, api


# class awb_philippine_bir(models.Model):
#     _name = 'awb_philippine_bir.awb_philippine_bir'
#     _description = 'awb_philippine_bir.awb_philippine_bir'

#     name = fields.Char()
#     value = fields.Integer()
#     value2 = fields.Float(compute="_value_pc", store=True)
#     description = fields.Text()
#
#     @api.depends('value')
#     def _value_pc(self):
#         for record in self:
#             record.value2 = float(record.value) / 100
