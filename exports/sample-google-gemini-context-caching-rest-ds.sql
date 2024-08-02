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
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_default_workspace_id=>7582124972789269
);
end;
/
prompt --workspace/rest-source-catalogs//google_gemini_api
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_imp.id(26439053406563821)
,p_name=>'Google Gemini API'
,p_internal_name=>'GOOGLE_GEMINI_API'
,p_format=>'APEX'
);
end;
/
prompt --workspace/rest-source-catalogs/services//google_gemini_cached_contents
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"CachedContents"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"c';
wwv_flow_imp.g_varchar2_table(2) := 'achedContents"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"CREATE_TIME"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_k';
wwv_flow_imp.g_varchar2_table(3) := 'ey":"N"'||wwv_flow.LF||
',"data_type":"TIMESTAMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\"-\"DD\"T\"HH24\":\"MI:S';
wwv_flow_imp.g_varchar2_table(4) := 'S.FF9TZR"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"createTime"'||wwv_flow.LF||
',"is_c';
wwv_flow_imp.g_varchar2_table(5) := 'ommon":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DISPLAY_NAME"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(6) := 'max_length":512'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"displayName"';
wwv_flow_imp.g_varchar2_table(7) := ''||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"EXPIRE_TIME"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"TIMEST';
wwv_flow_imp.g_varchar2_table(8) := 'AMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\"-\"DD\"T\"HH24\":\"MI:SS.FF9TZR"'||wwv_flow.LF||
',"has_time_zone":"';
wwv_flow_imp.g_varchar2_table(9) := 'Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"expireTime"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MODE';
wwv_flow_imp.g_varchar2_table(10) := 'L"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":128'||wwv_flow.LF||
',"has_time_zone":"N';
wwv_flow_imp.g_varchar2_table(11) := '"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"model"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NAME"'||wwv_flow.LF||
',"se';
wwv_flow_imp.g_varchar2_table(12) := 'quence":1'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":512'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(13) := 'hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"name"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"UPDATE_TIME"'||wwv_flow.LF||
',"seq';
wwv_flow_imp.g_varchar2_table(14) := 'uence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"TIMESTAMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\"';
wwv_flow_imp.g_varchar2_table(15) := '-\"DD\"T\"HH24\":\"MI:SS.FF9TZR"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"select';
wwv_flow_imp.g_varchar2_table(16) := 'or":"updateTime"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"USAGE_METADATA_TOTAL_TOKEN_COUNT"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(17) := 'primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(18) := 'selector":"usageMetadata.totalTokenCount"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operatio';
wwv_flow_imp.g_varchar2_table(19) := 'ns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"DELETE"'||wwv_flow.LF||
',"database_operation":"DELETE"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(20) := '{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_ro';
wwv_flow_imp.g_varchar2_table(21) := 'ws":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"operation":"POST"'||wwv_flow.LF||
',"database_operation":"INSERT"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(22) := ',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(26439946669569411)
,p_catalog_id=>wwv_flow_imp.id(26439053406563821)
,p_name=>'Google Gemini Cached Contents'
,p_base_url=>'https://generativelanguage.googleapis.com/'
,p_service_path=>'v1beta/cachedContents'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20240802'
);
end;
/
prompt --workspace/rest-source-catalogs/services//google_gemini_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"Google Gemini Files List"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_se';
wwv_flow_imp.g_varchar2_table(2) := 'lector":"files"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"CREATE_TIME"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_';
wwv_flow_imp.g_varchar2_table(3) := 'key":"N"'||wwv_flow.LF||
',"data_type":"TIMESTAMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\"-\"DD\"T\"HH24\":\"MI:';
wwv_flow_imp.g_varchar2_table(4) := 'SS.FF9TZR"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"createTime"'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(5) := 'common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"DISPLAY_NAME_ENC"'||wwv_flow.LF||
',"sequence":9'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR';
wwv_flow_imp.g_varchar2_table(6) := '2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"displa';
wwv_flow_imp.g_varchar2_table(7) := 'yName"'||wwv_flow.LF||
',"is_common":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"EXPIRATION_TIME"'||wwv_flow.LF||
',"sequence":10'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_ty';
wwv_flow_imp.g_varchar2_table(8) := 'pe":"TIMESTAMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM\"-\"DD\"T\"HH24\":\"MI:SS.FF9TZR"'||wwv_flow.LF||
',"has_t';
wwv_flow_imp.g_varchar2_table(9) := 'ime_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"expirationTime"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(10) := ',{'||wwv_flow.LF||
'"name":"MIME_TYPE"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":64'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(11) := '"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"mimeType"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(12) := ',{'||wwv_flow.LF||
'"name":"NAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":512'||wwv_flow.LF||
',"has';
wwv_flow_imp.g_varchar2_table(13) := '_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"name"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name';
wwv_flow_imp.g_varchar2_table(14) := '":"SHA256_HASH"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":512'||wwv_flow.LF||
',"has_';
wwv_flow_imp.g_varchar2_table(15) := 'time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"sha256Hash"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(16) := '"name":"SIZE_BYTES"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(17) := '"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"sizeBytes"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STATE"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(18) := 'sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":64'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(19) := '_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"state"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"UPDATE_TIME"'||wwv_flow.LF||
',"s';
wwv_flow_imp.g_varchar2_table(20) := 'equence":8'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"TIMESTAMP WITH TIME ZONE"'||wwv_flow.LF||
',"format_mask":"YYYY\"-\"MM';
wwv_flow_imp.g_varchar2_table(21) := '\"-\"DD\"T\"HH24\":\"MI:SS.FF9TZR"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"sele';
wwv_flow_imp.g_varchar2_table(22) := 'ctor":"updateTime"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"URI"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_typ';
wwv_flow_imp.g_varchar2_table(23) := 'e":"VARCHAR2"'||wwv_flow.LF||
',"max_length":512'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selecto';
wwv_flow_imp.g_varchar2_table(24) := 'r":"uri"'||wwv_flow.LF||
',"is_common":"Y"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"POST"'||wwv_flow.LF||
',"data';
wwv_flow_imp.g_varchar2_table(25) := 'base_operation":"INSERT"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"operation":"DELETE"'||wwv_flow.LF||
',"database_o';
wwv_flow_imp.g_varchar2_table(26) := 'peration":"DELETE"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation"';
wwv_flow_imp.g_varchar2_table(27) := ':"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameter';
wwv_flow_imp.g_varchar2_table(28) := 's":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"pageSize"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"dir';
wwv_flow_imp.g_varchar2_table(29) := 'ection":"IN"'||wwv_flow.LF||
',"value":"100"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param"';
wwv_flow_imp.g_varchar2_table(30) := ':"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(26439439615567509)
,p_catalog_id=>wwv_flow_imp.id(26439053406563821)
,p_name=>'Google Gemini Files'
,p_base_url=>'https://generativelanguage.googleapis.com/'
,p_service_path=>'/v1beta/files'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20240802'
);
end;
/
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
