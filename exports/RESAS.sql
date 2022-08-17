prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_default_workspace_id=>7329863223023940
);
end;
/
prompt --workspace/rest-source-catalogs//resas
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>'RESAS'
,p_internal_name=>'RESAS'
,p_format=>'APEX'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas市区町村一覧
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u5E02\u533A\u753A\u6751\u4E00\u89A7"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_';
wwv_flow_imp.g_varchar2_table(2) := 'row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"BIGCITYFLAG"'||wwv_flow.LF||
',"sequenc';
wwv_flow_imp.g_varchar2_table(3) := 'e":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterab';
wwv_flow_imp.g_varchar2_table(4) := 'le":"Y"'||wwv_flow.LF||
',"selector":"bigCityFlag"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CITYCODE"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_';
wwv_flow_imp.g_varchar2_table(5) := 'type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"cityCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(6) := '{'||wwv_flow.LF||
'"name":"CITYNAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(7) := '"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"cityName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PREFCO';
wwv_flow_imp.g_varchar2_table(8) := 'DE"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(9) := ',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"prefCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10"';
wwv_flow_imp.g_varchar2_table(10) := ':"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION';
wwv_flow_imp.g_varchar2_table(11) := '"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"pre';
wwv_flow_imp.g_varchar2_table(12) := 'fCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"1"'||wwv_flow.LF||
',"is_static":"';
wwv_flow_imp.g_varchar2_table(13) := 'N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(10090658569608333)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\5E02\533A\753A\6751\4E00\89A7')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'cities'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas都道府県一覧
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u90FD\u9053\u5E9C\u770C\u4E00\u89A7"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_';
wwv_flow_imp.g_varchar2_table(2) := 'row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"PREFCODE"'||wwv_flow.LF||
',"sequence":';
wwv_flow_imp.g_varchar2_table(3) := '1'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable"';
wwv_flow_imp.g_varchar2_table(4) := ':"Y"'||wwv_flow.LF||
',"selector":"prefCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PREFNAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":';
wwv_flow_imp.g_varchar2_table(5) := '"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector"';
wwv_flow_imp.g_varchar2_table(6) := ':"prefName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"opera';
wwv_flow_imp.g_varchar2_table(7) := 'tions":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fet';
wwv_flow_imp.g_varchar2_table(8) := 'ch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(10090122845590672)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\90FD\9053\5E9C\770C\4E00\89A7')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'prefectures'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
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
