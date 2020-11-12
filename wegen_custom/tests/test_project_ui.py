import odoo.tests

from odoo.addons.project.tests.test_project_ui import TestUi


@odoo.tests.tagged('post_install', '-at_install')
class WeGenCustomProjectTestUi(TestUi):

    def setUp(self):
        super(WeGenCustomProjectTestUi, self).setUp()

    def test_01_project_tour(self):
        return
