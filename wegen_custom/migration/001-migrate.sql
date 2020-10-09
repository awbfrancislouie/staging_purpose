
update ir_model_data set name='menu_sale_config_customer',module='wegen_custom',studio=null,noupdate=false where name='sales_customers_969c42c9-a0de-4e3f-8577-d5131a0869e2';
-- CUSTOMER ACCOUNT TYPE
ALTER TABLE x_customer_account_type RENAME TO sale_customer_account_type;
UPDATE ir_model SET model = 'sale.customer_account_type', state = 'base' WHERE model = 'x_customer_account_type';
update ir_model_data set name = 'model_sale_customer_account_type', module='wegen_custom',studio=null,noupdate=false where name = 'customer_account_typ_3548d2c5-5425-4d45-a4a5-52e3454c415d';
update ir_ui_view set model='sale.customer_account_type' where model='x_customer_account_type';
update ir_act_window set res_model='sale.customer_account_type' where res_model = 'x_customer_account_type';
delete from ir_model_data where model='x_customer_account_type';
ALTER SEQUENCE x_customer_account_type_id_seq RENAME TO sale_customer_account_type_id_seq;


update ir_model_fields set model='sale.customer_account_type' where model = 'x_customer_account_type';
update ir_model_fields set relation='sale.customer_account_type' where relation = 'x_customer_account_type';

ALTER TABLE public.sale_customer_account_type RENAME COLUMN x_name TO "name";
update ir_model_data set name='field_sale_customer_account_type__name', module='wegen_custom', studio=null,noupdate=false where name = 'name_customer_accoun_3aa24a5e-e2e1-4d5e-9408-365e65a00d15';
update ir_model_fields set name='name' where name='x_name' and model='sale.customer_account_type';

ALTER TABLE public.sale_customer_account_type RENAME COLUMN x_code TO "code";
INSERT INTO public.ir_model_data ("name",date_init,date_update,"module",model,res_id)  VALUES ('field_sale_customer_account_type__code','now()','now()','wegen_custom','ir.model.fields',10792);
update ir_model_fields set name='code' where name='x_code' and model='sale.customer_account_type';

update ir_model_data set name='action_view_account_type',module='wegen_custom',studio=null,noupdate=false where name='customer_account_typ_8b861359-708f-4a30-ab92-00907254471e';
update ir_model_data set name='menu_sale_config_customer_account_type',module='wegen_custom',studio=null,noupdate=false where name='sales_customer_accou_e513396c-5541-4a48-92b1-ada3f3d95907';

update ir_model_data set name='view_customer_account_type_tree',module='wegen_custom',studio=null,noupdate=false where name='default_tree_view_fo_dfc4edeb-f266-4680-bb1c-d532d3cd5a72';
update ir_ui_view set name='sale.customer_account_type.tree' where name='Default tree view for x_customer_account_type';
delete from ir_model_data where name='odoo_studio_default__16af9c74-8c42-4eae-a36a-061ebe6eecb4';
delete from ir_ui_view where name='Odoo Studio: Default tree view for x_customer_account_type customization';


update ir_model_data set name='view_customer_account_type_form',module='wegen_custom',studio=null,noupdate=false where name='default_form_view_fo_6ef7c59d-25b7-401e-8fc3-0509c119fc34';
update ir_ui_view set name='sale.customer_account_type.form' where name='Default form view for x_customer_account_type';
delete from ir_model_data where name='odoo_studio_default__7b639dc6-1d7e-4345-9c04-bf06bf711607';
delete from ir_ui_view where name='Odoo Studio: Default form view for x_customer_account_type customization';

-- CUSTOMER MARKET TYPE
ALTER TABLE x_customer_market_type RENAME TO sale_customer_market_type;
ALTER SEQUENCE x_customer_market_type_id_seq RENAME TO sale_customer_market_type_id_seq;
UPDATE ir_model SET model = 'sale.customer_market_type', state = 'base' WHERE model = 'x_customer_market_type';
update ir_model_data set name = 'model_sale_customer_market_type', module='wegen_custom',studio=null,noupdate=false where name = 'customer_market_type_dc2eba18-4afa-4461-9a99-0fe8cdfea992';
update ir_ui_view set model='sale.customer_market_type' where model='x_customer_market_type';
update ir_act_window set res_model='sale.customer_market_type' where res_model = 'x_customer_market_type';
update ir_model_data set model='sale.customer_market_type',module='wegen_custom',studio=null,noupdate=false where model='x_customer_market_type';

update ir_model_fields set model='sale.customer_market_type' where model = 'x_customer_market_type';
update ir_model_fields set relation='sale.customer_market_type' where relation = 'x_customer_market_type';

ALTER TABLE public.sale_customer_market_type RENAME COLUMN x_name TO "name";
update ir_model_data set name='field_sale_customer_market_type__name', module='wegen_custom', studio=null,noupdate=false where name = 'name_customer_market_da99c755-8098-4f43-9610-5adcefbe1221';
update ir_model_fields set name='name' where name='x_name' and model='sale.customer_market_type';

update ir_model_data set name='action_view_market_type',module='wegen_custom',studio=null,noupdate=false where name='customer_market_type_679c277f-9334-40c9-8dfd-7cce9a953a2a';
update ir_model_data set name='menu_sale_config_customer_market_type',module='wegen_custom',studio=null,noupdate=false where name='sales_customer_marke_8fb4e96e-3a35-4680-9faa-24b280961c1a';

update ir_model_data set name='view_customer_market_type_tree',module='wegen_custom',studio=null,noupdate=false where name='default_tree_view_fo_e8bbe4a6-b2cd-4dc1-84b5-3d77b7ced079';
update ir_ui_view set name='sale.customer_market_type.tree' where name='Default tree view for x_customer_market_type';


update ir_model_data set name='view_customer_market_type_form',module='wegen_custom',studio=null,noupdate=false where name='default_form_view_fo_6c0fadd4-dfc1-4bc4-9d81-dadef79d477a';
update ir_ui_view set name='sale.customer_market_type.form' where name='Default form view for x_customer_market_type';
delete from ir_model_data where name='odoo_studio_default__b32df94a-3ffa-43aa-a377-214e75547ab9';
delete from ir_ui_view where name='Odoo Studio: Default form view for x_customer_market_type customization';

-- CUSTOMER PROPERTY TYPE
ALTER TABLE x_customer_property_type RENAME TO sale_customer_property_type;
ALTER SEQUENCE x_customer_property_type_id_seq RENAME TO sale_customer_property_type_id_seq;
UPDATE ir_model SET model = 'sale.customer_property_type', state = 'base' WHERE model = 'x_customer_property_type';
update ir_model_data set name = 'model_sale_customer_property_type', module='wegen_custom',studio=null,noupdate=false where name = 'customer_property_ty_9bdfdef5-817e-47d1-9438-c155054387ab';
update ir_ui_view set model='sale.customer_property_type' where model='x_customer_property_type';
update ir_act_window set res_model='sale.customer_property_type' where res_model = 'x_customer_property_type';
delete from ir_model_data where model='x_customer_property_type';
update ir_model_data set model='sale.customer_property_type',module='wegen_custom',studio=null,noupdate=false where model='x_customer_property_type';

update ir_model_fields set model='sale.customer_property_type' where model = 'x_customer_property_type';
update ir_model_fields set relation='sale.customer_property_type' where relation = 'x_customer_property_type';

ALTER TABLE public.sale_customer_property_type RENAME COLUMN x_name TO "name";
update ir_model_data set name='field_sale_customer_property_type__name', module='wegen_custom', studio=null,noupdate=false where name = 'name_customer_proper_130f4970-d073-4f99-a22c-bbc03ca36da2';
update ir_model_fields set name='x_name' where name='name' and model='sale.customer_property_type';

update ir_model_data set name='action_view_property_type',module='wegen_custom',studio=null,noupdate=false where name='customer_property_ty_eb3c32b4-ffe2-4f27-ae95-abb48a2d5df2';
update ir_model_data set name='menu_sale_config_customer_property_type',module='wegen_custom',studio=null,noupdate=false where name='sales_customer_prope_c4db6b20-6541-48aa-8e9c-4bfec53ad6c7';

update ir_model_data set name='view_customer_property_type_form',module='wegen_custom',studio=null,noupdate=false where name='default_form_view_fo_54112a6a-ff6c-4bbe-bb93-89bb5311a680';
update ir_ui_view set name='sale.customer_property_type.form' where name='Default form view for x_customer_property_type';
delete from ir_model_data where name='odoo_studio_default__28b0b83a-dc38-4843-ade4-3339d68b0be4';
delete from ir_ui_view where name='Odoo Studio: Default form view for x_customer_property_type customization';

-- CUSTOMER SYSTEM TYPE
ALTER TABLE x_customer_system_type RENAME TO sale_customer_system_type;
ALTER SEQUENCE x_customer_system_type_id_seq RENAME TO sale_customer_system_type_id_seq;
UPDATE ir_model SET model = 'sale.customer_system_type', state = 'base' WHERE model = 'x_customer_system_type';
update ir_model_data set name = 'model_sale_customer_system_type', module='wegen_custom',studio=null,noupdate=false where name = 'customer_system_type_b86bef55-7f51-43f6-9441-590f315f4ab0';
update ir_ui_view set model='sale.customer_system_type' where model='x_customer_system_type';
update ir_act_window set res_model='sale.customer_system_type' where res_model = 'x_customer_system_type';
update ir_model_data set model='sale.customer_system_type',module='wegen_custom',studio=null,noupdate=false where model='x_customer_system_type';

update ir_model_fields set model='sale.customer_system_type' where model = 'x_customer_system_type';
update ir_model_fields set relation='sale.customer_system_type' where relation = 'x_customer_system_type';

ALTER TABLE public.sale_customer_system_type RENAME COLUMN x_name TO "name";
update ir_model_data set name='field_sale_customer_system_type__name', module='wegen_custom', studio=null where name = 'name_customer_system_eaa3373f-10d3-4af2-9892-61ab40f4d234';
update ir_model_fields set name='name' where name='x_name' and model='sale.customer_system_type';

update ir_model_data set name='action_view_system_type',module='wegen_custom',studio=null,noupdate=false where name='customer_system_type_e53581ae-1931-455e-9c40-4cf995fe656b';
update ir_model_data set name='menu_sale_config_customer_system_type',module='wegen_custom',studio=null,noupdate=false where name='sales_customer_syste_5f8ac79a-9061-402f-86c5-8dc40729efa3';


