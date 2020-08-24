# -*- coding: utf-8 -*-
# from odoo import http


# class AwbPhilippineBir(http.Controller):
#     @http.route('/awb_philippine_bir/awb_philippine_bir/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/awb_philippine_bir/awb_philippine_bir/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('awb_philippine_bir.listing', {
#             'root': '/awb_philippine_bir/awb_philippine_bir',
#             'objects': http.request.env['awb_philippine_bir.awb_philippine_bir'].search([]),
#         })

#     @http.route('/awb_philippine_bir/awb_philippine_bir/objects/<model("awb_philippine_bir.awb_philippine_bir"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('awb_philippine_bir.object', {
#             'object': obj
#         })
