# -*- coding: utf-8 -*-

from odoo import models, fields, api

class CalendarEvent(models.Model):
    ######################
    # Private attributes #
    ######################
    _inherit = "calendar.event"

    ###################
    # Default methods #
    ###################

    ######################
    # Fields declaration #
    ######################
    html_description = fields.Text(string='Description')

    ##############################
    # Compute and search methods #
    ##############################

    ############################
    # Constrains and onchanges #
    ############################

    #########################
    # CRUD method overrides #
    #########################

    ##################
    # Action methods #
    ##################

    ####################
    # Business methods #
    ####################
   