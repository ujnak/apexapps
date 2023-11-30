prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_default_workspace_id=>8495821862623503
);
end;
/
prompt --workspace/rest-source-catalogs//openai_assistants_api
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_imp.id(12768050165046702)
,p_name=>'OpenAI Assistants API'
,p_internal_name=>'OPENAI_ASSISTANTS_API'
,p_format=>'APEX'
);
end;
/
prompt --workspace/rest-source-catalogs/services//list_assistant_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"List assistant files"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_select';
wwv_flow_imp.g_varchar2_table(2) := 'or":"data"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ASSISTANT_ID"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key"';
wwv_flow_imp.g_varchar2_table(3) := ':"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterab';
wwv_flow_imp.g_varchar2_table(4) := 'le":"Y"'||wwv_flow.LF||
',"selector":"assistant_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CREATED_AT"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"da';
wwv_flow_imp.g_varchar2_table(5) := 'ta_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"created_at';
wwv_flow_imp.g_varchar2_table(6) := '"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(7) := '"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OBJECT"'||wwv_flow.LF||
',"se';
wwv_flow_imp.g_varchar2_table(8) := 'quence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"i';
wwv_flow_imp.g_varchar2_table(9) := 's_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"object"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"O';
wwv_flow_imp.g_varchar2_table(10) := 'FFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETC';
wwv_flow_imp.g_varchar2_table(11) := 'H_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{';
wwv_flow_imp.g_varchar2_table(12) := ''||wwv_flow.LF||
'"name":"Content-Type"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction';
wwv_flow_imp.g_varchar2_table(13) := '":"IN"'||wwv_flow.LF||
',"value":"application\/json"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_quer';
wwv_flow_imp.g_varchar2_table(14) := 'y_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OpenAI-Beta"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required"';
wwv_flow_imp.g_varchar2_table(15) := ':"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"assistants=v1"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"';
wwv_flow_imp.g_varchar2_table(16) := 'N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"assistant_id"'||wwv_flow.LF||
',"param_type":"URL_PATTERN"'||wwv_flow.LF||
',"data_type":"VARCHA';
wwv_flow_imp.g_varchar2_table(17) := 'R2"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(18) := '_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(12768830624049210)
,p_catalog_id=>wwv_flow_imp.id(12768050165046702)
,p_name=>'List assistant files'
,p_base_url=>'https://api.openai.com/'
,p_service_path=>'v1/assistants/:assistant_id/files'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
);
end;
/
prompt --workspace/rest-source-catalogs/services//list_assistants
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"List assistants"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"';
wwv_flow_imp.g_varchar2_table(2) := 'data"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"CREATED_AT"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(3) := 'data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"created_';
wwv_flow_imp.g_varchar2_table(4) := 'at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DESCRIPTION"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_leng';
wwv_flow_imp.g_varchar2_table(5) := 'th":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"description"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(6) := '"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_ti';
wwv_flow_imp.g_varchar2_table(7) := 'me_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"INSTRUCTIONS"'||wwv_flow.LF||
',"seq';
wwv_flow_imp.g_varchar2_table(8) := 'uence":7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(9) := '_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"instructions"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MODEL"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(10) := 'primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(11) := '"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"model"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"dat';
wwv_flow_imp.g_varchar2_table(12) := 'a_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(13) := 'selector":"name"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OBJECT"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(14) := 'max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"object"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(15) := ']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"op';
wwv_flow_imp.g_varchar2_table(16) := 'eration":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"';
wwv_flow_imp.g_varchar2_table(17) := 'N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"Content-Type"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type"';
wwv_flow_imp.g_varchar2_table(18) := ':"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"application\/json"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(19) := 'array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OpenAI-Beta"'||wwv_flow.LF||
',"param_type":"HEAD';
wwv_flow_imp.g_varchar2_table(20) := 'ER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"assistants=v1"'||wwv_flow.LF||
',"is_stati';
wwv_flow_imp.g_varchar2_table(21) := 'c":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(12768368357046703)
,p_catalog_id=>wwv_flow_imp.id(12768050165046702)
,p_name=>'List assistants'
,p_base_url=>'https://api.openai.com/'
,p_service_path=>'v1/assistants'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
);
end;
/
prompt --workspace/rest-source-catalogs/services//list_message_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"List message files"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_selector';
wwv_flow_imp.g_varchar2_table(2) := '":"data"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"CREATED_AT"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"';
wwv_flow_imp.g_varchar2_table(3) := ''||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"creat';
wwv_flow_imp.g_varchar2_table(4) := 'ed_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32';
wwv_flow_imp.g_varchar2_table(5) := '767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MESSAGE';
wwv_flow_imp.g_varchar2_table(6) := '_ID"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone';
wwv_flow_imp.g_varchar2_table(7) := '":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"message_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OBJECT"'||wwv_flow.LF||
',"sequence';
wwv_flow_imp.g_varchar2_table(8) := '":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidd';
wwv_flow_imp.g_varchar2_table(9) := 'en":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"object"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"';
wwv_flow_imp.g_varchar2_table(10) := ''||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLL';
wwv_flow_imp.g_varchar2_table(11) := 'ECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name';
wwv_flow_imp.g_varchar2_table(12) := '":"Content-Type"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"';
wwv_flow_imp.g_varchar2_table(13) := ''||wwv_flow.LF||
',"value":"application\/json"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_para';
wwv_flow_imp.g_varchar2_table(14) := 'm":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OpenAI-Beta"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(15) := '"direction":"IN"'||wwv_flow.LF||
',"value":"assistants=v1"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"i';
wwv_flow_imp.g_varchar2_table(16) := 's_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"message_id"'||wwv_flow.LF||
',"param_type":"URL_PATTERN"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(17) := '_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_p';
wwv_flow_imp.g_varchar2_table(18) := 'aram":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"thread_id"'||wwv_flow.LF||
',"param_type":"URL_PATTERN"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required"';
wwv_flow_imp.g_varchar2_table(19) := ':"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(20) := '}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(12770827973055849)
,p_catalog_id=>wwv_flow_imp.id(12768050165046702)
,p_name=>'List message files'
,p_base_url=>'https://api.openai.com/'
,p_service_path=>'v1/threads/:thread_id/messages/:message_id/files'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
);
end;
/
prompt --workspace/rest-source-catalogs/services//list_messages
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"List messages"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"da';
wwv_flow_imp.g_varchar2_table(2) := 'ta"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ASSISTANT_ID"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(3) := 'data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"';
wwv_flow_imp.g_varchar2_table(4) := ''||wwv_flow.LF||
',"selector":"assistant_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CREATED_AT"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type';
wwv_flow_imp.g_varchar2_table(5) := '":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"created_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(6) := '"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_ti';
wwv_flow_imp.g_varchar2_table(7) := 'me_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OBJECT"'||wwv_flow.LF||
',"sequence"';
wwv_flow_imp.g_varchar2_table(8) := ':3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidde';
wwv_flow_imp.g_varchar2_table(9) := 'n":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"object"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ROLE"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":';
wwv_flow_imp.g_varchar2_table(10) := '"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterabl';
wwv_flow_imp.g_varchar2_table(11) := 'e":"Y"'||wwv_flow.LF||
',"selector":"role"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"RUN_ID"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VAR';
wwv_flow_imp.g_varchar2_table(12) := 'CHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"r';
wwv_flow_imp.g_varchar2_table(13) := 'un_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"THREAD_ID"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_len';
wwv_flow_imp.g_varchar2_table(14) := 'gth":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"thread_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(15) := ',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operat';
wwv_flow_imp.g_varchar2_table(16) := 'ion":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(17) := '"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"Content-Type"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type":"VA';
wwv_flow_imp.g_varchar2_table(18) := 'RCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"application\/json"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_arra';
wwv_flow_imp.g_varchar2_table(19) := 'y":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OpenAI-Beta"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(20) := ',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"assistants=v1"'||wwv_flow.LF||
',"is_static":"';
wwv_flow_imp.g_varchar2_table(21) := 'Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"thread_id"'||wwv_flow.LF||
',"param_type"';
wwv_flow_imp.g_varchar2_table(22) := ':"URL_PATTERN"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_ar';
wwv_flow_imp.g_varchar2_table(23) := 'ray":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(12769321437050600)
,p_catalog_id=>wwv_flow_imp.id(12768050165046702)
,p_name=>'List messages'
,p_base_url=>'https://api.openai.com/'
,p_service_path=>'v1/threads/:thread_id/messages'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
);
end;
/
prompt --workspace/rest-source-catalogs/services//list_run_steps
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"List run steps"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"d';
wwv_flow_imp.g_varchar2_table(2) := 'ata"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ASSISTANT_ID"'||wwv_flow.LF||
',"sequence":11'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(3) := ',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"';
wwv_flow_imp.g_varchar2_table(4) := 'Y"'||wwv_flow.LF||
',"selector":"assistant_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CANCELLED_AT"'||wwv_flow.LF||
',"sequence":12'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data';
wwv_flow_imp.g_varchar2_table(5) := '_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"s';
wwv_flow_imp.g_varchar2_table(6) := 'elector":"cancelled_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"COMPLETED_AT"'||wwv_flow.LF||
',"sequence":13'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type"';
wwv_flow_imp.g_varchar2_table(7) := ':"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"completed_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{';
wwv_flow_imp.g_varchar2_table(8) := ''||wwv_flow.LF||
'"name":"CREATED_AT"'||wwv_flow.LF||
',"sequence":8'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(9) := ',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"created_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"EXPIRES_AT"'||wwv_flow.LF||
',"sequence":';
wwv_flow_imp.g_varchar2_table(10) := '9'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden';
wwv_flow_imp.g_varchar2_table(11) := '":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"expires_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FAILED_AT"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_prima';
wwv_flow_imp.g_varchar2_table(12) := 'ry_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_f';
wwv_flow_imp.g_varchar2_table(13) := 'ilterable":"Y"'||wwv_flow.LF||
',"selector":"failed_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_t';
wwv_flow_imp.g_varchar2_table(14) := 'ype":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"sel';
wwv_flow_imp.g_varchar2_table(15) := 'ector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LAST_ERROR"'||wwv_flow.LF||
',"sequence":10'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(16) := 'max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"last_error';
wwv_flow_imp.g_varchar2_table(17) := '"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MESSAGE_ID"'||wwv_flow.LF||
',"sequence":15'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length';
wwv_flow_imp.g_varchar2_table(18) := '":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"step_details.message';
wwv_flow_imp.g_varchar2_table(19) := '_creation.message_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OBJECT"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR';
wwv_flow_imp.g_varchar2_table(20) := '2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"objec';
wwv_flow_imp.g_varchar2_table(21) := 't"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"RUN_ID"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32';
wwv_flow_imp.g_varchar2_table(22) := '767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"run_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STA';
wwv_flow_imp.g_varchar2_table(23) := 'TUS"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone';
wwv_flow_imp.g_varchar2_table(24) := '":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"status"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"THREAD_ID"'||wwv_flow.LF||
',"sequence"';
wwv_flow_imp.g_varchar2_table(25) := ':7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidde';
wwv_flow_imp.g_varchar2_table(26) := 'n":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"thread_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TYPE"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_ke';
wwv_flow_imp.g_varchar2_table(27) := 'y":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filter';
wwv_flow_imp.g_varchar2_table(28) := 'able":"Y"'||wwv_flow.LF||
',"selector":"type"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TYPE2"'||wwv_flow.LF||
',"sequence":14'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"';
wwv_flow_imp.g_varchar2_table(29) := 'VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector"';
wwv_flow_imp.g_varchar2_table(30) := ':"step_details.type"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(31) := '}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(32) := 'allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"Content-Type"'||wwv_flow.LF||
',"param_type';
wwv_flow_imp.g_varchar2_table(33) := '":"HEADER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"application\/json"';
wwv_flow_imp.g_varchar2_table(34) := ''||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OpenAI-Be';
wwv_flow_imp.g_varchar2_table(35) := 'ta"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"as';
wwv_flow_imp.g_varchar2_table(36) := 'sistants=v1"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name';
wwv_flow_imp.g_varchar2_table(37) := '":"run_id"'||wwv_flow.LF||
',"param_type":"URL_PATTERN"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(38) := ',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"thread_id"';
wwv_flow_imp.g_varchar2_table(39) := ''||wwv_flow.LF||
',"param_type":"URL_PATTERN"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_stati';
wwv_flow_imp.g_varchar2_table(40) := 'c":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(12770362537053836)
,p_catalog_id=>wwv_flow_imp.id(12768050165046702)
,p_name=>'List run steps'
,p_base_url=>'https://api.openai.com/'
,p_service_path=>'v1/threads/:thread_id/runs/:run_id/steps'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
);
end;
/
prompt --workspace/rest-source-catalogs/services//list_runs
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"List runs"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"data"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(2) := ',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ASSISTANT_ID"'||wwv_flow.LF||
',"sequence":11'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"dat';
wwv_flow_imp.g_varchar2_table(3) := 'a_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(4) := 'selector":"assistant_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CANCELLED_AT"'||wwv_flow.LF||
',"sequence":12'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type';
wwv_flow_imp.g_varchar2_table(5) := '":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"select';
wwv_flow_imp.g_varchar2_table(6) := 'or":"cancelled_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"COMPLETED_AT"'||wwv_flow.LF||
',"sequence":13'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUM';
wwv_flow_imp.g_varchar2_table(7) := 'BER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"completed_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"nam';
wwv_flow_imp.g_varchar2_table(8) := 'e":"CREATED_AT"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(9) := 'hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"created_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"EXPIRES_AT"'||wwv_flow.LF||
',"sequence":8'||wwv_flow.LF||
',"i';
wwv_flow_imp.g_varchar2_table(10) := 's_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"';
wwv_flow_imp.g_varchar2_table(11) := ''||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"expires_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FAILED_AT"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_ke';
wwv_flow_imp.g_varchar2_table(12) := 'y":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filter';
wwv_flow_imp.g_varchar2_table(13) := 'able":"Y"'||wwv_flow.LF||
',"selector":"failed_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":';
wwv_flow_imp.g_varchar2_table(14) := '"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector';
wwv_flow_imp.g_varchar2_table(15) := '":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"INSTRUCTIONS"'||wwv_flow.LF||
',"sequence":14'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max';
wwv_flow_imp.g_varchar2_table(16) := '_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"instructions"';
wwv_flow_imp.g_varchar2_table(17) := ''||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LAST_ERROR"'||wwv_flow.LF||
',"sequence":9'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":';
wwv_flow_imp.g_varchar2_table(18) := '32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"last_error"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name';
wwv_flow_imp.g_varchar2_table(19) := '":"MODEL"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time';
wwv_flow_imp.g_varchar2_table(20) := '_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"model"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OBJECT"'||wwv_flow.LF||
',"sequence';
wwv_flow_imp.g_varchar2_table(21) := '":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidd';
wwv_flow_imp.g_varchar2_table(22) := 'en":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"object"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STARTED_AT"'||wwv_flow.LF||
',"sequence":10'||wwv_flow.LF||
',"is_prima';
wwv_flow_imp.g_varchar2_table(23) := 'ry_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selec';
wwv_flow_imp.g_varchar2_table(24) := 'tor":"started_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STATUS"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(25) := '"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"status"'||wwv_flow.LF||
'}';
wwv_flow_imp.g_varchar2_table(26) := ''||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"THREAD_ID"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":327';
wwv_flow_imp.g_varchar2_table(27) := '67'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"thread_id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin';
wwv_flow_imp.g_varchar2_table(28) := '_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GE';
wwv_flow_imp.g_varchar2_table(29) := 'T"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"paramet';
wwv_flow_imp.g_varchar2_table(30) := 'ers":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"Content-Type"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(31) := ',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"application\/json"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(32) := '"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OpenAI-Beta"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_t';
wwv_flow_imp.g_varchar2_table(33) := 'ype":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"assistants=v1"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(34) := 'array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"thread_id"'||wwv_flow.LF||
',"param_type":"URL_PA';
wwv_flow_imp.g_varchar2_table(35) := 'TTERN"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"';
wwv_flow_imp.g_varchar2_table(36) := ''||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(12771340868057206)
,p_catalog_id=>wwv_flow_imp.id(12768050165046702)
,p_name=>'List runs'
,p_base_url=>'https://api.openai.com/'
,p_service_path=>'v1/threads/:thread_id/runs'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
);
end;
/
prompt --workspace/rest-source-catalogs/services//list_threads
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"List threads"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"dat';
wwv_flow_imp.g_varchar2_table(2) := 'a"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"CREATED_AT"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"dat';
wwv_flow_imp.g_varchar2_table(3) := 'a_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"created_at"';
wwv_flow_imp.g_varchar2_table(4) := ''||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(5) := 'has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OBJECT"'||wwv_flow.LF||
',"seq';
wwv_flow_imp.g_varchar2_table(6) := 'uence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(7) := '_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"object"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OF';
wwv_flow_imp.g_varchar2_table(8) := 'FSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH';
wwv_flow_imp.g_varchar2_table(9) := '_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(10) := '"name":"Content-Type"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction"';
wwv_flow_imp.g_varchar2_table(11) := ':"IN"'||wwv_flow.LF||
',"value":"application\/json"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query';
wwv_flow_imp.g_varchar2_table(12) := '_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OpenAI-Beta"'||wwv_flow.LF||
',"param_type":"HEADER"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"is_required":';
wwv_flow_imp.g_varchar2_table(13) := '"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"assistants=v1"'||wwv_flow.LF||
',"is_static":"Y"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N';
wwv_flow_imp.g_varchar2_table(14) := '"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(12769881213052356)
,p_catalog_id=>wwv_flow_imp.id(12768050165046702)
,p_name=>'List threads'
,p_base_url=>'https://api.openai.com/'
,p_service_path=>'v1/threads'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
);
end;
/
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
