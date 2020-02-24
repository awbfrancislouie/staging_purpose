# -*- coding: utf-8 -*-

from odoo import models, fields, api

class Wegen_Task(models.Model):
    _inherit = "project.task"

    is_allowed_edit = fields.Boolean(compute='_is_allow_user_edit')

    def _is_allow_user_edit(self):
        for task in self:
            self.is_allowed_edit = False
            if self.user_id == self.env.uid or self.manager_id == self.env.uid:
                self.is_allowed_edit = True