update ir_model_data set name='view_customer_system_type_form',module='wegen_custom',studio=null,noupdate=false where name='default_form_view_fo_07052742-a9c6-458a-ad35-31a09dd82821';
update ir_ui_view set name='sale.customer_system_type.form' where name='Default form view for x_customer_system_type';
delete from ir_model_data where name='odoo_studio_default__008f362c-9b84-4b77-bfd5-bee7cec25ce0';
delete from ir_ui_view where name='Odoo Studio: Default form view for x_customer_system_type customization';

-- SOLAR PANEL TYPE
ALTER TABLE x_solar_panel_types RENAME TO sale_solar_panel_type;
ALTER SEQUENCE x_solar_panel_types_id_seq RENAME TO sale_solar_panel_type_id_seq;
UPDATE ir_model SET model = 'sale.solar_panel_type', state = 'base' WHERE model = 'x_solar_panel_types';
update ir_model_data set name = 'model_sale_solar_panel_type', module='wegen_custom',studio=null,noupdate=false where name = 'solar_panel_types_16dff6a2-753c-465d-aaf6-b3c7735d8afb';
update ir_ui_view set model='sale.solar_panel_type' where model='x_solar_panel_types';
update ir_act_window set res_model='sale.solar_panel_type' where res_model = 'x_solar_panel_types';
update ir_model_data set model='sale.solar_panel_type',module='wegen_custom',studio=null,noupdate=false where model='x_solar_panel_types';

update ir_model_fields set model='sale.solar_panel_type' where model = 'x_solar_panel_types';
update ir_model_fields set relation='sale.solar_panel_type' where relation = 'x_solar_panel_types';

ALTER TABLE public.sale_solar_panel_type RENAME COLUMN x_name TO "name";
update ir_model_data set name='field_sale_solar_panel_type__name', module='wegen_custom', studio=null where name = 'name_solar_panel_typ_a995a51b-465f-466f-a6a5-6fca482dac59';
update ir_model_fields set name='name' where name='x_name' and model='sale.solar_panel_type';

ALTER TABLE public.sale_solar_panel_type RENAME COLUMN x_studio_capacity TO "capacity";
update ir_model_data set name='field_sale_solar_panel_type__capacity', module='wegen_custom', studio=null where name = 'new_text_solar_panel_08dbd820-6458-470a-9dc8-a47232f857c6';
update ir_model_fields set name='capacity' where name='x_studio_capacity' and model='sale.solar_panel_type';

update ir_model_data set name='action_view_solar_panel_type',module='wegen_custom',studio=null,noupdate=false where name='solar_panel_types_c7971bb9-c62b-47d2-8cc9-b1c2008acabb';
update ir_model_data set name='menu_sale_config_customer_panel_type',module='wegen_custom',studio=null,noupdate=false where name='sales_solar_panel_ty_b412c39f-431f-40af-a2b1-efdba5208c5f';

update ir_model_data set name='view_solar_panel_type_form',module='wegen_custom',studio=null,noupdate=false where name='default_form_view_fo_c85592cc-c10e-4a7c-ac91-4ea47d69ad49';
update ir_ui_view set name='sale.solar_panel_type.form' where name='Default form view for x_solar_panel_types';
delete from ir_model_data where name='odoo_studio_default__29728cfa-0bf4-4f68-97dd-d5548209a936 ';
delete from ir_ui_view where name='Odoo Studio: Default form view for x_solar_panel_types customization';

-- SALE ORDER
ALTER TABLE public.sale_order RENAME COLUMN x_studio_account_type TO account_type;
update ir_model_data SET name='field_sale_order__account_type',module='wegen_custom',studio=null,noupdate=false where name='customer_account_typ_adf9a516-1d7a-4fa2-bfbd-16632315208d';
update ir_model_fields set name='account_type' where name='x_studio_account_type' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_account_type_1 TO account_type_1;
update ir_model_data SET name='field_sale_order__account_type_1',module='wegen_custom',studio=null,noupdate=false where name='customer_account_typ_e6322ea7-5350-4eb5-a49d-aa361f5356fb';
update ir_model_fields set name='account_type_1' where name='x_studio_account_type_1' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_batteries TO batteries;
update ir_model_data SET name='field_sale_order__batteries',module='wegen_custom',studio=null,noupdate=false where name='customer_market_type_6e22d932-5187-4c44-bcd6-8942c4e8b460';
update ir_model_fields set name='batteries' where name='x_studio_batteries' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_capacity_1 TO capacity;
update ir_model_data SET name='field_sale_order__capacity',module='wegen_custom',studio=null,noupdate=false where name='new_related_field_sa_7b58db74-e854-4a24-b42b-3f4a7908bab3';
update ir_model_fields set name='capacity',related='solar_panel_type.capacity' where name='x_studio_capacity_1' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_customer_market_type TO customer_market_type;
update ir_model_data SET name='field_sale_order__customer_market_type',module='wegen_custom',studio=null,noupdate=false where name='new_integer_sales_or_c54151ab-6ab2-4efd-8791-950e3c8d5f1d';
update ir_model_fields set name='customer_market_type' where name='x_studio_customer_market_type' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_customer_property_type TO customer_property_type;
update ir_model_data SET name='field_sale_order__customer_property_type',module='wegen_custom',studio=null,noupdate=false where name='customer_property_ty_f42dabdf-d353-457e-aca7-b9bfb2352d14';
update ir_model_fields set name='customer_property_type' where name='x_studio_customer_property_type' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_customer_system_type TO customer_system_type;
update ir_model_data SET name='field_sale_order__customer_system_type',module='wegen_custom',studio=null,noupdate=false where name='customer_system_type_dcab08b1-dbb2-413e-81df-cc5edee4e0d0';
update ir_model_fields set name='customer_system_type' where name='x_studio_customer_system_type' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_estimated_kwp_1 TO estimated_kwp;
update ir_model_data SET name='field_sale_order__estimated_kwp',module='wegen_custom',studio=null,noupdate=false where name='new_decimal_sales_or_7df7b52d-412e-49d4-9441-1b4d3825e47b';
update ir_model_fields set name='estimated_kwp',compute='for record in self:
  record[''estimated_kwp_1''] = record.opportunity_id.x_studio_estimated_kwp' where name='x_studio_estimated_kwp_1' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_field_quotation_template TO quotation_template;
update ir_model_data SET name='field_sale_order__quotation_template',module='wegen_custom',studio=null,noupdate=false where name='quotation_template_s_e6553c5a-15db-4f7e-9b23-a11c7286dc14';
update ir_model_fields set name='quotation_template' where name='x_studio_field_quotation_template' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_kwp_rate TO kwp_rate;
update ir_model_data SET name='field_sale_order__kwp_rate',module='wegen_custom',studio=null,noupdate=false where name='new_decimal_sales_or_9a6eaaed-55fe-4813-9a40-c42263a01a38';
update ir_model_fields set name='kwp_rate' where name='x_studio_kwp_rate' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_number_of_inverters TO inverter_count;
update ir_model_data SET name='field_sale_order__inverter_count',module='wegen_custom',studio=null,noupdate=false where name='new_integer_sales_or_3e0045c8-4268-46af-948f-a6f27c16ec51';
update ir_model_fields set name='inverter_count' where name='x_studio_number_of_inverters' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_number_of_tier_1_panels TO panel_tier_1_count;
update ir_model_data SET name='field_sale_order__panel_tier_1_count',module='wegen_custom',studio=null,noupdate=false where name='new_integer_sales_or_46110d81-5041-45aa-b085-b2472a139450';
update ir_model_fields set name='panel_tier_1_count' where name='x_studio_number_of_tier_1_panels' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_solar_panel_types TO solar_panel_type;
update ir_model_data SET name='field_sale_order__solar_panel_type',module='wegen_custom',studio=null,noupdate=false where name='solar_panel_types_sa_f10992d0-8a00-48bc-9705-88e80567c028';
update ir_model_fields set name='solar_panel_type' where name='x_studio_solar_panel_types' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_state_id TO state_id;
update ir_model_data SET name='field_sale_order__state_id',module='wegen_custom',studio=null,noupdate=false where name='new_related_field_sa_a7d30a93-c887-4243-87ff-1d72e77f64eb';
update ir_model_fields set name='state_id' where name='x_studio_state_id' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_system_size_1 TO system_size;
update ir_model_data SET name='field_sale_order__system_size',module='wegen_custom',studio=null,noupdate=false where name='new_decimal_sales_or_c8a630c9-6180-46e4-90d8-d81dda6f80c8';
update ir_model_fields set name='system_size',compute='for record in self:
  record[''system_size''] =(record.panel_tier_1_count)* float(record.capacity)' where name='x_studio_system_size_1' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_system_type TO system_type;
update ir_model_data SET name='field_sale_order__system_type',module='wegen_custom',studio=null,noupdate=false where name='customer_system_type_fe337234-b205-4dc5-828f-cac1400672de';
update ir_model_fields set name='system_type' where name='x_studio_system_type' and model='sale.order';

ALTER TABLE public.sale_order RENAME COLUMN x_studio_transaction_type TO transaction_type;
update ir_model_data SET name='field_sale_order__transaction_type',module='wegen_custom',studio=null,noupdate=false where name='new_selection_sales__569d52e6-7014-4c46-b989-ecea2ce061c6';
update ir_model_fields set name='transaction_type' where name='x_studio_transaction_type' and model='sale.order';


-- SALE ORDER VIEWS

update ir_model_data set name='view_order_tree', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_sale_ord_523635e8-8417-49ec-a22a-77a1616d5a28';
update ir_ui_view set name='sale.order.tree.inherit.wegen_custom',arch_db='<data>
  <xpath expr="//field[@name=''company_id'']" position="after">
          <field name="estimated_kwp" sum="Sum of Estimated kWp"/>
          <field name="system_size" sum="Sum of System Size"/>
        </xpath>
</data>
',arch_prev='<data>
  <xpath expr="//field[@name=''company_id'']" position="after">
          <field name="estimated_kwp" sum="Sum of Estimated kWp"/>
          <field name="system_size" sum="Sum of System Size"/>
        </xpath>
</data>
' where name='Odoo Studio: sale.order.tree customization';

