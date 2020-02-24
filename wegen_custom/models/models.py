# -*- coding: utf-8 -*-

from odoo import models, fields, api


class Wegen_Task(models.Model):
    _inherit = "project.task"

    is_allowed_edit = fields.Boolean(compute='_is_allow_user_edit')

    @api.depends('user_id', 'manager_id')
    def _is_allow_user_edit(self):
        for task in self:
            self.is_allowed_edit = False
            if self.user_id == self.env.uid or self.manager_id == self.env.uid:
                self.is_allowed_edit = True

# class wegen_custom(models.Model):
#     _name = 'wegen_custom.wegen_custom'

#     name = fields.Char()
#     value = fields.Integer()
#     value2 = fields.Float(compute="_value_pc", store=True)
#     description = fields.Text()
#
#     @api.depends('value')
#     def _value_pc(self):
#         self.value2 = float(self.value) / 100
