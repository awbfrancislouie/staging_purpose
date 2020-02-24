# -*- coding: utf-8 -*-
{
    'name': "Wegen Custom",

    'summary': """
        Customizations for WeGen""",

    'description': """
        This module contains specific customization to Odoo to support WeGen's
        specific use.
    """,

    'author': "Achieve Without Borders",
    'website': "https://www.achievewithoutborders.com",

    # Categories can be used to filter modules in modules listing
    # Check https://github.com/odoo/odoo/blob/13.0/odoo/addons/base/data/ir_module_category_data.xml
    # for the full list
    'category': 'Localization',
    'version': '0.1.2',

    # any module necessary for this one to work correctly
    'depends': ['base', 'project'],

    # always loaded
    'data': [
        # 'security/ir.model.access.csv',
        'views/task.xml',
        'views/templates.xml',
    ],
    # only loaded in demonstration mode
    'demo': [
    ],
}