update ir_model_data set name='view_order_form', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_sale_ord_b54dbe2e-d601-4283-9b51-a7af9c048355';
update ir_ui_view set name='sale.order.form.inherit.wegen_custom',arch_db='<data><xpath expr="//field[@name=''partner_id'']" position="after">
          <!--<field name="project_name" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}" required="1"/>-->
          <field name="account_type_1" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}" string="Account Type" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
        </xpath>
        <xpath expr="//field[@name=''sale_order_template_id'']" position="after">
          <field name="transaction_type" string="Transaction Type" widget="radio" options="{&quot;horizontal&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
        </xpath>
        <xpath expr="//field[@name=''validity_date'']" position="before">
          <field name="company_id" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}" options="{}"/>
          <field name="state_id" string="Region"/>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/field[@name=''pricelist_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","not in",["draft","sent"]]]}</attribute>
          <attribute name="invisible">1</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/field[@name=''pricelist_id'']" position="after">
          <field name="pricelist_id"/>
          <xpath expr="//field[@name=''payment_term_id'']" position="move"/>
          <field name="payment_terms_type"/>
          <field name="monthly_amortization" attrs="{&quot;invisible&quot;: [&quot;|&quot;,[&quot;transaction_type&quot;,&quot;=&quot;,&quot;items&quot;],[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;]]}"/>
          <field name="downpayment_rate" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [&quot;|&quot;,[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;],[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]]}"/>
          <field name="delivery_rate" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]], &quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;]]}"/>
          <field name="power_rate" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]], &quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;]]}"/>
          <field name="turn_over_rate" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]], &quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;]]}"/>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/group[1]" position="after">
          <group name="studio_group_vtB7P" attrs="{''invisible'': [(''transaction_type'', ''='', ''items'')]}">
            <group name="studio_group_vtB7P_left" string="System Configuration">
              <field name="customer_market_type" string="Market Type" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;invisible&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;items&quot;]]}"/>
              <field name="customer_property_type" string="Property Type" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
              <field name="customer_system_type" string="System Type" options="{&quot;no_create&quot;:true,&quot;no_open&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;installation&quot;]]}"/>
              <field name="estimated_kwp" string="Estimated kWp" attrs="{}"/>
              <field name="system_size" string="System Size" readonly="True" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
            </group>
            <group name="studio_group_vtB7P_right" string="System Components">
              <field name="capacity" string="Capacity" attrs="{}" invisible="1"/>
              <field name="solar_panel_type" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;installation&quot;]]}"/>
              <field name="panel_tier_1_count" string="Number of Tier 1 Panels " attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;installation&quot;]]}"/>
              <field name="inverter_count" string="Number of Inverters" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;installation&quot;]]}"/>
              <field name="batteries" string="Batteries" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
              <field name="kwp_rate" string="kWp Rate" widget="monetary" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
            </group>
          </group>
        </xpath>
        <xpath expr="//field[@name=''note'']" position="after">
          <field name="annex_description" nolabel="1" placeholder="Annexes"/>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''order_lines'']/group[@name=''note_group'']/group[@name=''sale_total'']/div[1]/label[1]" position="attributes">
          <attribute name="string">Total Contract Price</attribute>
        </xpath>
        <xpath expr="//field[@name=''amount_total'']" position="attributes">
          <attribute name="string">Total Contract Price</attribute>
        </xpath>
        <xpath expr="//field[@name=''amount_total'']" position="after">
          <field name="downpayment"/>
          <field name="delivery_amount" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]]}"/>
          <field name="power_amount" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]]}"/>
          <field name="turn_over_amount" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]]}"/>
        </xpath>
        <xpath expr="//field[@name=''user_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''team_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''other_information'']/group[1]/group[@name=''sales_person'']/field[@name=''company_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''client_order_ref'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''fiscal_position_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''analytic_account_id'']" position="attributes">
          <attribute name="attrs">{"readonly": ["|",["invoice_count","!=",0],["state","in",["sale","done"]]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''origin'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''opportunity_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''other_information'']/group[2]/group[@name=''sale_reporting'']/group[@name=''utm_link'']/field[@name=''campaign_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''other_information'']/group[2]/group[@name=''sale_reporting'']/group[@name=''utm_link'']/field[@name=''medium_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
          <attribute name="readonly">1</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''other_information'']/group[2]/group[@name=''sale_reporting'']/group[@name=''utm_link'']/field[@name=''source_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''payment_term_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
          <attribute name="domain">[[''payment_term_scope'',''='',transaction_type]]</attribute>
          <attribute name="required">1</attribute>
        </xpath>
  </data>
',arch_prev='<data>
<xpath expr="//field[@name=''partner_id'']" position="after">
          <!--<field name="project_name" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}" required="1"/>-->
          <field name="account_type_1" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}" string="Account Type" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
        </xpath>
        <xpath expr="//field[@name=''sale_order_template_id'']" position="after">
          <field name="transaction_type" string="Transaction Type" widget="radio" options="{&quot;horizontal&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
        </xpath>
        <xpath expr="//field[@name=''validity_date'']" position="before">
          <field name="company_id" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}" options="{}"/>
          <field name="state_id" string="Region"/>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/field[@name=''pricelist_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","not in",["draft","sent"]]]}</attribute>
          <attribute name="invisible">1</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/field[@name=''pricelist_id'']" position="after">
          <field name="pricelist_id"/>
          <xpath expr="//field[@name=''payment_term_id'']" position="move"/>
          <field name="payment_terms_type"/>
          <field name="monthly_amortization" attrs="{&quot;invisible&quot;: [&quot;|&quot;,[&quot;transaction_type&quot;,&quot;=&quot;,&quot;items&quot;],[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;]]}"/>
          <field name="downpayment_rate" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [&quot;|&quot;,[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;],[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]]}"/>
          <field name="delivery_rate" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]], &quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;]]}"/>
          <field name="power_rate" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]], &quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;]]}"/>
          <field name="turn_over_rate" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]], &quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;outright&quot;]]}"/>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/group[1]" position="after">
          <group name="studio_group_vtB7P" attrs="{''invisible'': [(''transaction_type'', ''='', ''items'')]}">
            <group name="studio_group_vtB7P_left" string="System Configuration">
              <field name="customer_market_type" string="Market Type" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;invisible&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;items&quot;]]}"/>
              <field name="customer_property_type" string="Property Type" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
              <field name="customer_system_type" string="System Type" options="{&quot;no_create&quot;:true,&quot;no_open&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;installation&quot;]]}"/>
              <field name="estimated_kwp" string="Estimated kWp" attrs="{}"/>
              <field name="system_size" string="System Size" readonly="True" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
            </group>
            <group name="studio_group_vtB7P_right" string="System Components">
              <field name="capacity" string="Capacity" attrs="{}" invisible="1"/>
              <field name="solar_panel_type" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;installation&quot;]]}"/>
              <field name="panel_tier_1_count" string="Number of Tier 1 Panels " attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;installation&quot;]]}"/>
              <field name="inverter_count" string="Number of Inverters" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]], &quot;required&quot;: [[&quot;transaction_type&quot;,&quot;=&quot;,&quot;installation&quot;]]}"/>
              <field name="batteries" string="Batteries" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
              <field name="kwp_rate" string="kWp Rate" widget="monetary" attrs="{&quot;readonly&quot;: [[&quot;state&quot;,&quot;=&quot;,&quot;done&quot;]]}"/>
            </group>
          </group>
        </xpath>
        <xpath expr="//field[@name=''note'']" position="after">
          <field name="annex_description" nolabel="1" placeholder="Annexes"/>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''order_lines'']/group[@name=''note_group'']/group[@name=''sale_total'']/div[1]/label[1]" position="attributes">
          <attribute name="string">Total Contract Price</attribute>
        </xpath>
        <xpath expr="//field[@name=''amount_total'']" position="attributes">
          <attribute name="string">Total Contract Price</attribute>
        </xpath>
        <xpath expr="//field[@name=''amount_total'']" position="after">
          <field name="downpayment"/>
          <field name="delivery_amount" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]]}"/>
          <field name="power_amount" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]]}"/>
          <field name="turn_over_amount" attrs="{&quot;invisible&quot;: [[&quot;payment_terms_type&quot;,&quot;=&quot;,&quot;installment&quot;]]}"/>
        </xpath>
        <xpath expr="//field[@name=''user_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''team_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''other_information'']/group[1]/group[@name=''sales_person'']/field[@name=''company_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''client_order_ref'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''fiscal_position_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''analytic_account_id'']" position="attributes">
          <attribute name="attrs">{"readonly": ["|",["invoice_count","!=",0],["state","in",["sale","done"]]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''origin'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''opportunity_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''other_information'']/group[2]/group[@name=''sale_reporting'']/group[@name=''utm_link'']/field[@name=''campaign_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''other_information'']/group[2]/group[@name=''sale_reporting'']/group[@name=''utm_link'']/field[@name=''medium_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
          <attribute name="readonly">1</attribute>
        </xpath>
        <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''other_information'']/group[2]/group[@name=''sale_reporting'']/group[@name=''utm_link'']/field[@name=''source_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
        </xpath>
        <xpath expr="//field[@name=''payment_term_id'']" position="attributes">
          <attribute name="attrs">{"readonly": [["state","=","done"]]}</attribute>
          <attribute name="domain">[[''payment_term_scope'',''='',transaction_type]]</attribute>
          <attribute name="required">1</attribute>
        </xpath></data>' where name='Odoo Studio: sale.order.form customization';

update ir_model_data set name='sale_order_view_search_inherit_quotation', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_sale_ord_6e0407e4-48df-416f-833b-5efad4c9df05';
update ir_ui_view set name='sale.order.search.inherit.wegen_custom',arch_prev='<data>
  <xpath expr="//filter[@name=''salesperson'']" position="before">
          <filter context="{''group_by'': ''company_id''}" name="group_by_company_id" string="Company"/>
          <filter context="{''group_by'': ''state_id''}" name="group_by_state_id" string="Region"/>
          <filter context="{''group_by'': ''team_id''}" name="group_by_team_id" string="Sales Team"/>
        </xpath></data>
',arch_db='<data>
 <xpath expr="//filter[@name=''salesperson'']" position="before">
          <filter context="{''group_by'': ''company_id''}" name="group_by_company_id" string="Company"/>
          <filter context="{''group_by'': ''state_id''}" name="group_by_state_id" string="Region"/>
          <filter context="{''group_by'': ''team_id''}" name="group_by_team_id" string="Sales Team"/>
        </xpath></data>
' where name='Odoo Studio: sale.order.search.inherit.quotation customization';


-- PROJECT fields
ALTER TABLE public.project_project RENAME COLUMN x_studio_classification TO classification;
update ir_model_data SET name='field_sale_order__classification',module='wegen_custom',studio=null,noupdate=false where name='new_selection_projec_f2749236-dae7-49ab-a6af-17d54542c287';
update ir_model_fields set name='classification' where name='x_studio_classification' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_employee_id TO employee_id;
update ir_model_data SET name='field_project_project__employee_id',module='wegen_custom',studio=null,noupdate=false where name='employee_project_c4bbabb5-f0c9-48cf-bf03-aa58280af3e4';
update ir_model_fields set name='employee_id' where name='x_studio_employee_id' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_vendor_id TO vendor_id;
update ir_model_data SET name='field_project_project__vendor_id',module='wegen_custom',studio=null,noupdate=false where name='contact_project_94ec6171-1a82-40ea-99d1-caa980070276';
update ir_model_fields set name='vendor_id' where name='x_studio_vendor_id' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_planning_start_date TO planning_start_date;
update ir_model_data SET name='field_project_project__planning_start_date',module='wegen_custom',studio=null,noupdate=false where name='new_date_project_a64ac5fc-ecbb-4f7d-8744-f88d61eeaa34';
update ir_model_fields set name='planning_start_date' where name='x_studio_planning_start_date' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_planning_end_date TO planning_end_date;
update ir_model_data SET name='field_project_project__planning_end_date',module='wegen_custom',studio=null,noupdate=false where name='new_date_project_c9ebde6f-c21a-422a-b934-7619c1e2da49';
update ir_model_fields set name='planning_end_date' where name='x_studio_planning_end_date' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_installation_start_date TO installation_start_date;
update ir_model_data SET name='field_project_project__installation_start_date',module='wegen_custom',studio=null,noupdate=false where name='new_date_project_677b379d-f9d2-4c14-89af-e19fd7121ab6';
update ir_model_fields set name='installation_start_date' where name='x_studio_installation_start_date' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_installation_end_date TO installation_end_date;
update ir_model_data SET name='field_project_project__installation_end_date',module='wegen_custom',studio=null,noupdate=false where name='new_date_project_ac24ebea-0f79-4033-85ac-2c7ce7f0365c';
update ir_model_fields set name='installation_end_date' where name='x_studio_installation_end_date' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_testing_and_commissioning_start_date TO testing_start_date;
update ir_model_data SET name='field_project_project__testing_start_date',module='wegen_custom',studio=null,noupdate=false where name='new_date_project_19eb4c65-cf33-476d-a307-ffb20e3029e4';
update ir_model_fields set name='testing_start_date' where name='x_studio_testing_and_commissioning_start_date' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_testing_and_commissioning_end_date TO testing_end_date;
update ir_model_data SET name='field_project_project__testing_end_date',module='wegen_custom',studio=null,noupdate=false where name='new_date_project_c77f42cb-d723-47df-ab77-2bdb12706398';
update ir_model_fields set name='testing_end_date' where name='x_studio_testing_and_commissioning_end_date' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_energized_start_date TO energized_start_date;
update ir_model_data SET name='field_project_project__energized_start_date',module='wegen_custom',studio=null,noupdate=false where name='new_date_project_225c74ed-8f53-49e7-b0c1-3e607e64e7c1';
update ir_model_fields set name='energized_start_date' where name='x_studio_energized_start_date' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_energized_end_date TO energized_end_date;
update ir_model_data SET name='field_project_project__energized_end_date',module='wegen_custom',studio=null,noupdate=false where name='new_date_project_ac2ff752-6f71-438b-8e50-136a06742fb4';
update ir_model_fields set name='energized_end_date' where name='x_studio_energized_end_date' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_system_size TO system_size;
update ir_model_data SET name='field_project_project__system_size',module='wegen_custom',studio=null,noupdate=false where name='new_related_field_pr_ffcefd63-fc9c-4f6a-995b-7ad58c7ac9f9';
update ir_model_fields set name='system_size',related='sale_order_id.system_size' where name='x_studio_system_size' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_installer_type TO installer_type;
update ir_model_data SET name='field_project_project__installer_type',module='wegen_custom',studio=null,noupdate=false where name='new_selection_projec_3ec31620-b8d9-48af-84c0-6e4cb999b9dc';
update ir_model_fields set name='installer_type' where name='x_studio_installer_type' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_project_actual_cost TO actual_cost;
update ir_model_data SET name='field_project_project__actual_cost',module='wegen_custom',studio=null,noupdate=false where name='new_related_field_pr_d9a86bf9-db56-4c56-afc6-251101e18c7e';
update ir_model_fields set name='actual_cost' where name='x_studio_project_actual_cost' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_project_budget TO budget;
update ir_model_data SET name='field_project_project__budget',module='wegen_custom',studio=null,noupdate=false where name='new_decimal_project_bd0454f6-b0e9-48b4-ac61-6d0ca650ebea';
update ir_model_fields set name='budget' where name='x_studio_project_budget' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_total_project_duration TO total_duration;
update ir_model_data SET name='field_project_project__total_duration',module='wegen_custom',studio=null,noupdate=false where name='new_text_project_021f5c5e-0e71-4f86-aa04-fe9b77a118b5';
update ir_model_fields set name='total_duration',depends='planning_start_date,energized_end_date' where name='x_studio_total_project_duration' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_project_status TO state;
update ir_model_data SET name='field_project_project__state',module='wegen_custom',studio=null,noupdate=false where name='pipeline_status_bar__3d5f9732-7cca-4b2d-b674-48312b0226fd';
update ir_model_fields set name='state' where name='x_studio_project_status' and model='project.project';

ALTER TABLE public.project_project RENAME COLUMN x_studio_project_template TO is_template;
update ir_model_data SET name='field_project_project__is_template',module='wegen_custom',studio=null,noupdate=false where name='new_checkbox_project_0fc6aa7a-f337-462e-a999-c56829beab73';
update ir_model_fields set name='is_template' where name='x_studio_project_template' and model='project.project';


-- PROJECT views
update ir_model_data set name='view_project', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_project__e3f984e3-2439-4506-83c9-c60bafdd4ee0';
update ir_ui_view set name='project.project.tree.inherit.wegen_custom',arch_db='<data><xpath expr="//tree[1]/field[@name=''name'']" position="after">
             <field name="state" />
          </xpath>
          <xpath expr="//field[@name=''user_id'']" position="after">
             <xpath expr="//field[@name=''company_id'']" position="move" />
             <field name="budget" sum="Sum of Project Budget Cost" string="Project Budget Cost" widget="monetary" />
             <field name="actual_cost" sum="Sum of Project Actual Cost" string="Project Actual Cost" />
             <field name="system_size" sum="Sum of System Size" widget="float" string="System Size (kWp)" />
             <field name="currency_id" attrs="{}" invisible="1" />
          </xpath></data>',arch_prev='<data><xpath expr="//tree[1]/field[@name=''name'']" position="after">
             <field name="state" />
          </xpath>
          <xpath expr="//field[@name=''user_id'']" position="after">
             <xpath expr="//field[@name=''company_id'']" position="move" />
             <field name="budget" sum="Sum of Project Budget Cost" string="Project Budget Cost" widget="monetary" />
             <field name="actual_cost" sum="Sum of Project Actual Cost" string="Project Actual Cost" />
             <field name="system_size" sum="Sum of System Size" widget="float" string="System Size (kWp)" />
             <field name="currency_id" attrs="{}" invisible="1" />
          </xpath></data>' where name='Odoo Studio: project.project.tree customization';

update ir_model_data set name='project_view_kanban', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_project__26af58d7-79fa-479d-93a5-a3d3eed0895b';
update ir_ui_view set name='project.project.kanban.inherit.wegen_custom',arch_db='<data>
  <xpath expr="//kanban[1]/templates[1]/t[1]/div[1]/div[1]/span[1]/field[@name=''is_favorite'']" position="after">
             <field name="classification" invisible="1" />
             <field display="full" name="state" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <field display="false" name="budget" widget="monetary" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <label string="/" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <field display="false" name="actual_cost" widget="monetary" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <field display="full" name="currency_id" attrs="{}" invisible="1" />
             <br />
             <field display="false" name="system_size" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <label string="kWp" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
          </xpath>
</data>',arch_prev='<data>
  <xpath expr="//kanban[1]/templates[1]/t[1]/div[1]/div[1]/span[1]/field[@name=''is_favorite'']" position="after">
             <field name="classification" invisible="1" />
             <field display="full" name="state" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <field display="false" name="budget" widget="monetary" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <label string="/" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <field display="false" name="actual_cost" widget="monetary" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <field display="full" name="currency_id" attrs="{}" invisible="1" />
             <br />
             <field display="false" name="system_size" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
             <label string="kWp" attrs="{''invisible'':[(''classification'',''='',''internal'')]}" />
          </xpath>
</data>' where name='Odoo Studio: project.project.kanban customization';

update ir_model_data set name='edit_project', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_project__bd5e7dab-4858-4b8c-99c2-415738151e76';
update ir_ui_view set name='project.project.form.inherit.wegen_custom',arch_db='<data>
  <xpath expr="//button[@name=''action_make_billable'']" position="after">
             <field name="state" options="{''clickable'': ''1''}" widget="statusbar" string="Project Status" />
          </xpath>
          <xpath expr="//field[@name=''user_id'']" position="attributes">
             <attribute name="string">Installation Manager</attribute>
          </xpath>
          <xpath expr="//field[@name=''partner_id'']" position="after">
             <field name="system_size" string="System Size" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" />
             <field name="actual_cost" string="Project Actual Cost" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" readonly="False" />
             <field name="budget" string="Project Budget Cost" widget="monetary" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" />
             <field name="total_duration" string="Total Project Duration" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" />
             <field name="installer_type" string="Installer Type" widget="radio" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" />
             <!-- <field name="vendor_id" string="Vendor" attrs="{''invisible'': [[''installer_type'',''='',''in_house'']]}" domain="[[''child_ids.supplier_rank'',''>='',1]]" /> -->
             <field name="employee_id" string="Employee" attrs="{''invisible'': [''|'',[''installer_type'',''='',''epc''],[''classification'',''='',''internal'']]}" />
             <field name="currency_id" attrs="{}" invisible="1" />
          </xpath>
          <xpath expr="//field[@name=''company_id'']" position="after">
             <field name="classification" string="Classification" attrs="{}" required="1" />
          </xpath>
          <xpath expr="//field[@name=''allow_forecast'']" position="after">
             <field name="is_template" studio-view-group-names="User" studio-view-group-ids="54" string="Project Template" />
          </xpath>
          <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''settings'']/group[1]" position="after">
             <group>
                <group name="group_left" string="Start Date" attrs="{''invisible'': [[''classification'',''='',''internal'']]}">
                   <field name="planning_start_date" string="Planning" />
                   <field name="installation_start_date" string="Installation" />
                   <field name="testing_start_date" string="Testing and Commissioning" />
                   <field name="energized_start_date" string="Energized" />
                </group>
                <group name="group_right" string="End Date" attrs="{''invisible'': [[''classification'',''='',''internal'']]}">
                   <field name="planning_end_date" string="Planning" />
                   <field name="installation_end_date" string="Installation" />
                   <field name="testing_end_date" string="Testing and Commissioning" />
                   <field name="energized_end_date" string="Energized" />
                </group>
             </group>
          </xpath>
          <xpath expr="//field[@name=''sale_order_id'']" position="attributes">
             <attribute name="attrs">{"invisible": [["billable_type","=","no"]]}</attribute>
          </xpath>
</data>',arch_prev='<data>
  <xpath expr="//button[@name=''action_make_billable'']" position="after">
             <field name="state" options="{''clickable'': ''1''}" widget="statusbar" string="Project Status" />
          </xpath>
          <xpath expr="//field[@name=''user_id'']" position="attributes">
             <attribute name="string">Installation Manager</attribute>
          </xpath>
          <xpath expr="//field[@name=''partner_id'']" position="after">
             <field name="system_size" string="System Size" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" />
             <field name="actual_cost" string="Project Actual Cost" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" readonly="False" />
             <field name="budget" string="Project Budget Cost" widget="monetary" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" />
             <field name="total_duration" string="Total Project Duration" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" />
             <field name="installer_type" string="Installer Type" widget="radio" attrs="{''invisible'': [[''classification'',''='',''internal'']]}" />
             <!-- <field name="vendor_id" string="Vendor" attrs="{''invisible'': [[''installer_type'',''='',''in_house'']]}" domain="[[''child_ids.supplier_rank'',''>='',1]]" /> -->
             <field name="employee_id" string="Employee" attrs="{''invisible'': [''|'',[''installer_type'',''='',''epc''],[''classification'',''='',''internal'']]}" />
             <field name="currency_id" attrs="{}" invisible="1" />
          </xpath>
          <xpath expr="//field[@name=''company_id'']" position="after">
             <field name="classification" string="Classification" attrs="{}" required="1" />
          </xpath>
          <xpath expr="//field[@name=''allow_forecast'']" position="after">
             <field name="is_template" studio-view-group-names="User" studio-view-group-ids="54" string="Project Template" />
          </xpath>
          <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''settings'']/group[1]" position="after">
             <group>
                <group name="group_left" string="Start Date" attrs="{''invisible'': [[''classification'',''='',''internal'']]}">
                   <field name="planning_start_date" string="Planning" />
                   <field name="installation_start_date" string="Installation" />
                   <field name="testing_start_date" string="Testing and Commissioning" />
                   <field name="energized_start_date" string="Energized" />
                </group>
                <group name="group_right" string="End Date" attrs="{''invisible'': [[''classification'',''='',''internal'']]}">
                   <field name="planning_end_date" string="Planning" />
                   <field name="installation_end_date" string="Installation" />
                   <field name="testing_end_date" string="Testing and Commissioning" />
                   <field name="energized_end_date" string="Energized" />
                </group>
             </group>
          </xpath>
          <xpath expr="//field[@name=''sale_order_id'']" position="attributes">
             <attribute name="attrs">{"invisible": [["billable_type","=","no"]]}</attribute>
          </xpath>
