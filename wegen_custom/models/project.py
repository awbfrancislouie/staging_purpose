# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class Wegen_Task(models.Model):
    _inherit = "project.task"

    is_admin = fields.Boolean(compute='_is_admin')
    is_manager = fields.Boolean(compute='_is_manager')
    is_assignee = fields.Boolean(compute='_is_assignee')
    is_creator = fields.Boolean(compute='_is_creator')
    is_allow_edit = fields.Boolean(default=True, compute='_is_allow_edit')

    def _is_admin(self):
        user_groups = [group.id for group in self.env.user.groups_id]
        _logger.info(str(user_groups))
        is_project_admin = 19 in user_groups
        is_access_admin = 2 in user_groups
        is_settings_admin = 3 in user_groups

        if is_project_admin or is_access_admin or is_settings_admin:
            self.is_admin = True
        else:
            self.is_admin = False

    def _is_manager(self):
        self.is_manager = self.manager_id.id == self.env.uid

    def _is_assignee(self):
        self.is_assignee = self.user_id.id == self.env.uid

    def _is_creator(self):
        if self.x_studio_project_classification == 'internal':
            is_creator = not self.user_id and self.create_uid.id == self.env.uid
        else:
            is_creator = False

        self.is_creator = is_creator

    def _is_allow_edit(self):
        if self.id is None:
            self.is_allow_edit = True
            return

        if self.is_admin or self.is_creator or self.is_assignee or self.is_manager:
            self.is_allow_edit = True
        else:
            self.is_allow_edit = False


class ProjectSiteLocation(models.Model):
    _name = 'project.site'
    _description = 'Project Site Location'

    name = fields.Char("Site Location Name", required=True)
    zip_code = fields.Char('Zip Code', required=True)
    notes = fields.Text("Notes")
