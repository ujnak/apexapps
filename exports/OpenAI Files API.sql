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
prompt --workspace/rest-source-catalogs//openai_files_api
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_imp.id(12767230521040193)
,p_name=>'OpenAI Files API'
,p_internal_name=>'OPENAI_FILES_API'
,p_format=>'APEX'
);
end;
/
prompt --workspace/rest-source-catalogs/services//list_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"OpenAI files"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"row_selector":"data"'||wwv_flow.LF||
',"is_single_row":"N';
wwv_flow_imp.g_varchar2_table(2) := '"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"BYTES"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time';
wwv_flow_imp.g_varchar2_table(3) := '_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"bytes"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CREATED_AT"'||wwv_flow.LF||
',"sequ';
wwv_flow_imp.g_varchar2_table(4) := 'ence":7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filte';
wwv_flow_imp.g_varchar2_table(5) := 'rable":"Y"'||wwv_flow.LF||
',"selector":"created_at"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"FILENAME"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"dat';
wwv_flow_imp.g_varchar2_table(6) := 'a_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(7) := 'selector":"filename"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(8) := 'max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"';
wwv_flow_imp.g_varchar2_table(9) := 'name":"OBJECT"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has';
wwv_flow_imp.g_varchar2_table(10) := '_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"object"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PURPOSE"'||wwv_flow.LF||
',"s';
wwv_flow_imp.g_varchar2_table(11) := 'equence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(12) := 'is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"purpose"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STATUS"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_pr';
wwv_flow_imp.g_varchar2_table(13) := 'imary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"i';
wwv_flow_imp.g_varchar2_table(14) := 's_filterable":"Y"'||wwv_flow.LF||
',"selector":"status"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STATUS_DETAILS"'||wwv_flow.LF||
',"sequence":8'||wwv_flow.LF||
',"is_primary_key":';
wwv_flow_imp.g_varchar2_table(15) := '"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":32767'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterabl';
wwv_flow_imp.g_varchar2_table(16) := 'e":"Y"'||wwv_flow.LF||
',"selector":"status_details"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS';
wwv_flow_imp.g_varchar2_table(17) := '"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_';
wwv_flow_imp.g_varchar2_table(18) := 'pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(12767587779040199)
,p_catalog_id=>wwv_flow_imp.id(12767230521040193)
,p_name=>'List files'
,p_base_url=>'https://api.openai.com/'
,p_service_path=>'v1/files'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20231108'
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