</data>' where name='Odoo Studio: project.project.form customization';

update ir_model_data set name='view_project_project_filter', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_project__677a4358-ef7a-4577-871c-aa206dac8277';
update ir_ui_view set name='project.project.select.inherit.wegen_custom',arch_db='<data>
  <xpath expr="//filter[@name=''my_projects'']" position="after">
             <separator />
             <filter domain="[[''state'',''='',''planning'']]" name="filter_state_planning" string="Projects in Planning and Preparation Phase" />
             <filter domain="[[''state'',''='',''installation'']]" name="filter_state_installation" string="Projects in Installation Phase" />
             <filter domain="[[''state'',''='',''testing'']]" name="filter_state_testing" string="Projects in Testing and Commissioning Phase" />
             <filter domain="[[''state'',''='',''energized'']]" name="filter_state_energized" string="Projects in Energized Phase" />
             <separator name="studio_separator_m0ZSC" />
             <filter domain="[[''classification'',''='',''external'']]" name="filter_installation" string="Installation Project" />
             <filter domain="[[''classification'',''='',''internal'']]" name="filter_internal" string="Internal Project" />
             <separator name="studio_separator_xHxsX" />
             <filter domain="[[''state'',''!='',''done'']]" name="filter_ongoing" string="On Going" />
             <filter domain="[[''state'',''='',''done'']]" name="filter_done" string="Energized" />
          </xpath>
          <xpath expr="//filter[@name=''Manager'']" position="before">
             <filter context="{''group_by'': ''state''}" name="group_by_state" string="Project Status" />
             <filter context="{''group_by'': ''company_id''}" name="group_by_company" string="Company" />
          </xpath>
