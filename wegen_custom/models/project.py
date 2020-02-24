# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class Wegen_Task(models.Model):
    _inherit = "project.task"

    is_manager = fields.Boolean(compute='_is_manager')
    is_assignee = fields.Boolean(compute='_is_assignee')
    is_creator = fields.Boolean(compute='_is_creator')

    def _is_manager(self):
        for task in self:
            self.is_manager = self.manager_id.id == self.env.uid

    def _is_assignee(self):
        self.is_assignee = self.user_id.id == self.env.uid

    def _is_creator(self):
        if self.x_studio_project_classification == 'internal':
            is_creator = not self.user_id and self.create_uid.id == self.env.uid
        else:
            is_creator = False

        self.is_creator = is_creator
