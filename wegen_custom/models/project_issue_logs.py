# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class IssueLogs(models.Model):
    _name = 'project.issue.logs'
    _description = 'Issue Logs'
    _inherit = ['mail.thread', 'mail.activity.mixin']

    name = fields.Char('Name', required=True)
    project_id = fields.Many2one('project.project', 'Project', required=True)
    issue_type = fields.Many2one('project.issue.type', 'Issue Type', required=True)
    description = fields.Html('Description')

    logged_date = fields.Date('Date Logged', required=True)
    resolved_date = fields.Date('Date Resolved')

    state = fields.Selection([('new', 'New'),
                              ('ongoing', 'On Going'),
                              ('resolved', 'Resolved')],
                             string='Status', default='new')


class IssueType(models.Model):
    _name = 'project.issue.type'
    _description = 'Issue Types'

    name = fields.Char('Name', required=True)
