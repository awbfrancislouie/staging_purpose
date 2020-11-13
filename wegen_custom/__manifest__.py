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
    'version': '13.0.2.0.0',

    # any module necessary for this one to work correctly
    'depends': ['base',
                'crm',
                'crm_enterprise',
                'project',
                'project_forecast',
                'sale_management',
                'sale_timesheet',
                'sale_subscription',
                'documents_account',
                'account_asset',
                'account_batch_payment',
                'account_budget',
                'purchase',
                'sale_purchase',
                'hr_contract',
                'base_geolocalize',
                'stock_account',
                'stock_landed_costs',
                'purchase_stock',
                'project_timesheet_forecast_sale',
                'social',
                ],

    # always loaded
    'data': [
        'security/res_groups.xml',
        'security/ir.model.access.csv',
        'security/record_rules.xml',
        'security/record_rules_override.xml',
        'views/task.xml',
        'views/payment_terms.xml',
        'views/product_template_views.xml',
        'views/project_views.xml',
        'views/crm_view.xml',
        'views/res_partner_views.xml',
        'views/sale_view.xml',
        'views/sales_customer_views.xml',
        'views/project_sites.xml',
        'views/project_issue_views.xml',
        'views/views.xml',
        'views/popa_report_installment.xml',
        'views/popa_report_outright.xml',
        'data/base_automation.xml',
    ],
    # only loaded in demonstration mode
    'demo': [
    ],
    'installable': True,
    'application': False,
    'auto_install': False
}
