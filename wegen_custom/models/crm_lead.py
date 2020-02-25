from odoo import models, fields
import logging


_logger = logging.getLogger(__name__)


class Wegen_Lead(models.Model):
    _inherit = "crm.lead"

    def _create_lead_partner_data(self, name, is_company, parent_id=False):
        """ Override default partner data removes the user_id"""
        _logger.info('Overriding Default Lead Partner Data')
        retval = super(Wegen_Lead, self)._create_lead_partner_data(name, is_company, parent_id)
        retval['user_id'] = None
        return retval