</data>',arch_prev='<data></data>' where name='Odoo Studio: project.project.select customization';


-- PROJECT TASK

ALTER TABLE public.project_task RENAME COLUMN x_studio_company TO company_1;
update ir_model_data SET name='field_project_task__company_1',module='wegen_custom',studio=null,noupdate=false where name='companies_task_8f416190-d23e-4339-b048-54769740265e';
update ir_model_fields set name='company_1' where name='x_studio_company' and model='project.task';

ALTER TABLE public.project_task RENAME COLUMN x_studio_date_move TO move_date;
update ir_model_data SET name='field_project_task__move_date',module='wegen_custom',studio=null,noupdate=false where name='new_date_task_45be5c2c-8b54-4753-bb3e-edbf270c4b93';
update ir_model_fields set name='move_date' where name='x_studio_date_move' and model='project.task';

ALTER TABLE public.project_task RENAME COLUMN x_studio_project_classification TO project_classification;
update ir_model_data SET name='field_project_task__project_classification',module='wegen_custom',studio=null,noupdate=false where name='x_studio_project_classification';
update ir_model_fields set name='project_classification',related='project_id.classification' where name='x_studio_project_classification' and model='project.task';

ALTER TABLE public.project_task RENAME COLUMN x_studio_project_status TO project_status;
update ir_model_data SET name='field_project_task__project_status',module='wegen_custom',studio=null,noupdate=false where name='new_selection_task_9d423321-5a34-44a8-b800-5597304640ba';
update ir_model_fields set name='project_status' where name='x_studio_project_status' and model='project.task';

-- PROJEcT TASK VIEW
update ir_model_data set name='view_task_kanban', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_project__e6232d73-447a-4a3c-8197-b6c14b7bb364';
update ir_ui_view set name='project.task.kanban.inherit.wegen_custom',arch_db='<data>
  <xpath expr="//kanban[1]" position="attributes">
    <attribute name="quick_create">false</attribute>
  </xpath>
</data>',arch_prev='<data><xpath expr="//kanban[1]" position="attributes">
    <attribute name="quick_create">false</attribute>
  </xpath></data>' where name='Odoo Studio: project.task.kanban customization';

update ir_model_data set name='view_task_form2', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_project__ad7e5a38-5ffa-486c-af71-cbdb5a2dc3ba';
update ir_ui_view set name='project.task.form.inherit.wegen_custom',arch_db='<data>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/field[@name=''project_id'']" position="after">
    <field name="company_1" string="Company" attrs="{''readonly'': [(''project_classification'',''='',''external'')]}" required="1" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}"/>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/field[@name=''user_id'']" position="after">
    <field name="project_status" string="Project Status" attrs="{}" invisible="1"/>
  </xpath>
  <xpath expr="//field[@name=''sale_line_id'']" position="attributes">
    <attribute name="attrs">{"invisible": ["|",["partner_id","=",False],"&amp;",["sale_order_id","!=",False],["sale_line_id","=",False]]}</attribute>
    <attribute name="readonly">1</attribute>
  </xpath>
  <xpath expr="//field[@name=''date_last_stage_update'']" position="after">
    <field name="project_classification" string="Project Classification" attrs="{}" invisible="1"/>
    <field name="move_date" string="Date Move" attrs="{}" invisible="1"/>
  </xpath>
</data>',arch_prev='<data>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/field[@name=''project_id'']" position="after">
    <field name="company_1" string="Company" attrs="{''readonly'': [(''project_classification'',''='',''external'')]}" required="1" options="{&quot;no_open&quot;:true,&quot;no_create&quot;:true}"/>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/field[@name=''user_id'']" position="after">
    <field name="project_status" string="Project Status" attrs="{}" invisible="1"/>
  </xpath>
  <xpath expr="//field[@name=''sale_line_id'']" position="attributes">
    <attribute name="attrs">{"invisible": ["|",["partner_id","=",False],"&amp;",["sale_order_id","!=",False],["sale_line_id","=",False]]}</attribute>
    <attribute name="readonly">1</attribute>
  </xpath>
  <xpath expr="//field[@name=''date_last_stage_update'']" position="after">
    <field name="project_classification" string="Project Classification" attrs="{}" invisible="1"/>
    <field name="move_date" string="Date Move" attrs="{}" invisible="1"/>
  </xpath>
</data>' where name='Odoo Studio: project.task.form customization';




-- LEAD / OPPORTUNITY FIELDS
ALTER TABLE public.crm_lead RENAME COLUMN x_studio_account_type TO account_type;
update ir_model_data SET name='field_crm_lead__account_type',module='wegen_custom',studio=null,noupdate=false where name='customer_account_typ_9232dc33-59db-4e41-b832-8c8eecc3f6fa';
update ir_model_fields set name='account_type' where name='x_studio_account_type' and model='crm.lead';

ALTER TABLE public.crm_lead RENAME COLUMN x_studio_company_id TO company_id_1;
update ir_model_data SET name='field_crm_lead__company_id_1',module='wegen_custom',studio=null,noupdate=false where name='companies_lead_oppor_b7ebddd4-a5a0-484e-9196-792accf02127';
update ir_model_fields set name='company_id_1' where name='x_studio_company_id' and model='crm.lead';

