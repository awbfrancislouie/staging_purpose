update ir_model_data set module='wegen_custom',name='sales_order_payment_term_to_empty_rule' where res_id=5 and model='base.automation';
update ir_model_data set module='wegen_custom',name='sales_order_get_company_id' where res_id=11 and model='base.automation';
update ir_model_data set module='wegen_custom',name='task_check_assign_access_rule' where res_id=7 and model='base.automation';
update ir_model_data set module='wegen_custom',name='task_movement_validation' where res_id=2 and model='base.automation';
update ir_model_data set module='wegen_custom',name='contact_project_technical_contact' where res_id=9 and model='base.automation';
update ir_model_data set module='wegen_custom',name='crm_lead_get_company_id' where res_id=4 and model='base.automation';
update ir_model_data set module='wegen_custom',name='sales_order_add_fields_default' where res_id=6 and model='base.automation';
update ir_model_data set module='wegen_custom',name='contact_project_billing_contact' where res_id=8 and model='base.automation';
update ir_model_data set module='wegen_custom',name='sales_order_compute' where res_id=3 and model='base.automation';
update ir_model_data set module='wegen_custom',name='contact_project_authorized_signatory' where res_id=10 and model='base.automation';


insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'group_project_installation_manager', 'wegen_custom', 'res.groups', 83);

insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'group_sales_marketing_user', 'wegen_custom', 'res.groups', 85);

insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'group_sales_sales_manager', 'wegen_custom', 'res.groups', 81);

insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'group_sales_marketing_manager', 'wegen_custom', 'res.groups', 84);


insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'sale_subscription_report_rule', 'wegen_custom', 'ir.rule', 201);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'sale_order_line_rule', 'wegen_custom', 'ir.rule', 202);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'planning_slot_read_rule', 'wegen_custom', 'ir.rule', 209);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'account_invoice_report_manager_rule', 'wegen_custom', 'ir.rule', 203);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'crm_activity_report_manager_rule', 'wegen_custom', 'ir.rule', 204);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'project_task_own_rule', 'wegen_custom', 'ir.rule', 208);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'project_task_user_read_rule', 'wegen_custom', 'ir.rule', 212);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'sale_order_manager_rule', 'wegen_custom', 'ir.rule', 205);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'project_project_assignee_manager_rule', 'wegen_custom', 'ir.rule', 210);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'project_project_manager_rule', 'wegen_custom', 'ir.rule', 211);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'crm_lead_manager_delete', 'wegen_custom', 'ir.rule', 206);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'crm_lead_edit_manager_rule', 'wegen_custom', 'ir.rule', 213);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'crm_lead_user_rule', 'wegen_custom', 'ir.rule', 214);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'crm_lead_sales_create_rule', 'wegen_custom', 'ir.rule', 215);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'crm_lead_user_read_rule', 'wegen_custom', 'ir.rule', 216);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'crm_lead_manager_create_rule', 'wegen_custom', 'ir.rule', 218);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'crm_lead_manager_read_rule', 'wegen_custom', 'ir.rule', 219);


insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_account_account_sales_manager', 'wegen_custom', 'ir.model.access', 863);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_account_analytic_account_sales_manager', 'wegen_custom', 'ir.model.access', 853);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_account_journal_sales_manager', 'wegen_custom', 'ir.model.access', 868);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_account_move_line_sales_manager', 'wegen_custom', 'ir.model.access', 865);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_account_move_sales_manager', 'wegen_custom', 'ir.model.access', 850);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_account_payment_term_sales_manager', 'wegen_custom', 'ir.model.access', 851);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_account_tax_group_sales_manager', 'wegen_custom', 'ir.model.access', 869);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_account_tax_sale_sales_manager', 'wegen_custom', 'ir.model.access', 867);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_account_tax_user_sales_manager', 'wegen_custom', 'ir.model.access', 860);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_analytic_account_installation_manager', 'wegen_custom', 'ir.model.access', 933);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_analytic_tag_sales_manager', 'wegen_custom', 'ir.model.access', 852);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_calendar_event_sales_manager', 'wegen_custom', 'ir.model.access', 844);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_calendar_event_type_sales_manager', 'wegen_custom', 'ir.model.access', 845);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_lead_marketing_manager', 'wegen_custom', 'ir.model.access', 939);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_lead_marketing_user', 'wegen_custom', 'ir.model.access', 941);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_lead_sales_manager', 'wegen_custom', 'ir.model.access', 839);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_lead_scoring_frequency_marketing_manager', 'wegen_custom', 'ir.model.access', 937);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_lead_scoring_frequency_marketing_user', 'wegen_custom', 'ir.model.access', 940);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_lead_tag_sales_manager', 'wegen_custom', 'ir.model.access', 842);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_lost_reason_sales_manager', 'wegen_custom', 'ir.model.access', 843);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_scoring_frequency_field_sales_manager', 'wegen_custom', 'ir.model.access', 847);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_scoring_frequency_sales_manager', 'wegen_custom', 'ir.model.access', 846);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_crm_team_user_sales_manager', 'wegen_custom', 'ir.model.access', 838);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_ir_property_sales_sales_manager', 'wegen_custom', 'ir.model.access', 855);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_planning_slot_installation_manager', 'wegen_custom', 'ir.model.access', 936);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_product_attribute_sales_manager', 'wegen_custom', 'ir.model.access', 866);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_product_packaging_sales_manager', 'wegen_custom', 'ir.model.access', 876);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_product_pricelist_sales_manager', 'wegen_custom', 'ir.model.access', 862);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_product_product_sales_manager', 'wegen_custom', 'ir.model.access', 859);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_product_supplier_sales_manager', 'wegen_custom', 'ir.model.access', 864);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_product_template_sales_manager', 'wegen_custom', 'ir.model.access', 858);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_code_inventory_user', 'wegen_custom', 'ir.model.access', 978);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_resource_calendar_attendance_installation_manager', 'wegen_custom', 'ir.model.access', 931);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_resource_calendar_installation_manager', 'wegen_custom', 'ir.model.access', 930);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_site_project_manager', 'wegen_custom', 'ir.model.access', 961);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_site_sales_manager', 'wegen_custom', 'ir.model.access', 960);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_site_user', 'wegen_custom', 'ir.model.access', 959);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_task_installation_manager', 'wegen_custom', 'ir.model.access', 928);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_task_type_installation_manager', 'wegen_custom', 'ir.model.access', 927);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_timeshee_forecast_installation_manager', 'wegen_custom', 'ir.model.access', 926);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_timesheet_ana_installation_manager', 'wegen_custom', 'ir.model.access', 934);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_project_timesheet_forecast_project_manager', 'wegen_custom', 'ir.model.access', 935);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_res_partner_category_sales_manager', 'wegen_custom', 'ir.model.access', 841);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_res_partner_installation_manager', 'wegen_custom', 'ir.model.access', 929);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_res_partner_read_sales_manager', 'wegen_custom', 'ir.model.access', 857);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_res_partner_sales_manager', 'wegen_custom', 'ir.model.access', 840);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_resource_leave_installation_manager', 'wegen_custom', 'ir.model.access', 932);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_order_line_sales_manager', 'wegen_custom', 'ir.model.access', 849);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_order_marketing_manager', 'wegen_custom', 'ir.model.access', 938);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_order_marketing_user', 'wegen_custom', 'ir.model.access', 942);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_order_option_sales_manager', 'wegen_custom', 'ir.model.access', 873);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_order_temp_opt_sales_manager', 'wegen_custom', 'ir.model.access', 872);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_order_template_line_sales_manager', 'wegen_custom', 'ir.model.access', 871);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_order_template_sales_manager', 'wegen_custom', 'ir.model.access', 870);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_purchase_sales_manager', 'wegen_custom', 'ir.model.access', 848);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_report_sales_manager', 'wegen_custom', 'ir.model.access', 854);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_sale_subscription_report_sales_manager', 'wegen_custom', 'ir.model.access', 881);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_stock_location_sales_manager', 'wegen_custom', 'ir.model.access', 878);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_stock_move_sales_manager', 'wegen_custom', 'ir.model.access', 875);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_stock_picking_sales_manager', 'wegen_custom', 'ir.model.access', 874);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_stock_rule_flow_sales_manager', 'wegen_custom', 'ir.model.access', 880);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_stock_wh_ordpt_sales_manager', 'wegen_custom', 'ir.model.access', 879);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_stock_wh_sales_manager', 'wegen_custom', 'ir.model.access', 877);
insert into ir_model_data (noupdate, name, module, model, res_id)
values (false, 'access_uom_uom_sales_manager', 'wegen_custom', 'ir.model.access', 861);