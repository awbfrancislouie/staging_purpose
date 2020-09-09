# -*- coding: utf-8 -*-
{
    'name': "AWB Subscription",

    'summary': """
        Subscription modification""",

    'description': """
        Subscription enhancement
    """,

    'author': "Achieve Without Borders Inc.",
    'website': "https://www.achievewithoutborders.com/",

    # Categories can be used to filter modules in modules listing
    # Check https://github.com/odoo/odoo/blob/13.0/odoo/addons/base/data/ir_module_category_data.xml
    # for the full list
    'category': 'Localization',
    'version': '13.0.1.0',

    # any module necessary for this one to work correctly
    'depends': [
                'account',
                'sale_management',
                'sale_subscription'],

    # always loaded
    'data': [
        'views/account_payment_term_view.xml'
    ],
    # only loaded in demonstration mode
    'demo': [
        # 'demo/demo.xml',
    ],
    'installable': True,
    'application': True,
    'auto_install': False
}