ALTER TABLE public.crm_lead RENAME COLUMN x_studio_estimated_kwp TO estimated_kwp;
update ir_model_data SET name='field_crm_lead__estimated_kwp',module='wegen_custom',studio=null,noupdate=false where name='new_decimal_lead_opp_b3fadf91-659a-4de2-9e68-b5372843c4dd';
update ir_model_fields set name='estimated_kwp' where name='x_studio_estimated_kwp' and model='crm.lead';

ALTER TABLE public.crm_lead RENAME COLUMN x_studio_property_type TO property_type;
update ir_model_data SET name='field_crm_lead__property_type',module='wegen_custom',studio=null,noupdate=false where name='customer_property_ty_392592c3-8374-4e05-a172-157a5b805795';
update ir_model_fields set name='property_type' where name='x_studio_property_type' and model='crm.lead';

ALTER TABLE public.crm_lead RENAME COLUMN x_studio_set_default_company TO set_default_company;
update ir_model_data SET name='field_crm_lead__set_default_company',module='wegen_custom',studio=null,noupdate=false where name='new_checkbox_lead_op_966e8b73-b639-4575-9711-b48d45feb987';
update ir_model_fields set name='set_default_company' where name='x_studio_set_default_company' and model='crm.lead';


update ir_model_data set name='crm_lead_view_form', module='wegen_custom',studio=null,noupdate=false where name='odoo_studio_crm_lead_d012c162-a395-4b64-bc5f-008bf2a03058';
update public.ir_ui_view set name='crm.lead.form.inherit.wegen_custom',arch_db='<data>
  <xpath expr="//field[@name=''planned_revenue'']" position="attributes">
      <attribute name="attrs">{}</attribute>
      <attribute name="invisible">1</attribute>
  </xpath>
  <xpath expr="//field[@name=''planned_revenue'']" position="after">
      <label for="estimated_kwp" string="Estimated kWp"/>
      <field name="estimated_kwp" string="Estimated kWp"/>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/div[not(@name)][1]/h2[1]/div[2]/div[1]/field[@name=''probability'']" position="attributes">
      <attribute name="attrs">{}</attribute>
      <attribute name="invisible">1</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/field[@name=''partner_name'']" position="attributes">
      <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/div[1]/field[@name=''street'']" position="attributes">
      <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/div[1]/field[@name=''city'']" position="attributes">
      <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/div[1]/field[@name=''state_id'']" position="attributes">
      <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
      <attribute name="placeholder">Region</attribute>
      <attribute name="string">Region</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/div[1]/field[@name=''email_from'']" position="attributes">
      <attribute name="attrs">{"required": [["type","=","lead"]], "invisible": [["partner_address_email","!=",False]]}</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/field[@name=''phone'']" position="attributes">
      <attribute name="attrs">{}</attribute>
      <attribute name="required">1</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[3]/field[@name=''phone'']" position="attributes">
      <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
  </xpath>
  <xpath expr="//field[@name=''user_id'']" position="attributes">
      <attribute name="attrs">{"readonly": [["quotation_count","&gt;=",1]]}</attribute>
  </xpath>
  <xpath expr="//field[@name=''team_id'']" position="attributes">
      <attribute name="attrs">{"readonly": [["quotation_count","&gt;=",1]]}</attribute>
  </xpath>
  <xpath expr="//field[@name=''lost_reason'']" position="before">
      <field name="company_id_1" string="Company" options="{&quot;no_create&quot;:true}"/>
      <xpath expr="//form[1]/sheet[1]/group[1]/group[not(@name)][6]/field[@name=''company_id'']" position="move"/>
      <field name="set_default_company" string="Set Default Company" widget="boolean_toggle" attrs="{}" invisible="1"/>
  </xpath>
  <xpath expr="//field[@name=''message_bounce'']" position="attributes">
      <attribute name="attrs">{}</attribute>
      <attribute name="invisible">1</attribute>
  </xpath>
  <xpath expr="//page[@name=''lead'']" position="attributes">
      <attribute name="string">Contact Details</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[not(@name)][6]/field[@name=''company_id'']" position="attributes">
      <attribute name="attrs">{}</attribute>
      <attribute name="invisible">1</attribute>
  </xpath>
</data>
',arch_prev='<data>
  <xpath expr="//field[@name=''planned_revenue'']" position="attributes">
    <attribute name="attrs">{}</attribute>
    <attribute name="invisible">1</attribute>
  </xpath>
  <xpath expr="//field[@name=''planned_revenue'']" position="after">
    <label for="x_studio_estimated_kwp" string="Estimated kWp"/>
    <field name="x_studio_estimated_kwp" string="Estimated kWp"/>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/div[not(@name)][1]/h2[1]/div[2]/div[1]/field[@name=''probability'']" position="attributes">
    <attribute name="attrs">{}</attribute>
    <attribute name="invisible">1</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/field[@name=''partner_name'']" position="attributes">
    <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/div[1]/field[@name=''street'']" position="attributes">
    <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/div[1]/field[@name=''city'']" position="attributes">
    <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/div[1]/field[@name=''state_id'']" position="attributes">
    <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
    <attribute name="placeholder">Region</attribute>
    <attribute name="string">Region</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/div[1]/field[@name=''email_from'']" position="attributes">
    <attribute name="attrs">{"required": [["type","=","lead"]], "invisible": [["partner_address_email","!=",False]]}</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/field[@name=''phone'']" position="attributes">
    <attribute name="attrs">{}</attribute>
    <attribute name="required">1</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/field[@name=''account_type'']" position="after">
    <!--attrs="{&quot;required&quot;: [[&quot;type&quot;,&quot;=&quot;,&quot;opportunity&quot;]]}"-->
    <!--<field name="account_type" string="Account Type" options="{&quot;no_create&quot;:true}" attrs="{&quot;required&quot;: [[&quot;type&quot;,&quot;=&quot;,&quot;opportunity&quot;]]}"/>-->
    <!--attrs="{&quot;required&quot;: [[&quot;type&quot;,&quot;=&quot;,&quot;opportunity&quot;]]}"-->
    <field name="x_studio_property_type" string="Property Type" attrs="{&quot;required&quot;: [[&quot;type&quot;,&quot;=&quot;,&quot;opportunity&quot;]]}" options="{&quot;no_create&quot;:true}"/>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[3]/field[@name=''phone'']" position="attributes">
    <attribute name="attrs">{"required": [["type","=","lead"]]}</attribute>
  </xpath>
  <xpath expr="//field[@name=''user_id'']" position="attributes">
    <attribute name="attrs">{"readonly": [["quotation_count","&gt;=",1]]}</attribute>
  </xpath>
  <xpath expr="//field[@name=''team_id'']" position="attributes">
    <attribute name="attrs">{"readonly": [["quotation_count","&gt;=",1]]}</attribute>
  </xpath>
  <xpath expr="//field[@name=''lost_reason'']" position="before">
    <field name="x_studio_company_id" string="Company" options="{&quot;no_create&quot;:true}"/>
    <xpath expr="//form[1]/sheet[1]/group[1]/group[not(@name)][6]/field[@name=''company_id'']" position="move"/>
    <field name="x_studio_set_default_company" string="Set Default Company" widget="boolean_toggle" attrs="{}" invisible="1"/>
  </xpath>
  <xpath expr="//field[@name=''message_bounce'']" position="attributes">
    <attribute name="attrs">{}</attribute>
    <attribute name="invisible">1</attribute>
  </xpath>
  <xpath expr="//page[@name=''lead'']" position="attributes">
    <attribute name="string">Contact Details</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[not(@name)][6]/field[@name=''company_id'']" position="attributes">
    <attribute name="attrs">{}</attribute>
    <attribute name="invisible">1</attribute>
  </xpath>
</data>
' where name='Odoo Studio: crm.lead.form customization';

update ir_model_data set name='crm_case_kanban_view_leads', module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_crm_lead_f0d95822-d259-41b9-b277-96c49d2e8de9';
UPDATE public.ir_ui_view SET name='crm.lead.kanban.lead.inherit.wegen_custom',arch_db='<data>
  <xpath expr="//kanban[1]" position="attributes">
    <attribute name="quick_create">false</attribute>
  </xpath>
  <xpath expr="//kanban[1]/templates[1]/t[1]/div[1]/div[2]/div[1]/strong[1]/field[@name=''name'']" position="after">
    <field display="full" name="estimated_kwp"/>
  </xpath>
</data>
',arch_prev='<data>
  <xpath expr="//kanban[1]/templates[1]/t[1]/div[1]/div[2]/div[1]/strong[1]/field[@name=''name'']" position="after">
    <field display="full" name="estimated_kwp"/>
  </xpath>
  <xpath expr="//kanban[not(ancestor::field)]" position="attributes">
    <attribute name="quick_create">false</attribute>
  </xpath>
</data>
' where name='Odoo Studio: crm.lead.kanban.lead customization';

update ir_model_data set name='view_crm_case_opportunities_filter',module='wegen_custom',studio=null,noupdate=false where name = 'odoo_studio_crm_lead_8c593d5b-9709-46c5-a1b5-75b6faa32573';
update ir_ui_view set name='crm.lead.search.opportunity.inherit.wegen_custom',arch_db='<data>
  <xpath expr="//filter[@name=''company'']" position="replace">
    <filter context="{''group_by'': ''company_id_1''}" name="studio_group_by_JnLzd" string="Company"/>
  </xpath>
  <xpath expr="//search[1]/group[1]/filter[@name=''city'']" position="after">
    <filter context="{''group_by'': ''state_id''}" name="studio_group_by_FgBKl" string="Region"/>
  </xpath>
</data>
',arch_prev='<data>
  <xpath expr="//filter[@name=''company'']" position="replace">
    <filter context="{''group_by'': ''x_studio_company_id''}" name="studio_group_by_JnLzd" string="Company"/>
  </xpath>
  <xpath expr="//search[1]/group[1]/filter[@name=''city'']" position="after">
    <filter context="{''group_by'': ''state_id''}" name="studio_group_by_FgBKl" string="Region"/>
  </xpath>
</data>
' where name='Odoo Studio: crm.lead.search.opportunity customization';

