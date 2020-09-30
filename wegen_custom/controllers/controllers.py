# -*- coding: utf-8 -*-
from odoo import http

# class WegenCustom(http.Controller):
#     @http.route('/wegen_custom/wegen_custom/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/wegen_custom/wegen_custom/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('wegen_custom.listing', {
#             'root': '/wegen_custom/wegen_custom',
#             'objects': http.request.env['wegen_custom.wegen_custom'].search([]),
#         })

#     @http.route('/wegen_custom/wegen_custom/objects/<model("wegen_custom.wegen_custom"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('wegen_custom.object', {
#             'object': obj
#         })