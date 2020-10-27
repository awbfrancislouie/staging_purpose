# -*- coding: utf-8 -*-

from odoo import models, fields, api
import logging


_logger = logging.getLogger(__name__)


class Project(models.Model):
    _inherit = "project.project"

    classification = fields.Selection([('external', 'External'),
                                       ('internal', 'Internal')],
                                      string='Classification', copied=True)
    employee_id = fields.Many2one('hr.employee', 'Employee')
    vendor_id = fields.Many2one('res.partner', 'Vendor')

    planning_start_date = fields.Date('Planning Start Date', tracking=True)
    planning_end_date = fields.Date('Planning End Date', tracking=True)
    installation_start_date = fields.Date('Installation Start Date', tracking=True)
    installation_end_date = fields.Date('Installation End Date', tracking=True)
    testing_start_date = fields.Date('Testing and Commissioning Start Date', tracking=True)
    testing_end_date = fields.Date('Testing and Commissioning End Date', tracking=True)
    energized_start_date = fields.Date('Energized Start Date', tracking=True)
    energized_end_date = fields.Date('Energized End Date', tracking=True)

    system_size = fields.Float('System Size (kWp)', related='sale_order_id.system_size')
    installer_type = fields.Selection([('epc', 'EPC'),
                                       ('in_house', 'In House'),
                                       ('combination', 'Combination')],
                                      string='Installer Type')
    actual_cost = fields.Monetary('Actual Cost')
    budget = fields.Monetary('Budget Cost')
    total_duration = fields.Integer('Total Project Duration', compute='_compute_duration')
    state = fields.Selection([('new', 'New'),
                              ('planning', 'Planning and Preparation'),
                              ('installation', 'Installation'),
                              ('testing', 'Testing and Commissioning'),
                              ('energized', 'Energized')],
                             string='Status')
    is_template = fields.Boolean('Is Template')

    @api.depends('planning_start_date', 'energized_end_date')
    def _compute_duration(self):
        for record in self:
            plan_date = False
            energ_date = False
            if record.planning_start_date and record.energized_end_date:
                plan_date = record.planning_start_date
                energ_date = record.energized_end_date
                d3 = energ_date - plan_date
                if d3.days == 0:
                    days = 1
                else:
                    days = d3.days
                record.total_duration = days
            else:
                record.total_duration = 0


class Wegen_Task(models.Model):
    _inherit = "project.task"

    company_1 = fields.Many2one('res.company', 'Company ', compute='_compute_company')
    move_date = fields.Date('Date Move')
    project_classification = fields.Selection(related='project_id.classification')
    project_status = fields.Selection([('preparation', 'Preparation'),
                                       ('Permitting', 'Permitting'),
                                       ('Installation', 'Installation'),
                                       ('Testing and Commissioning', 'Testing and Commissioning'),
                                       ('Energized', 'Energized')])

    is_admin = fields.Boolean(compute='_is_admin')
    is_manager = fields.Boolean(compute='_is_manager')
    is_assignee = fields.Boolean(compute='_is_assignee')
    is_creator = fields.Boolean(compute='_is_creator')
    is_allow_edit = fields.Boolean(default=True, compute='_is_allow_edit')

    @api.depends('company_id')
    def _compute_company(self):
        for rec in self:
            rec.company_1 = rec.company_id.id

    def _is_admin(self):
        user_groups = [group.id for group in self.env.user.groups_id]
        project_admin = self.env.ref('project.group_project_manager')
        access_admin = self.env.ref('base.group_erp_manager')
        settings_admin = self.env.ref('base.group_system')

        is_project_admin = project_admin.id in user_groups
        is_access_admin = access_admin.id in user_groups
        is_settings_admin = settings_admin.id in user_groups

        if is_project_admin or is_access_admin or is_settings_admin:
            self.is_admin = True
        else:
            self.is_admin = False

    def _is_manager(self):
        self.is_manager = self.manager_id.id == self.env.uid

    def _is_assignee(self):
        self.is_assignee = self.user_id.id == self.env.uid

    def _is_creator(self):
        if self.project_classification == 'internal':
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