update ir_model_data set name='crm_case_tree_view_oppor',module='wegen_custom',studio=null,noupdate=false where name='odoo_studio_crm_lead_bc494c0b-bcc1-4d9b-9150-edbfaed6adf8';
  update ir_ui_view set name='crm.lead.tree.opportunity.inherit.wegen_custom', arch_db='<data>
  <xpath expr="//tree[1]/field[@name=''probability'']" position="replace"/>
  <xpath expr="//field[@name=''planned_revenue'']" position="replace">
    <field name="estimated_kwp" sum="Sum of Estimated kWp"/>
  </xpath>
  <xpath expr="//field[@name=''company_id''][not(ancestor::field)]" position="replace"/>
  <xpath expr="//field[@name=''estimated_kwp''][not(ancestor::field)]" position="after">
    <field name="company_id_1"/>
  </xpath>
</data>
',arch_prev='<data>
  <xpath expr="//tree[1]/field[@name=''probability'']" position="replace"/>
  <xpath expr="//field[@name=''planned_revenue'']" position="replace">
    <field name="x_studio_estimated_kwp" sum="Sum of Estimated kWp"/>
  </xpath>
  <xpath expr="//field[@name=''company_id''][not(ancestor::field)]" position="replace"/>
  <xpath expr="//field[@name=''x_studio_estimated_kwp''][not(ancestor::field)]" position="after">
    <field name="x_studio_company_id"/>
  </xpath>
</data>
' where name='Odoo Studio: crm.lead.tree.opportunity customization';

update ir_ui_view set arch_db='<?xml version="1.0"?>
<data><xpath expr="//button[@name=''action_generate_project_code'']" position="attributes">
                    <attribute name="attrs">{''invisible'': [''|'', ''|'', (''type'',''!='',''opportunity''), (''id'', ''='', False)]}
                    </attribute>
                </xpath>
                <xpath expr="//field[@name=''site_location_id'']" position="attributes">
                    <attribute name="attrs">{}</attribute>
                </xpath>
                
                <xpath expr="//field[@name=''account_type'']" position="attributes">
                    <attribute name="attrs">{}</attribute>
                </xpath>
                
            </data>' where name='crm.lead.project_code_generate.form.admin';

update ir_ui_view set arch_db='<?xml version="1.0"?>
<data><xpath expr="//field[@name=''user_id'']" position="before">
                    <field name="site_location_id" attrs="{''readonly'': [(''project_code'', ''!='', False)], ''required'': [(''site_location_id_required'', ''='', True)]}"/>
                    <field name="site_location_id_required" invisible="1"/>
                </xpath>
                
                <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/field[@name=''phone'']" position="after">
                <field name="account_type" string="Account Type" options="{&quot;no_create&quot;:true}" attrs="{&quot;readonly&quot;: [[&quot;project_code&quot;,&quot;!=&quot;,False]], &quot;required&quot;: [[&quot;type&quot;,&quot;=&quot;,&quot;opportunity&quot;]]}" force_save="True"/>
                </xpath>
                
            </data>' where name='crm.lead.project_site.form';



-- CONTACT
ALTER TABLE public.res_partner RENAME COLUMN x_studio_authorized_partner_signatory TO "authorized_partner_signatory";
update ir_model_data set name='field_res_partner__authorized_partner_signatory', module='wegen_custom', studio=null ,noupdate=false where name = 'contact_contact_d77741eb-cb30-4040-a108-7a3d695c8cdf';
update ir_model_fields set name='authorized_partner_signatory' where name='x_studio_authorized_partner_signatory' and model='res.partner';

ALTER TABLE public.res_partner RENAME COLUMN x_studio_authorized_signatory TO "is_authorized_partner_signatory";
update ir_model_data set name='field_res_partner__authorized_signatory', module='wegen_custom', studio=null ,noupdate=false where name = 'new_checkbox_contact_db4421e6-ad25-4770-92c1-063147872aab';
update ir_model_fields set name='is_authorized_partner_signatory' where name='x_studio_authorized_signatory' and model='res.partner';

ALTER TABLE public.res_partner RENAME COLUMN x_studio_authorized_signatory_update TO "authorized_signatory_update";
-- update ir_model_data set name='field_res_partner__authorized_signatory_update', module='wegen_custom', studio=null ,noupdate=false where name = 'xxxxx';
update ir_model_fields set name='authorized_signatory_update' where name='x_studio_authorized_signatory_update' and model='res.partner';

ALTER TABLE public.res_partner RENAME COLUMN x_studio_billing_partner_contact TO "billing_partner_contact";
update ir_model_data set name='field_res_partner__billing_partner_contact', module='wegen_custom', studio=null ,noupdate=false where name = 'contact_contact_ddb84e80-264a-48fb-b9bc-f5c4f6dd4a6e';
update ir_model_fields set name='billing_partner_contact' where name='x_studio_billing_partner_contact' and model='res.partner';

ALTER TABLE public.res_partner RENAME COLUMN x_studio_billing_contact TO "is_billing_contact";
update ir_model_data set name='field_res_partner__is_billing_contact', module='wegen_custom', studio=null ,noupdate=false where name = 'new_checkbox_contact_c37c3f03-090c-4b3e-bbb6-f2fff41a0664';
update ir_model_fields set name='is_billing_contact' where name='x_studio_billing_contact' and model='res.partner';

ALTER TABLE public.res_partner RENAME COLUMN x_studio_billing_contact_update TO "billing_contact_update";
-- update ir_model_data set name='field_res_partner__billing_contact_update', module='wegen_custom', studio=null ,noupdate=false where name = 'xxxxx';
update ir_model_fields set name='billing_contact_update' where name='x_studio_billing_contact_update' and model='res.partner';

ALTER TABLE public.res_partner RENAME COLUMN x_studio_technical_partner_contact TO "technical_partner_contact";
update ir_model_data set name='field_res_partner__technical_partner_contact', module='wegen_custom', studio=null ,noupdate=false where name = 'contact_contact_b51c7ca9-5742-422c-896c-a436ca06adcf';
update ir_model_fields set name='technical_partner_contact' where name='x_studio_technical_partner_contact' and model='res.partner';

ALTER TABLE public.res_partner RENAME COLUMN x_studio_technical_contact TO "is_technical_contact";
update ir_model_data set name='field_res_partner__is_technical_contact', module='wegen_custom', studio=null ,noupdate=false where name = 'new_checkbox_contact_513bffd8-e017-4810-b094-5639b0ef1355';
update ir_model_fields set name='is_technical_contact' where name='x_studio_technical_contact' and model='res.partner';

ALTER TABLE public.res_partner RENAME COLUMN x_studio_technical_contact_update TO "technical_contact_update";
-- update ir_model_data set name='field_res_partner__technical_contact_update', module='wegen_custom', studio=null ,noupdate=false where name = 'xxxxx';
update ir_model_fields set name='technical_contact_update' where name='x_studio_technical_contact_update' and model='res.partner';

-- CONTACT VIEW
update ir_model_data set name='res.partner.form.inherit.wegen_custom',module='wegen_custom',studio=null ,noupdate=false where name='odoo_studio_res_part_1bd51322-829b-4892-b3f8-89771975728c';
update ir_ui_view set name='view_partner_form',arch_db='<data>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[1]/div[1]/field[@name=''state_id'']" position="attributes">
    <attribute name="placeholder">Region</attribute>
  </xpath>
  <xpath expr="//field[@name=''vat'']" position="after">
    <field name="is_billing_contact" attrs="{''invisible'': [''|'',[''type'',''!='',''contact''],[''is_company'',''='',True]]}"/>
    <field name="is_technical_contact" attrs="{''invisible'': [''|'',[''type'',''!='',''contact''],[''is_company'',''='',True]]}"/>
    <field name="is_authorized_partner_signatory" attrs="{''invisible'': [''|'',[''type'',''!='',''contact''],[''is_company'',''='',True]]}"/>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/group[1]/group[2]/field[@name=''function'']" position="attributes">
    <attribute name="attrs">{}</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/notebook[1]/page[1]/field[@name=''child_ids'']/form[1]/sheet[1]/group[1]/group[2]/field[@name=''mobile'']" position="after">
    <field name="is_billing_contact" string="Billing Contact" attrs="{''invisible'': [[''type'',''!='',''contact'']]}"/>
    <field name="is_technical_contact" string="Technical Contact" attrs="{''invisible'': [[''type'',''!='',''contact'']]}"/>
    <field name="is_authorized_partner_signatory" string="Authorized Signatory" attrs="{''invisible'': [[''type'',''!='',''contact'']]}"/>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/notebook[1]/page[@name=''sales_purchases'']/group[@name=''container_row_2'']/group[@name=''sale'']/field[@name=''user_id'']" position="attributes">
    <attribute name="attrs">{}</attribute>
    <attribute name="invisible">1</attribute>
  </xpath>
  <xpath expr="//form[1]/sheet[1]/notebook[1]" position="after">
    <group name="studio_group_5TC58">
      <group name="studio_group_5TC58_left" string="Project Contacts">
        <field name="billing_partner_contact" string="Billing Contact" options="{''no_create'':true}" domain="[[''is_billing_contact'',''='',True]]"/>
        <field name="technical_partner_contact" string="Technical Contact" domain="[[''is_technical_contact'',''='',True]]"/>
        <field name="authorized_partner_signatory" string="Authorized Signatory" domain="[[''is_authorized_partner_signatory'',''='',True]]"/>
      </group>
    </group>
  </xpath>
</data>
' where name='Odoo Studio: res.partner.form customization';


-- USERS
update ir_model_fields set name='authorized_partner_signatory',related='partner_id.authorized_partner_signatory' where name='x_studio_authorized_partner_signatory' and model='res.users';

update ir_model_fields set name='is_authorized_partner_signatory',related='partner_id.is_authorized_partner_signatory' where name='x_studio_authorized_signatory' and model='res.users';

update ir_model_fields set name='authorized_signatory_update',related='partner_id.authorized_signatory_update' where name='x_studio_authorized_signatory_update' and model='res.users';

update ir_model_fields set name='billing_partner_contact',related='partner_id.billing_partner_contact' where name='x_studio_billing_partner_contact' and model='res.users';

update ir_model_fields set name='is_billing_contact',related='partner_id.is_billing_contact' where name='x_studio_billing_contact' and model='res.users';

update ir_model_fields set name='billing_contact_update',related='partner_id.billing_contact_update' where name='x_studio_billing_contact_update' and model='res.users';

update ir_model_fields set name='technical_partner_contact',related='partner_id.technical_partner_contact' where name='x_studio_technical_partner_contact' and model='res.users';

update ir_model_fields set name='is_technical_contact',related='partner_id.is_technical_contact' where name='x_studio_technical_contact' and model='res.users';

