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
,p_endpoint_url=>'https://raw.githubusercontent.com/ujnak/apexapps/master/exports/RESAS.sql'
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
prompt --workspace/rest-source-catalogs/services//resas旧市区町村一覧
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u65E7\u5E02\u533A\u753A\u6751\u4E00\u89A7"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"row_s';
wwv_flow_imp.g_varchar2_table(2) := 'elector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"CITYCODE"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_k';
wwv_flow_imp.g_varchar2_table(3) := 'ey":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector"';
wwv_flow_imp.g_varchar2_table(4) := ':"cityCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CITYNAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max';
wwv_flow_imp.g_varchar2_table(5) := '_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"cityName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
'"name":"OLDCITYCODE"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"';
wwv_flow_imp.g_varchar2_table(7) := ''||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"oldCityCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OLDCITYNAME"'||wwv_flow.LF||
',"sequenc';
wwv_flow_imp.g_varchar2_table(8) := 'e":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidd';
wwv_flow_imp.g_varchar2_table(9) := 'en":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"oldCityName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PREFCODE"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_pri';
wwv_flow_imp.g_varchar2_table(10) := 'mary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"sel';
wwv_flow_imp.g_varchar2_table(11) := 'ector":"prefCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(12) := '"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"all';
wwv_flow_imp.g_varchar2_table(13) := 'ow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"cityCode"'||wwv_flow.LF||
',"param_type":"QUER';
wwv_flow_imp.g_varchar2_table(14) := 'Y_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"02201"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"o';
wwv_flow_imp.g_varchar2_table(15) := 'mit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"prefCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_re';
wwv_flow_imp.g_varchar2_table(16) := 'quired":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"2"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(17) := 'is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11242997037215132)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\65E7\5E02\533A\753A\6751\4E00\89A7')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'oldCities'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas特許技術テーマ
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u7279\u8A31\u6280\u8853\u30C6\u30FC\u30DE"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_h';
wwv_flow_imp.g_varchar2_table(2) := 'eader_row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"TECCODE"'||wwv_flow.LF||
',"seque';
wwv_flow_imp.g_varchar2_table(3) := 'nce":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidde';
wwv_flow_imp.g_varchar2_table(4) := 'n":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"tecCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TECNAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_k';
wwv_flow_imp.g_varchar2_table(5) := 'ey":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filter';
wwv_flow_imp.g_varchar2_table(6) := 'able":"Y"'||wwv_flow.LF||
',"selector":"tecName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"THEMECODE"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_t';
wwv_flow_imp.g_varchar2_table(7) := 'ype":"VARCHAR2"'||wwv_flow.LF||
',"max_length":20'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"select';
wwv_flow_imp.g_varchar2_table(8) := 'or":"themeCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"THEMENAME"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(9) := ',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"themeName';
wwv_flow_imp.g_varchar2_table(10) := '"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{';
wwv_flow_imp.g_varchar2_table(11) := ''||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_row';
wwv_flow_imp.g_varchar2_table(12) := 's":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"tecCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_re';
wwv_flow_imp.g_varchar2_table(13) := 'quired":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"H"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(14) := 'is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11293273227226392)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\7279\8A31\6280\8853\30C6\30FC\30DE')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'patents/middle'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas特許技術分野
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u7279\u8A31\u6280\u8853\u5206\u91CE"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_';
wwv_flow_imp.g_varchar2_table(2) := 'row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"TECCODE"'||wwv_flow.LF||
',"sequence":1';
wwv_flow_imp.g_varchar2_table(3) := ''||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"';
wwv_flow_imp.g_varchar2_table(4) := ''||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"tecCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TECNAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N';
wwv_flow_imp.g_varchar2_table(5) := '"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":';
wwv_flow_imp.g_varchar2_table(6) := '"Y"'||wwv_flow.LF||
',"selector":"tecName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"t';
wwv_flow_imp.g_varchar2_table(7) := 'rue"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"';
wwv_flow_imp.g_varchar2_table(8) := '."'||wwv_flow.LF||
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
 p_id=>wwv_flow_imp.id(11287705708225262)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\7279\8A31\6280\8853\5206\91CE')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'patents/broad'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas特許権者の所在地
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u7279\u8A31\u6A29\u8005\u306E\u6240\u5728\u5730"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(2) := '"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"CITYCODE"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(3) := ',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(4) := '_filterable":"Y"'||wwv_flow.LF||
',"selector":"cityCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CITYNAME"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(5) := '"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
',"selector":"cityName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ID"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(7) := '"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LATITUDE"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(8) := 'sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_f';
wwv_flow_imp.g_varchar2_table(9) := 'ilterable":"Y"'||wwv_flow.LF||
',"selector":"latitude"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"LONGITUDE"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(10) := 'data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"longitud';
wwv_flow_imp.g_varchar2_table(11) := 'e"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PREFCODE"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone"';
wwv_flow_imp.g_varchar2_table(12) := ':"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"prefCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PREFNAME"'||wwv_flow.LF||
',"sequence"';
wwv_flow_imp.g_varchar2_table(13) := ':6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden';
wwv_flow_imp.g_varchar2_table(14) := '":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"prefName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"';
wwv_flow_imp.g_varchar2_table(15) := ''||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLL';
wwv_flow_imp.g_varchar2_table(16) := 'ECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name';
wwv_flow_imp.g_varchar2_table(17) := '":"cityCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"11362"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(18) := '_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"prefCode"'||wwv_flow.LF||
',"pa';
wwv_flow_imp.g_varchar2_table(19) := 'ram_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"11"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_ar';
wwv_flow_imp.g_varchar2_table(20) := 'ray":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11315567121231102)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\7279\8A31\6A29\8005\306E\6240\5728\5730')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'patents/locations'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas産業中分類
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u7523\u696D\u4E2D\u5206\u985E"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"';
wwv_flow_imp.g_varchar2_table(2) := 'N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"SICCODE"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(3) := 'primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(4) := 'filterable":"Y"'||wwv_flow.LF||
',"selector":"sicCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SIMCCODE"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"d';
wwv_flow_imp.g_varchar2_table(5) := 'ata_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"simcCode"';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SIMCNAME"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":40';
wwv_flow_imp.g_varchar2_table(7) := '00'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"simcName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_';
wwv_flow_imp.g_varchar2_table(8) := 'attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET';
wwv_flow_imp.g_varchar2_table(9) := '"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"paramete';
wwv_flow_imp.g_varchar2_table(10) := 'rs":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"sicCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"dir';
wwv_flow_imp.g_varchar2_table(11) := 'ection":"IN"'||wwv_flow.LF||
',"value":"E"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"';
wwv_flow_imp.g_varchar2_table(12) := 'N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11270189204220947)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\7523\696D\4E2D\5206\985E')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'industries/middle'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas産業大分類
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u7523\u696D\u5927\u5206\u985E"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"';
wwv_flow_imp.g_varchar2_table(2) := 'N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"SICCODE"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(3) := 'primary_key":"Y"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_imp.g_varchar2_table(4) := 'filterable":"Y"'||wwv_flow.LF||
',"selector":"sicCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SICNAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"da';
wwv_flow_imp.g_varchar2_table(5) := 'ta_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(6) := 'selector":"sicName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}';
wwv_flow_imp.g_varchar2_table(7) := ''||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"a';
wwv_flow_imp.g_varchar2_table(8) := 'llow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11251441293216753)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\7523\696D\5927\5206\985E')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'industries/broad'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas産業小分類
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u7523\u696D\u5C0F\u5206\u985E"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"';
wwv_flow_imp.g_varchar2_table(2) := 'N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"SIMCCODE"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(3) := '_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(4) := '"selector":"simcCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SISCCODE"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"NUMBE';
wwv_flow_imp.g_varchar2_table(5) := 'R"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"siscCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SI';
wwv_flow_imp.g_varchar2_table(6) := 'SCNAME"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zo';
wwv_flow_imp.g_varchar2_table(7) := 'ne":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"siscName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5';
wwv_flow_imp.g_varchar2_table(8) := '":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_ope';
wwv_flow_imp.g_varchar2_table(9) := 'ration":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"pa';
wwv_flow_imp.g_varchar2_table(10) := 'rameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"simcCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(11) := 'value":"20"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11274830944222005)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\7523\696D\5C0F\5206\985E')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'industries/narrow'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas税関
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u7A0E\u95A2"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"row_selector"';
wwv_flow_imp.g_varchar2_table(2) := ':"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"CUSTOMHOUSECODE"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_ke';
wwv_flow_imp.g_varchar2_table(3) := 'y":"Y"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":';
wwv_flow_imp.g_varchar2_table(4) := '"customHouseCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CUSTOMHOUSENAME"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VA';
wwv_flow_imp.g_varchar2_table(5) := 'RCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"c';
wwv_flow_imp.g_varchar2_table(6) := 'ustomHouseName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PREFCODE"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"h';
wwv_flow_imp.g_varchar2_table(7) := 'as_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"prefCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"PREFNAME';
wwv_flow_imp.g_varchar2_table(8) := '"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N';
wwv_flow_imp.g_varchar2_table(9) := '"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"prefName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(10) := ',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation';
wwv_flow_imp.g_varchar2_table(11) := '":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"paramete';
wwv_flow_imp.g_varchar2_table(12) := 'rs":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"prefCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value"';
wwv_flow_imp.g_varchar2_table(13) := ':"1"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11297395370227252)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\7A0E\95A2')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'customs'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas職業中分類
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u8077\u696D\u4E2D\u5206\u985E"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"';
wwv_flow_imp.g_varchar2_table(2) := 'N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ISCOCODE"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(3) := '_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(4) := '_filterable":"Y"'||wwv_flow.LF||
',"selector":"iscoCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ISMCOCODE"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(5) := ',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"ismcoC';
wwv_flow_imp.g_varchar2_table(6) := 'ode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ISMCONAME"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_lengt';
wwv_flow_imp.g_varchar2_table(7) := 'h":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"ismcoName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"p';
wwv_flow_imp.g_varchar2_table(8) := 'lugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation';
wwv_flow_imp.g_varchar2_table(9) := '":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"pa';
wwv_flow_imp.g_varchar2_table(10) := 'rameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"iscoCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y';
wwv_flow_imp.g_varchar2_table(11) := '"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"B"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_p';
wwv_flow_imp.g_varchar2_table(12) := 'aram":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11283879534224255)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\8077\696D\4E2D\5206\985E')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'jobs/middle'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas職業大分類
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u8077\u696D\u5927\u5206\u985E"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"';
wwv_flow_imp.g_varchar2_table(2) := 'N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ISCOCODE"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(3) := '_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(4) := '_filterable":"Y"'||wwv_flow.LF||
',"selector":"iscoCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ISCONAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(5) := '"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
',"selector":"iscoName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"tru';
wwv_flow_imp.g_varchar2_table(7) := 'e"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."';
wwv_flow_imp.g_varchar2_table(8) := ''||wwv_flow.LF||
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
 p_id=>wwv_flow_imp.id(11279711286223053)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\8077\696D\5927\5206\985E')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'jobs/broad'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas輸出入取引国国
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u8F38\u51FA\u5165\u53D6\u5F15\u56FD\u56FD"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_h';
wwv_flow_imp.g_varchar2_table(2) := 'eader_row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"COUNTRYCODE"'||wwv_flow.LF||
',"s';
wwv_flow_imp.g_varchar2_table(3) := 'equence":4'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_fi';
wwv_flow_imp.g_varchar2_table(4) := 'lterable":"Y"'||wwv_flow.LF||
',"selector":"countryCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"COUNTRYNAME"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N';
wwv_flow_imp.g_varchar2_table(5) := '"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":';
wwv_flow_imp.g_varchar2_table(6) := '"Y"'||wwv_flow.LF||
',"selector":"countryName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"REGIONCODE"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_ty';
wwv_flow_imp.g_varchar2_table(7) := 'pe":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"regionCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(8) := '{'||wwv_flow.LF||
'"name":"REGIONNAME"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000';
wwv_flow_imp.g_varchar2_table(9) := ''||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"regionName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"RE';
wwv_flow_imp.g_varchar2_table(10) := 'MARKS"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zon';
wwv_flow_imp.g_varchar2_table(11) := 'e":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"remarks"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":';
wwv_flow_imp.g_varchar2_table(12) := '"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_opera';
wwv_flow_imp.g_varchar2_table(13) := 'tion":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"para';
wwv_flow_imp.g_varchar2_table(14) := 'meters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"regionCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(15) := 'value":"1"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11305381607229090)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\8F38\51FA\5165\53D6\5F15\56FD\56FD')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'regions/middle'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas輸出入取引国地域
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u8F38\u51FA\u5165\u53D6\u5F15\u56FD\u5730\u57DF"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(2) := '"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"REGIONCODE';
wwv_flow_imp.g_varchar2_table(3) := '"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(4) := 'is_filterable":"Y"'||wwv_flow.LF||
',"selector":"regionCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"REGIONNAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key"';
wwv_flow_imp.g_varchar2_table(5) := ':"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterabl';
wwv_flow_imp.g_varchar2_table(6) := 'e":"Y"'||wwv_flow.LF||
',"selector":"regionName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"';
wwv_flow_imp.g_varchar2_table(7) := '11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_patt';
wwv_flow_imp.g_varchar2_table(8) := 'ern":"."'||wwv_flow.LF||
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
 p_id=>wwv_flow_imp.id(11301051441228185)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\8F38\51FA\5165\53D6\5F15\56FD\5730\57DF')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'regions/broad'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas輸出入品目中分類
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u8F38\u51FA\u5165\u54C1\u76EE\u4E2D\u5206\u985E"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(2) := '"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ITEMCODE1"';
wwv_flow_imp.g_varchar2_table(3) := ''||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"i';
wwv_flow_imp.g_varchar2_table(4) := 's_filterable":"Y"'||wwv_flow.LF||
',"selector":"itemCode1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ITEMCODE2"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"Y';
wwv_flow_imp.g_varchar2_table(5) := '"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"item';
wwv_flow_imp.g_varchar2_table(6) := 'Code2"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ITEMNAME1"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_len';
wwv_flow_imp.g_varchar2_table(7) := 'gth":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"itemName1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"n';
wwv_flow_imp.g_varchar2_table(8) := 'ame":"ITEMNAME2"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"ha';
wwv_flow_imp.g_varchar2_table(9) := 's_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"itemName2"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attrib';
wwv_flow_imp.g_varchar2_table(10) := 'utes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"da';
wwv_flow_imp.g_varchar2_table(11) := 'tabase_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(12) := ']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"itemCode1"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"directi';
wwv_flow_imp.g_varchar2_table(13) := 'on":"IN"'||wwv_flow.LF||
',"value":"20"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(14) := '}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11324998446232995)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\8F38\51FA\5165\54C1\76EE\4E2D\5206\985E')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'tradeInfoItemTypes/middle'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas輸出入品目大分類
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u8F38\u51FA\u5165\u54C1\u76EE\u5927\u5206\u985E"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(2) := '"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ITEMCODE1"';
wwv_flow_imp.g_varchar2_table(3) := ''||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"i';
wwv_flow_imp.g_varchar2_table(4) := 's_filterable":"Y"'||wwv_flow.LF||
',"selector":"itemCode1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ITEMNAME1"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N';
wwv_flow_imp.g_varchar2_table(5) := '"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":';
wwv_flow_imp.g_varchar2_table(6) := '"Y"'||wwv_flow.LF||
',"selector":"itemName1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11":';
wwv_flow_imp.g_varchar2_table(7) := '"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern"';
wwv_flow_imp.g_varchar2_table(8) := ':"."'||wwv_flow.LF||
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
 p_id=>wwv_flow_imp.id(11320405147232013)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\8F38\51FA\5165\54C1\76EE\5927\5206\985E')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'tradeInfoItemTypes/broad'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas輸出入品目小分類
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u8F38\u51FA\u5165\u54C1\u76EE\u5C0F\u5206\u985E"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(2) := '"has_header_row":"N"'||wwv_flow.LF||
',"row_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ITEMCODE1"';
wwv_flow_imp.g_varchar2_table(3) := ''||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"i';
wwv_flow_imp.g_varchar2_table(4) := 's_filterable":"Y"'||wwv_flow.LF||
',"selector":"itemCode1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ITEMCODE2"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N';
wwv_flow_imp.g_varchar2_table(5) := '"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"item';
wwv_flow_imp.g_varchar2_table(6) := 'Code2"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ITEMCODE3"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"Y"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_';
wwv_flow_imp.g_varchar2_table(7) := 'zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"itemCode3"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ITEMNAME1"'||wwv_flow.LF||
',"se';
wwv_flow_imp.g_varchar2_table(8) := 'quence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(9) := '_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"itemName1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ITEMNAME2"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is';
wwv_flow_imp.g_varchar2_table(10) := '_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',';
wwv_flow_imp.g_varchar2_table(11) := '"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"itemName2"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"ITEMNAME3"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":';
wwv_flow_imp.g_varchar2_table(12) := '"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable';
wwv_flow_imp.g_varchar2_table(13) := '":"Y"'||wwv_flow.LF||
',"selector":"itemName3"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11';
wwv_flow_imp.g_varchar2_table(14) := '":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_patter';
wwv_flow_imp.g_varchar2_table(15) := 'n":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"itemCode1"'||wwv_flow.LF||
',"para';
wwv_flow_imp.g_varchar2_table(16) := 'm_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"6"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array';
wwv_flow_imp.g_varchar2_table(17) := '":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"itemCode2"'||wwv_flow.LF||
',"param_type":"QUERY_STRIN';
wwv_flow_imp.g_varchar2_table(18) := 'G"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"33"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_n';
wwv_flow_imp.g_varchar2_table(19) := 'ull":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(11328015371233874)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\8F38\51FA\5165\54C1\76EE\5C0F\5206\985E')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'tradeInfoItemTypes/narrow'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_HEADER'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20220817'
);
end;
/
prompt --workspace/rest-source-catalogs/services//resas農業部門
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"RESAS\u8FB2\u696D\u90E8\u9580"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":"N"'||wwv_flow.LF||
',"r';
wwv_flow_imp.g_varchar2_table(2) := 'ow_selector":"result"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"SECTIONCODE"'||wwv_flow.LF||
',"sequence":1'||wwv_flow.LF||
',"is_pr';
wwv_flow_imp.g_varchar2_table(3) := 'imary_key":"Y"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_fi';
wwv_flow_imp.g_varchar2_table(4) := 'lterable":"Y"'||wwv_flow.LF||
',"selector":"sectionCode"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SECTIONNAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N';
wwv_flow_imp.g_varchar2_table(5) := '"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":';
wwv_flow_imp.g_varchar2_table(6) := '"Y"'||wwv_flow.LF||
',"selector":"sectionName"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"5":"1"'||wwv_flow.LF||
',"8":"OFFSET"'||wwv_flow.LF||
',"10":"EQUALS"'||wwv_flow.LF||
',"11';
wwv_flow_imp.g_varchar2_table(7) := '":"true"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_patter';
wwv_flow_imp.g_varchar2_table(8) := 'n":"."'||wwv_flow.LF||
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
 p_id=>wwv_flow_imp.id(11310204144230132)
,p_catalog_id=>wwv_flow_imp.id(10089837528554487)
,p_name=>unistr('RESAS\8FB2\696D\90E8\9580')
,p_base_url=>'https://opendata.resas-portal.go.jp/api/v1/'
,p_service_path=>'regions/agricultureDepartments'
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
