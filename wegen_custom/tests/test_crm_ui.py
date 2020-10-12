import odoo.tests

from odoo.addons.crm.tests.test_crm_ui import TestUi


@odoo.tests.tagged('post_install', '-at_install')
class WeGenCustomProjectTestUi(TestUi):

    def test_01_crm_tour(self):
        pass