update ir_model_fields set name='technical_contact_update',related='partner_id.technical_contact_update' where name='x_studio_technical_contact_update' and model='res.users';


-- PAYMENT TERMS
ALTER TABLE public.account_payment_term RENAME COLUMN x_studio_payment_terms_scope_2 TO "payment_term_scope";
update ir_model_data set name='field_res_partner__payment_term_scope', module='wegen_custom', studio=null ,noupdate=false where name = 'new_selection_paymen_7ab158e7-1aaa-4ca1-848f-f4a705e8739b';
update ir_model_fields set name='payment_term_scope' where name='x_studio_payment_terms_scope_2' and model='account.payment.term';

delete from ir_model_data where name='odoo_studio_account__592c1296-1b98-4811-ae6b-4115e2ae2ca2';
delete from ir_ui_view where name='Odoo Studio: account.payment.term.form customization';


-- Product Template
ALTER TABLE public.product_template RENAME COLUMN x_studio_purchase_unit_of_measure TO "purchase_uom";
update ir_model_data set name='field_res_partner__purchase_uom', module='wegen_custom', studio=null ,noupdate=false where name = 'product_unit_of_meas_a527ffe3-1ee5-4edd-ac24-0c2ed7c155f3';
update ir_model_fields set name='purchase_uom' where name='x_studio_purchase_unit_of_measure' and model='product.template';

ALTER TABLE public.product_template RENAME COLUMN x_studio_unit_of_measure TO "uom";
update ir_model_data set name='field_res_partner__uom', module='wegen_custom', studio=null ,noupdate=false where name = 'product_unit_of_meas_d7d6dd54-bb25-4d71-b152-a55635117088';
update ir_model_fields set name='uom' where name='x_studio_unit_of_measure' and model='product.template';

update ir_model_data set name='product.template.product.form.inherit.wegen_custom',module='wegen_custom',studio=null ,noupdate=false where name='odoo_studio_product__8da26f12-f88d-49e1-9fca-dc42be5b87da';
update ir_ui_view set name='product_template_only_form_view',arch_db='<data>
        <xpath expr="//field[@name=''company_id'']" position="after">
          <field name="uom" string="Unit of Measure" options="{''no_create'':true}" attrs="{}" required="1"/>
          <field name="purchase_uom" string="Purchase Unit of Measure"/>
        </xpath>
      </data>
' where name='Odoo Studio: product.template.product.form customization';


-- ISSUE LOGS
ALTER TABLE x_issue_logs RENAME TO project_issue_logs;
ALTER SEQUENCE x_issue_logs_id_seq RENAME TO project_issue_logs_id_seq;
UPDATE ir_model SET model = 'project.issue.logs', state = 'base' WHERE model = 'x_issue_logs';
update ir_model_data set name = 'model_project_issue_logs', module='wegen_custom',studio=null,noupdate=false where name = 'issue_logs_4c436340-24f4-473a-a651-cf60ea9af86e';
update ir_ui_view set model='project.issue.logs' where model='x_issue_logs';
update ir_act_window set res_model='project.issue.logs' where res_model = 'x_issue_logs';
delete from ir_model_data where model='x_issue_logs';

update ir_model_fields set model='project.issue.logs' where model = 'x_issue_logs';
update ir_model_fields set relation='project.issue.logs' where relation = 'x_issue_logs';

ALTER TABLE public.project_issue_logs RENAME COLUMN x_name TO "name";
update ir_model_data set name='field_project_issue_logs__name', module='wegen_custom', studio=null,noupdate=false where name = 'name_issue_logs_b9c1a1d3-4520-4562-b3cc-fe1e4d4c8351';
update ir_model_fields set name='name' where name='x_name' and model='project.issue.logs';

ALTER TABLE public.project_issue_logs RENAME COLUMN x_studio_project_id TO "project_id";
update ir_model_data set name='field_project_issue_logs__project_id', module='wegen_custom', studio=null,noupdate=false where name = 'project_issue_logs_0b19c5ea-918c-4f88-9a69-4b5f4c59c87c';
update ir_model_fields set name='project_id' where name='x_studio_project_id' and model='project.issue.logs';

ALTER TABLE public.project_issue_logs RENAME COLUMN x_studio_issue_types TO "issue_type";
update ir_model_data set name='field_project_issue_logs__issue_type', module='wegen_custom', studio=null,noupdate=false where name = 'issue_type_issue_log_3d00d0a8-70bd-4ab1-b625-a9ddeecbf0d9';
update ir_model_fields set name='issue_type' where name='x_studio_issue_types' and model='project.issue.logs';

ALTER TABLE public.project_issue_logs RENAME COLUMN x_studio_issue_description TO "description";
update ir_model_data set name='field_project_issue_logs__description', module='wegen_custom', studio=null,noupdate=false where name = 'new_html_issue_logs_3caa210a-ee23-40f8-9bc0-9ead3aa335cc';
update ir_model_fields set name='description' where name='x_studio_issue_description' and model='project.issue.logs';

ALTER TABLE public.project_issue_logs RENAME COLUMN x_studio_date_logged TO "logged_date";
update ir_model_data set name='field_project_issue_logs__logged_date', module='wegen_custom', studio=null,noupdate=false where name = 'new_date_issue_logs_22fe4fe6-8022-4486-b69f-8fcd976341db';
update ir_model_fields set name='logged_date' where name='x_studio_date_logged' and model='project.issue.logs';

ALTER TABLE public.project_issue_logs RENAME COLUMN x_studio_date_resolved TO "resolved_date";
update ir_model_data set name='field_project_issue_logs__resolved_date', module='wegen_custom', studio=null,noupdate=false where name = 'new_date_issue_logs_4c3bbfb7-01c1-42c6-a7b5-4c3ef0bb50d1';
update ir_model_fields set name='resolved_date' where name='x_studio_date_resolved' and model='project.issue.logs';

ALTER TABLE public.project_issue_logs RENAME COLUMN x_studio_issue_status TO "state";
update ir_model_data set name='field_project_issue_logs__state', module='wegen_custom', studio=null,noupdate=false where name = 'pipeline_status_bar__b61d877d-a068-4495-a900-de16bb076f40';
update ir_model_fields set name='state' where name='x_studio_issue_status' and model='project.issue.logs';

ALTER TABLE x_issue_type RENAME TO project_issue_type;
ALTER SEQUENCE x_issue_type_id_seq RENAME TO project_issue_type_id_seq;
UPDATE ir_model SET model = 'project.issue.type', state = 'base' WHERE model = 'x_issue_type';
update ir_model_data set name = 'model_project_issue_type', module='wegen_custom',studio=null,noupdate=false where name = 'issue_type_d01011d7-9ab9-4fa2-aa8e-c32c65e25261';
update ir_ui_view set model='project.issue.type' where model='x_issue_type';
update ir_act_window set res_model='project.issue.type' where res_model = 'x_issue_type';
update ir_model_fields set relation='project.issue.type' where relation='x_issue_type';
delete from ir_model_data where model='x_issue_type';

update ir_model_fields set model='project.issue.type' where model = 'x_issue_type';
update ir_model_fields set relation='project.issue.type' where relation = 'x_issue_type';

ALTER TABLE public.project_issue_type RENAME COLUMN x_name TO "name";
update ir_model_data set name='field_project_issue_type__name', module='wegen_custom', studio=null,noupdate=false where name = 'name_issue_type_a215e78f-797f-4d7f-9fb1-82497fb1b92e';
update ir_model_fields set name='name' where name='x_name' and model='project.issue.type';




update ir_model_data set name='menu_module_issue_logs',module='wegen_custom',studio=null,noupdate=false where name='issue_logs_f79c4b58-991b-4857-8ea7-345891aba21e';
update ir_model_data set name='menu_view_project_issue_logs',module='wegen_custom',studio=null,noupdate=false where name='issue_logs_issue_log_157d8ccf-cb96-4408-bb26-13784d1f146a';
update ir_model_data set name='menu_view_project_issue_config',module='wegen_custom',studio=null,noupdate=false where name='issue_logs_configura_87f9ec72-c92a-4028-9514-e0a1bde95d81';
update ir_model_data set name='menu_view_project_issue_type',module='wegen_custom',studio=null,noupdate=false where name='issue_logs_issue_typ_2b092e04-925e-4331-9d1c-b721a5f79b21';
update ir_model_data set name='act_project_issue_logs',module='wegen_custom',studio=null,noupdate=false where name='issue_logs_b33d2a5b-74b5-42ec-9651-66bce463347c';
update ir_model_data set name='act_project_issue_type',module='wegen_custom',studio=null,noupdate=false where name='issue_types_b8383b92-2437-42a1-8adc-12207d5cc7e5';
update ir_model_data set name='act_project_issue_logs_view',module='wegen_custom',studio=null,noupdate=false where name='issues_85e77f04-83d2-4ba3-9c1d-7df9c38545c4';

update ir_model_data set name='view_project_issue_logs_tree',module='wegen_custom',studio=null,noupdate=false where name='default_tree_view_fo_d3f74661-6ce8-4187-8ebf-3b27f1de029c';
update ir_ui_view set name='project.issue.logs.tree' where name='Default tree view for x_issue_logs';
delete from ir_model_data where name='odoo_studio_default__fdc1276b-2162-4e52-bd40-7a3442b57035';
delete from ir_ui_view where name='Odoo Studio: Default tree view for x_issue_logs customization';


update ir_model_data set name='view_project_issue_logs_form',module='wegen_custom',studio=null,noupdate=false where name='default_form_view_fo_e2455019-f004-41ed-8051-180f94a5fba2';
update ir_ui_view set name='project.issue.logs.form' where name='Default form view for x_issue_logs';
delete from ir_model_data where name='odoo_studio_default__658e43dc-27c8-4160-a09a-666309e3bcc4';
delete from ir_ui_view where name='Odoo Studio: Default form view for x_issue_logs customization';

update ir_model_data set name='view_project_issue_type_form',module='wegen_custom',studio=null,noupdate=false where name='default_form_view_fo_94e31ee7-a112-4b34-bf3a-30b1e932fd0e';
update ir_ui_view set name='project.issue.type.form' where name='Default form view for x_issue_type';
delete from ir_model_data where name='odoo_studio_default__eb1a540e-83c5-4fd3-a2b1-ca9f806867fe';
delete from ir_ui_view where name='Odoo Studio: Default form view for x_issue_type customization';
