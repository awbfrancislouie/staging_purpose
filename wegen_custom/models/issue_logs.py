# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class IssueLogs(models.Model):
    _name = 'x_issue_logs'
    _description = 'Issue Logs'
    _inherit = ['mail.thread', 'mail.activity.mixin']