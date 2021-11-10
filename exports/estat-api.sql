prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_default_workspace_id=>2600578355011914
);
end;
/
prompt --workspace/rest-source-catalogs//e_stat_api
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_api.id(3221366788556074)
,p_name=>'e-Stat API'
,p_internal_name=>'ESTATAPI'
,p_format=>'APEX'
);
end;
/
prompt --workspace/rest-source-catalogs/services//メタ情報取得
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"\u30E1\u30BF\u60C5\u5831\u53D6\u5F97"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header_row":';
wwv_flow_api.g_varchar2_table(2) := '"N"'||wwv_flow.LF||
',"row_selector":"GET_META_INFO.METADATA_INF.CLASS_INF.CLASS_OBJ"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns"';
wwv_flow_api.g_varchar2_table(3) := ':['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"CLASS"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"DOCUMENT_FRAGMENT"'||wwv_flow.LF||
',"has_time_';
wwv_flow_api.g_varchar2_table(4) := 'zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"CLASS"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CLASS_OBJ_ID"'||wwv_flow.LF||
',"seq';
wwv_flow_api.g_varchar2_table(5) := 'uence":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":10'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hi';
wwv_flow_api.g_varchar2_table(6) := 'dden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CLASS_OBJ_NAME"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_pri';
wwv_flow_api.g_varchar2_table(7) := 'mary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(8) := 'filterable":"N"'||wwv_flow.LF||
',"selector":"@name"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"2":"limit"'||wwv_flow.LF||
',"3":"100"'||wwv_flow.LF||
',"5":"1"'||wwv_flow.LF||
',"7';
wwv_flow_api.g_varchar2_table(9) := '":"startPosition"'||wwv_flow.LF||
',"8":"START"'||wwv_flow.LF||
',"9":"GET_STATS_DATA.DATALIST_INF.RESULT_INF.NEXT_KEY"'||wwv_flow.LF||
',"10":"NOT_NUL';
wwv_flow_api.g_varchar2_table(10) := 'L"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
',"12":"GET_STATS_DATA.DATALIST_INF.RESULT_INF.NUMBER"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation';
wwv_flow_api.g_varchar2_table(11) := '":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"pa';
wwv_flow_api.g_varchar2_table(12) := 'rameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"explanationGetFlg"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_req';
wwv_flow_api.g_varchar2_table(13) := 'uired":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"Y"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(14) := 's_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lang"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"';
wwv_flow_api.g_varchar2_table(15) := 'IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"statsD';
wwv_flow_api.g_varchar2_table(16) := 'ataId"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"0003288322"'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(17) := 'static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_api.id(3222796251561768)
,p_catalog_id=>wwv_flow_api.id(3221366788556074)
,p_name=>unistr('\30E1\30BF\60C5\5831\53D6\5F97')
,p_base_url=>'https://api.e-stat.go.jp/rest/3.0/'
,p_service_path=>'app/json/getMetaInfo'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_details_json=>wwv_flow_api.g_varchar2_table
,p_version=>'20211110'
);
end;
/
prompt --workspace/rest-source-catalogs/services//統計データ取得
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"\u7D71\u8A08\u30C7\u30FC\u30BF\u53D6\u5F97"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header';
wwv_flow_api.g_varchar2_table(2) := '_row":"N"'||wwv_flow.LF||
',"row_selector":"GET_STATS_DATA.STATISTICAL_DATA.DATA_INF.VALUE"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"co';
wwv_flow_api.g_varchar2_table(3) := 'lumns":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"ANNOTATION"'||wwv_flow.LF||
',"sequence":21'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_le';
wwv_flow_api.g_varchar2_table(4) := 'ngth":4000'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@annotation"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{';
wwv_flow_api.g_varchar2_table(5) := ''||wwv_flow.LF||
'"name":"CAT01_CODE"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(6) := 'has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"Y"'||wwv_flow.LF||
',"selector":"@cat01"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT02_COD';
wwv_flow_api.g_varchar2_table(7) := 'E"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"N"';
wwv_flow_api.g_varchar2_table(8) := ''||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat02"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT03_CODE"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(9) := '"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(10) := ',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat03"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT04_CODE"'||wwv_flow.LF||
',"sequence":8'||wwv_flow.LF||
',"is_primary_key":"';
wwv_flow_api.g_varchar2_table(11) := 'N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"';
wwv_flow_api.g_varchar2_table(12) := 'N"'||wwv_flow.LF||
',"selector":"@cat04"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT05_CODE"'||wwv_flow.LF||
',"sequence":9'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"V';
wwv_flow_api.g_varchar2_table(13) := 'ARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@c';
wwv_flow_api.g_varchar2_table(14) := 'at05"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT06_CODE"'||wwv_flow.LF||
',"sequence":10'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_le';
wwv_flow_api.g_varchar2_table(15) := 'ngth":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat06"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name"';
wwv_flow_api.g_varchar2_table(16) := ':"CAT07_CODE"'||wwv_flow.LF||
',"sequence":11'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_ti';
wwv_flow_api.g_varchar2_table(17) := 'me_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat07"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT08_CODE"'||wwv_flow.LF||
',"s';
wwv_flow_api.g_varchar2_table(18) := 'equence":12'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(19) := '_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat08"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT09_CODE"'||wwv_flow.LF||
',"sequence":13'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(20) := 'primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(21) := '_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat09"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT10_CODE"'||wwv_flow.LF||
',"sequence":14'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(22) := ',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(23) := ',"selector":"@cat10"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT11_CODE"'||wwv_flow.LF||
',"sequence":15'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VAR';
wwv_flow_api.g_varchar2_table(24) := 'CHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat';
wwv_flow_api.g_varchar2_table(25) := '11"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT12_CODE"'||wwv_flow.LF||
',"sequence":16'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_leng';
wwv_flow_api.g_varchar2_table(26) := 'th":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat12"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"';
wwv_flow_api.g_varchar2_table(27) := 'CAT13_CODE"'||wwv_flow.LF||
',"sequence":17'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time';
wwv_flow_api.g_varchar2_table(28) := '_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat13"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT14_CODE"'||wwv_flow.LF||
',"seq';
wwv_flow_api.g_varchar2_table(29) := 'uence":18'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_h';
wwv_flow_api.g_varchar2_table(30) := 'idden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@cat14"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"CAT15_CODE"'||wwv_flow.LF||
',"sequence":19'||wwv_flow.LF||
',"is_pr';
wwv_flow_api.g_varchar2_table(31) := 'imary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_f';
wwv_flow_api.g_varchar2_table(32) := 'ilterable":"N"'||wwv_flow.LF||
',"selector":"@cat15"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TAB_CODE"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"dat';
wwv_flow_api.g_varchar2_table(33) := 'a_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":16'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"sel';
wwv_flow_api.g_varchar2_table(34) := 'ector":"@tab"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TIME_CODE"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(35) := 'max_length":16'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@time"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"';
wwv_flow_api.g_varchar2_table(36) := 'name":"UNIT"'||wwv_flow.LF||
',"sequence":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":20'||wwv_flow.LF||
',"has_time';
wwv_flow_api.g_varchar2_table(37) := '_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"@unit"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"VALUE"'||wwv_flow.LF||
',"sequence"';
wwv_flow_api.g_varchar2_table(38) := ':1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":80'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":';
wwv_flow_api.g_varchar2_table(39) := '"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"$"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attributes":{'||wwv_flow.LF||
'"1":"FLEXIBLE"'||wwv_flow.LF||
',"2":"limit"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(40) := '3":"10000"'||wwv_flow.LF||
',"5":"1"'||wwv_flow.LF||
',"7":"startPosition"'||wwv_flow.LF||
',"8":"START"'||wwv_flow.LF||
',"9":"GET_STATS_DATA.STATISTICAL_DATA.RESULT_I';
wwv_flow_api.g_varchar2_table(41) := 'NF.NEXT_KEY"'||wwv_flow.LF||
',"10":"NOT_NULL"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
',"12":"GET_STATS_DATA.STATISTICAL_DATA.RESULT_INF.TOTAL_N';
wwv_flow_api.g_varchar2_table(42) := 'UMBER"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"url_pattern"';
wwv_flow_api.g_varchar2_table(43) := ':"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"annotationGetFlg"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(44) := '"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"Y"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(45) := 'array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdArea"'||wwv_flow.LF||
',"param_type":"QUERY_STR';
wwv_flow_api.g_varchar2_table(46) := 'ING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(47) := 's_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdAreaFrom"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direct';
wwv_flow_api.g_varchar2_table(48) := 'ion":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"';
wwv_flow_api.g_varchar2_table(49) := 'cdAreaTo"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_ar';
wwv_flow_api.g_varchar2_table(50) := 'ray":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat01"'||wwv_flow.LF||
',"param_type":"QUERY_STRI';
wwv_flow_api.g_varchar2_table(51) := 'NG"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(52) := '_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat01From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direct';
wwv_flow_api.g_varchar2_table(53) := 'ion":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"';
wwv_flow_api.g_varchar2_table(54) := 'cdCat01To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_a';
wwv_flow_api.g_varchar2_table(55) := 'rray":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat02"'||wwv_flow.LF||
',"param_type":"QUERY_STR';
wwv_flow_api.g_varchar2_table(56) := 'ING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(57) := 's_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat02From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direc';
wwv_flow_api.g_varchar2_table(58) := 'tion":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":';
wwv_flow_api.g_varchar2_table(59) := '"cdCat02To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(60) := 'array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat03"'||wwv_flow.LF||
',"param_type":"QUERY_ST';
wwv_flow_api.g_varchar2_table(61) := 'RING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(62) := 'is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat03From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"dire';
wwv_flow_api.g_varchar2_table(63) := 'ction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name"';
wwv_flow_api.g_varchar2_table(64) := ':"cdCat03To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(65) := '_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat04"'||wwv_flow.LF||
',"param_type":"QUERY_S';
wwv_flow_api.g_varchar2_table(66) := 'TRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(67) := '"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat04From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"dir';
wwv_flow_api.g_varchar2_table(68) := 'ection":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name';
wwv_flow_api.g_varchar2_table(69) := '":"cdCat04To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(70) := 's_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat05"'||wwv_flow.LF||
',"param_type":"QUERY_';
wwv_flow_api.g_varchar2_table(71) := 'STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(72) := ',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat05From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"di';
wwv_flow_api.g_varchar2_table(73) := 'rection":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"nam';
wwv_flow_api.g_varchar2_table(74) := 'e":"cdCat05To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(75) := 'is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat06"'||wwv_flow.LF||
',"param_type":"QUERY';
wwv_flow_api.g_varchar2_table(76) := '_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"';
wwv_flow_api.g_varchar2_table(77) := ''||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat06From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"d';
wwv_flow_api.g_varchar2_table(78) := 'irection":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"na';
wwv_flow_api.g_varchar2_table(79) := 'me":"cdCat06To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(80) := '"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat07"'||wwv_flow.LF||
',"param_type":"QUER';
wwv_flow_api.g_varchar2_table(81) := 'Y_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y';
wwv_flow_api.g_varchar2_table(82) := '"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat07From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(83) := 'direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"n';
wwv_flow_api.g_varchar2_table(84) := 'ame":"cdCat07To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(85) := ',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat08"'||wwv_flow.LF||
',"param_type":"QUE';
wwv_flow_api.g_varchar2_table(86) := 'RY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"';
wwv_flow_api.g_varchar2_table(87) := 'Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat08From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(88) := '"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"';
wwv_flow_api.g_varchar2_table(89) := 'name":"cdCat08To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"';
wwv_flow_api.g_varchar2_table(90) := ''||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat09"'||wwv_flow.LF||
',"param_type":"QU';
wwv_flow_api.g_varchar2_table(91) := 'ERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":';
wwv_flow_api.g_varchar2_table(92) := '"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat09From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(93) := ',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(94) := '"name":"cdCat09To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N';
wwv_flow_api.g_varchar2_table(95) := '"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat10"'||wwv_flow.LF||
',"param_type":"Q';
wwv_flow_api.g_varchar2_table(96) := 'UERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null"';
wwv_flow_api.g_varchar2_table(97) := ':"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat10From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"';
wwv_flow_api.g_varchar2_table(98) := ''||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{';
wwv_flow_api.g_varchar2_table(99) := ''||wwv_flow.LF||
'"name":"cdCat10To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"';
wwv_flow_api.g_varchar2_table(100) := 'N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat11"'||wwv_flow.LF||
',"param_type":"';
wwv_flow_api.g_varchar2_table(101) := 'QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null';
wwv_flow_api.g_varchar2_table(102) := '":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat11From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N';
wwv_flow_api.g_varchar2_table(103) := '"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(104) := '{'||wwv_flow.LF||
'"name":"cdCat11To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":';
wwv_flow_api.g_varchar2_table(105) := '"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat12"'||wwv_flow.LF||
',"param_type":';
wwv_flow_api.g_varchar2_table(106) := '"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_nul';
wwv_flow_api.g_varchar2_table(107) := 'l":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat12From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"';
wwv_flow_api.g_varchar2_table(108) := 'N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(109) := ',{'||wwv_flow.LF||
'"name":"cdCat12To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static"';
wwv_flow_api.g_varchar2_table(110) := ':"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat13"'||wwv_flow.LF||
',"param_type"';
wwv_flow_api.g_varchar2_table(111) := ':"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_nu';
wwv_flow_api.g_varchar2_table(112) := 'll":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat13From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":';
wwv_flow_api.g_varchar2_table(113) := '"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}';
wwv_flow_api.g_varchar2_table(114) := ''||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat13To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static';
wwv_flow_api.g_varchar2_table(115) := '":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat14"'||wwv_flow.LF||
',"param_type';
wwv_flow_api.g_varchar2_table(116) := '":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_n';
wwv_flow_api.g_varchar2_table(117) := 'ull":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat14From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required"';
wwv_flow_api.g_varchar2_table(118) := ':"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(119) := '}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat14To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_stati';
wwv_flow_api.g_varchar2_table(120) := 'c":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat15"'||wwv_flow.LF||
',"param_typ';
wwv_flow_api.g_varchar2_table(121) := 'e":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_';
wwv_flow_api.g_varchar2_table(122) := 'null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat15From"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required';
wwv_flow_api.g_varchar2_table(123) := '":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"';
wwv_flow_api.g_varchar2_table(124) := ''||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdCat15To"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_stat';
wwv_flow_api.g_varchar2_table(125) := 'ic":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdTab"'||wwv_flow.LF||
',"param_type';
wwv_flow_api.g_varchar2_table(126) := '":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_n';
wwv_flow_api.g_varchar2_table(127) := 'ull":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdTabFrom"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"';
wwv_flow_api.g_varchar2_table(128) := 'N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(129) := ',{'||wwv_flow.LF||
'"name":"cdTabTo"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"';
wwv_flow_api.g_varchar2_table(130) := 'N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdTime"'||wwv_flow.LF||
',"param_type":"Q';
wwv_flow_api.g_varchar2_table(131) := 'UERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null"';
wwv_flow_api.g_varchar2_table(132) := ':"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cdTimeFrom"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(133) := ',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(134) := '"name":"cdTimeTo"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"';
wwv_flow_api.g_varchar2_table(135) := ''||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"cntGetFlg"'||wwv_flow.LF||
',"param_type":"';
wwv_flow_api.g_varchar2_table(136) := 'QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"N"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"o';
wwv_flow_api.g_varchar2_table(137) := 'mit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"explanationGetFlg"'||wwv_flow.LF||
',"param_type":"QUERY_STRING';
wwv_flow_api.g_varchar2_table(138) := '"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"N"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_nul';
wwv_flow_api.g_varchar2_table(139) := 'l":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lang"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"di';
wwv_flow_api.g_varchar2_table(140) := 'rection":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"nam';
wwv_flow_api.g_varchar2_table(141) := 'e":"lvArea"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_';
wwv_flow_api.g_varchar2_table(142) := 'array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat01"'||wwv_flow.LF||
',"param_type":"QUERY_ST';
wwv_flow_api.g_varchar2_table(143) := 'RING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(144) := 'is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat02"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"directio';
wwv_flow_api.g_varchar2_table(145) := 'n":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lv';
wwv_flow_api.g_varchar2_table(146) := 'Cat03"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array';
wwv_flow_api.g_varchar2_table(147) := '":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat04"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"';
wwv_flow_api.g_varchar2_table(148) := ''||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_qu';
wwv_flow_api.g_varchar2_table(149) := 'ery_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat05"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"I';
wwv_flow_api.g_varchar2_table(150) := 'N"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat06';
wwv_flow_api.g_varchar2_table(151) := '"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"';
wwv_flow_api.g_varchar2_table(152) := ''||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat07"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(153) := '_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_p';
wwv_flow_api.g_varchar2_table(154) := 'aram":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat08"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(155) := 'is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat09"'||wwv_flow.LF||
',"p';
wwv_flow_api.g_varchar2_table(156) := 'aram_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"om';
wwv_flow_api.g_varchar2_table(157) := 'it_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat10"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_requ';
wwv_flow_api.g_varchar2_table(158) := 'ired":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param"';
wwv_flow_api.g_varchar2_table(159) := ':"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat11"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_st';
wwv_flow_api.g_varchar2_table(160) := 'atic":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat12"'||wwv_flow.LF||
',"param_';
wwv_flow_api.g_varchar2_table(161) := 'type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_wh';
wwv_flow_api.g_varchar2_table(162) := 'en_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat13"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required"';
wwv_flow_api.g_varchar2_table(163) := ':"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(164) := '}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat14"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static"';
wwv_flow_api.g_varchar2_table(165) := ':"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvCat15"'||wwv_flow.LF||
',"param_type"';
wwv_flow_api.g_varchar2_table(166) := ':"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_nu';
wwv_flow_api.g_varchar2_table(167) := 'll":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lvTab"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(168) := 'direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"n';
wwv_flow_api.g_varchar2_table(169) := 'ame":"lvTime"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(170) := 's_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"metaGetFlg"'||wwv_flow.LF||
',"param_type":"QUE';
wwv_flow_api.g_varchar2_table(171) := 'RY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"N"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit';
wwv_flow_api.g_varchar2_table(172) := '_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"replaceSpChars"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(173) := '_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"0"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"';
wwv_flow_api.g_varchar2_table(174) := ''||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"statsDataId"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"Y"'||wwv_flow.LF||
',"d';
wwv_flow_api.g_varchar2_table(175) := 'irection":"IN"'||wwv_flow.LF||
',"value":"0003288322"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"N"'||wwv_flow.LF||
',"is_que';
wwv_flow_api.g_varchar2_table(176) := 'ry_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
null;
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_api.id(3222245105560679)
,p_catalog_id=>wwv_flow_api.id(3221366788556074)
,p_name=>unistr('\7D71\8A08\30C7\30FC\30BF\53D6\5F97')
,p_base_url=>'https://api.e-stat.go.jp/rest/3.0/'
,p_service_path=>'app/json/getStatsData'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_details_json=>wwv_flow_api.g_varchar2_table
,p_version=>'20211110'
);
null;
end;
/
prompt --workspace/rest-source-catalogs/services//統計表情報取得
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '{'||wwv_flow.LF||
'"data_profile":{'||wwv_flow.LF||
'"name":"\u7D71\u8A08\u8868\u60C5\u5831\u53D6\u5F97"'||wwv_flow.LF||
',"format":"JSON"'||wwv_flow.LF||
',"has_header';
wwv_flow_api.g_varchar2_table(2) := '_row":"N"'||wwv_flow.LF||
',"row_selector":"GET_STATS_LIST.DATALIST_INF.TABLE_INF"'||wwv_flow.LF||
',"is_single_row":"N"'||wwv_flow.LF||
',"columns":['||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(3) := '{'||wwv_flow.LF||
'"name":"COLLECT_AREA"'||wwv_flow.LF||
',"sequence":13'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":2';
wwv_flow_api.g_varchar2_table(4) := '0'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"COLLECT_AREA"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":';
wwv_flow_api.g_varchar2_table(5) := '"CYCLE"'||wwv_flow.LF||
',"sequence":9'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":20'||wwv_flow.LF||
',"has_time_zone';
wwv_flow_api.g_varchar2_table(6) := '":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"CYCLE"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GOV_ORG_CODE"'||wwv_flow.LF||
',"sequenc';
wwv_flow_api.g_varchar2_table(7) := 'e":4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterab';
wwv_flow_api.g_varchar2_table(8) := 'le":"N"'||wwv_flow.LF||
',"selector":"GOV_ORG.@code"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"GOV_ORG_NAME"'||wwv_flow.LF||
',"sequence":5'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(9) := '"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":40'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(10) := '"selector":"GOV_ORG.$"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MAIN_CATEGORY"'||wwv_flow.LF||
',"sequence":15'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type"';
wwv_flow_api.g_varchar2_table(11) := ':"VARCHAR2"'||wwv_flow.LF||
',"max_length":80'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":';
wwv_flow_api.g_varchar2_table(12) := '"MAIN_CATEGORY.$"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"MAIN_CATEGORY_CODE"'||wwv_flow.LF||
',"sequence":14'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type"';
wwv_flow_api.g_varchar2_table(13) := ':"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"MAIN_CATEGORY.@cod';
wwv_flow_api.g_varchar2_table(14) := 'e"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"NO"'||wwv_flow.LF||
',"sequence":7'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":10'||wwv_flow.LF||
',"h';
wwv_flow_api.g_varchar2_table(15) := 'as_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"TITLE.@no"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OPEN_DA';
wwv_flow_api.g_varchar2_table(16) := 'TE"'||wwv_flow.LF||
',"sequence":11'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"DATE"'||wwv_flow.LF||
',"format_mask":"YYYY-MM-DD"'||wwv_flow.LF||
',"has_time_';
wwv_flow_api.g_varchar2_table(17) := 'zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"OPEN_DATE"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"OVERALL_TOTAL_N';
wwv_flow_api.g_varchar2_table(18) := 'UMBER"'||wwv_flow.LF||
',"sequence":18'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":';
wwv_flow_api.g_varchar2_table(19) := '"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"OVERALL_TOTAL_NUMBER"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SMALL_AREA"'||wwv_flow.LF||
',"sequence":12'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(20) := ',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"';
wwv_flow_api.g_varchar2_table(21) := 'N"'||wwv_flow.LF||
',"selector":"SMALL_AREA"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STATISTICS_NAME"'||wwv_flow.LF||
',"sequence":6'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data';
wwv_flow_api.g_varchar2_table(22) := '_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":400'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"sel';
wwv_flow_api.g_varchar2_table(23) := 'ector":"STATISTICS_NAME"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"STAT_CODE"'||wwv_flow.LF||
',"sequence":2'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"N';
wwv_flow_api.g_varchar2_table(24) := 'UMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"STAT_NAME.@code"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{';
wwv_flow_api.g_varchar2_table(25) := ''||wwv_flow.LF||
'"name":"STAT_NAME"'||wwv_flow.LF||
',"sequence":3'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(26) := 'has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"STAT_NAME.$"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SUB_';
wwv_flow_api.g_varchar2_table(27) := 'CATEGORY"'||wwv_flow.LF||
',"sequence":17'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":80'||wwv_flow.LF||
',"has_time_z';
wwv_flow_api.g_varchar2_table(28) := 'one":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"SUB_CATEGORY.$"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SUB_CATEGOR';
wwv_flow_api.g_varchar2_table(29) := 'Y_CODE"'||wwv_flow.LF||
',"sequence":16'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden"';
wwv_flow_api.g_varchar2_table(30) := ':"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"SUB_CATEGORY.@code"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"SURVEY_DATE"'||wwv_flow.LF||
',"sequence":10'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(31) := ',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":10'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"';
wwv_flow_api.g_varchar2_table(32) := ''||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"SURVEY_DATE"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABLE_CATEGORY"'||wwv_flow.LF||
',"sequence":32'||wwv_flow.LF||
',"is_pri';
wwv_flow_api.g_varchar2_table(33) := 'mary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_f';
wwv_flow_api.g_varchar2_table(34) := 'ilterable":"N"'||wwv_flow.LF||
',"selector":"TITLE_SPEC.TABLE_CATEGORY"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABLE_EXPLANATION"'||wwv_flow.LF||
',"sequence":3';
wwv_flow_api.g_varchar2_table(35) := '4'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":4000'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden"';
wwv_flow_api.g_varchar2_table(36) := ':"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"TITLE_SPEC.TABLE_EXPLANATION"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABLE_INF"'||wwv_flow.LF||
',"seque';
wwv_flow_api.g_varchar2_table(37) := 'nce":1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"NUMBER"'||wwv_flow.LF||
',"has_time_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filter';
wwv_flow_api.g_varchar2_table(38) := 'able":"N"'||wwv_flow.LF||
',"selector":"@id"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABLE_NAME"'||wwv_flow.LF||
',"sequence":33'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_typ';
wwv_flow_api.g_varchar2_table(39) := 'e":"VARCHAR2"'||wwv_flow.LF||
',"max_length":2000'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"select';
wwv_flow_api.g_varchar2_table(40) := 'or":"TITLE_SPEC.TABLE_NAME"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABLE_SUB_CATEGORY1"'||wwv_flow.LF||
',"sequence":35'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(41) := '"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(42) := ',"selector":"TITLE_SPEC.TABLE_SUB_CATEGORY1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABLE_SUB_CATEGORY2"'||wwv_flow.LF||
',"sequence":36'||wwv_flow.LF||
',"is_p';
wwv_flow_api.g_varchar2_table(43) := 'rimary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(44) := '_filterable":"N"'||wwv_flow.LF||
',"selector":"TITLE_SPEC.TABLE_SUB_CATEGORY2"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABLE_SUB_CATEGORY3"'||wwv_flow.LF||
',"se';
wwv_flow_api.g_varchar2_table(45) := 'quence":37'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is';
wwv_flow_api.g_varchar2_table(46) := '_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"TITLE_SPEC.TABLE_SUB_CATEGORY3"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABULATI';
wwv_flow_api.g_varchar2_table(47) := 'ON_CATEGORY"'||wwv_flow.LF||
',"sequence":20'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"has_ti';
wwv_flow_api.g_varchar2_table(48) := 'me_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"STATISTICS_NAME_SPEC.TABULATION_CATE';
wwv_flow_api.g_varchar2_table(49) := 'GORY"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABULATION_CATEGORY_EXPLANATION"'||wwv_flow.LF||
',"sequence":26'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type';
wwv_flow_api.g_varchar2_table(50) := '":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector';
wwv_flow_api.g_varchar2_table(51) := '":"DESCRIPTION.TABULATION_CATEGORY_EXPLANATION"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABULATION_SUB_CATEGORY1"'||wwv_flow.LF||
',"sequence":2';
wwv_flow_api.g_varchar2_table(52) := '1'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":';
wwv_flow_api.g_varchar2_table(53) := '"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"STATISTICS_NAME_SPEC.TABULATION_SUB_CATEGORY1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TA';
wwv_flow_api.g_varchar2_table(54) := 'BULATION_SUB_CATEGORY2"'||wwv_flow.LF||
',"sequence":22'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":2';
wwv_flow_api.g_varchar2_table(55) := '00'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"STATISTICS_NAME_SPEC.TABU';
wwv_flow_api.g_varchar2_table(56) := 'LATION_SUB_CATEGORY2"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABULATION_SUB_CATEGORY3"'||wwv_flow.LF||
',"sequence":23'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(57) := 'data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(58) := '"selector":"STATISTICS_NAME_SPEC.TABULATION_SUB_CATEGORY3"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABULATION_SUB_CATEGORY4"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(59) := 'sequence":24'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":200'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(60) := 'is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"STATISTICS_NAME_SPEC.TABULATION_SUB_CATEGORY4"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{';
wwv_flow_api.g_varchar2_table(61) := ''||wwv_flow.LF||
'"name":"TABULATION_SUB_CATEGORY5"'||wwv_flow.LF||
',"sequence":25'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"ma';
wwv_flow_api.g_varchar2_table(62) := 'x_length":200'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"STATISTICS_NAM';
wwv_flow_api.g_varchar2_table(63) := 'E_SPEC.TABULATION_SUB_CATEGORY5"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABULATION_SUB_CATEGORY_EXPLANATION1"'||wwv_flow.LF||
',"sequence":27'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(64) := '"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1000'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N';
wwv_flow_api.g_varchar2_table(65) := '"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"DESCRIPTION.TABULATION_SUB_CATEGORY_EXPLANATION1"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"T';
wwv_flow_api.g_varchar2_table(66) := 'ABULATION_SUB_CATEGORY_EXPLANATION2"'||wwv_flow.LF||
',"sequence":28'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(67) := 'max_length":1000'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"DESCRIPTION';
wwv_flow_api.g_varchar2_table(68) := '.TABULATION_SUB_CATEGORY_EXPLANATION2"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABULATION_SUB_CATEGORY_EXPLANATION3"'||wwv_flow.LF||
',"sequence';
wwv_flow_api.g_varchar2_table(69) := '":29'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1000'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidd';
wwv_flow_api.g_varchar2_table(70) := 'en":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"DESCRIPTION.TABULATION_SUB_CATEGORY_EXPLANATION3"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"na';
wwv_flow_api.g_varchar2_table(71) := 'me":"TABULATION_SUB_CATEGORY_EXPLANATION4"'||wwv_flow.LF||
',"sequence":30'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHA';
wwv_flow_api.g_varchar2_table(72) := 'R2"'||wwv_flow.LF||
',"max_length":1000'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"DESCR';
wwv_flow_api.g_varchar2_table(73) := 'IPTION.TABULATION_SUB_CATEGORY_EXPLANATION4"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"TABULATION_SUB_CATEGORY_EXPLANATION5"'||wwv_flow.LF||
',"se';
wwv_flow_api.g_varchar2_table(74) := 'quence":31'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":1000'||wwv_flow.LF||
',"has_time_zone":"Y"'||wwv_flow.LF||
',"i';
wwv_flow_api.g_varchar2_table(75) := 's_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"DESCRIPTION.TABULATION_SUB_CATEGORY_EXPLANATION5"'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(76) := ',{'||wwv_flow.LF||
'"name":"TITLE"'||wwv_flow.LF||
',"sequence":8'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"VARCHAR2"'||wwv_flow.LF||
',"max_length":2000'||wwv_flow.LF||
',"h';
wwv_flow_api.g_varchar2_table(77) := 'as_time_zone":"Y"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"TITLE.$"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"UPDATED_D';
wwv_flow_api.g_varchar2_table(78) := 'ATE"'||wwv_flow.LF||
',"sequence":19'||wwv_flow.LF||
',"is_primary_key":"N"'||wwv_flow.LF||
',"data_type":"DATE"'||wwv_flow.LF||
',"format_mask":"YYYY-MM-DD"'||wwv_flow.LF||
',"has_time';
wwv_flow_api.g_varchar2_table(79) := '_zone":"N"'||wwv_flow.LF||
',"is_hidden":"N"'||wwv_flow.LF||
',"is_filterable":"N"'||wwv_flow.LF||
',"selector":"UPDATED_DATE"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"plugin_attribute';
wwv_flow_api.g_varchar2_table(80) := 's":{'||wwv_flow.LF||
'"1":"FLEXIBLE"'||wwv_flow.LF||
',"2":"limit"'||wwv_flow.LF||
',"3":"10000"'||wwv_flow.LF||
',"5":"1"'||wwv_flow.LF||
',"7":"startPosition"'||wwv_flow.LF||
',"8":"START"'||wwv_flow.LF||
',"9":"GET_S';
wwv_flow_api.g_varchar2_table(81) := 'TATS_LIST.DATALIST_INF.RESULT_INF.NEXT_KEY"'||wwv_flow.LF||
',"10":"NOT_NULL"'||wwv_flow.LF||
',"11":"true"'||wwv_flow.LF||
',"12":"GET_STATS_LIST.DATA';
wwv_flow_api.g_varchar2_table(82) := 'LIST_INF.NUMBER"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',"operations":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"operation":"GET"'||wwv_flow.LF||
',"database_operation":"FETCH_COLLECTION"'||wwv_flow.LF||
',"ur';
wwv_flow_api.g_varchar2_table(83) := 'l_pattern":"."'||wwv_flow.LF||
',"allow_fetch_all_rows":"N"'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
',"parameters":['||wwv_flow.LF||
'{'||wwv_flow.LF||
'"name":"collectAr';
wwv_flow_api.g_varchar2_table(84) := 'ea"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"';
wwv_flow_api.g_varchar2_table(85) := 'N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"explanationGetFlg"'||wwv_flow.LF||
',"param_type":"QUERY_';
wwv_flow_api.g_varchar2_table(86) := 'STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"value":"Y"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_wh';
wwv_flow_api.g_varchar2_table(87) := 'en_null":"N"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"lang"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N';
wwv_flow_api.g_varchar2_table(88) := '"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',';
wwv_flow_api.g_varchar2_table(89) := '{'||wwv_flow.LF||
'"name":"openYears"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":';
wwv_flow_api.g_varchar2_table(90) := '"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"searchKind"'||wwv_flow.LF||
',"param_typ';
wwv_flow_api.g_varchar2_table(91) := 'e":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_';
wwv_flow_api.g_varchar2_table(92) := 'null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"searchWord"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required"';
wwv_flow_api.g_varchar2_table(93) := ':"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(94) := '}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"statsCode"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_stati';
wwv_flow_api.g_varchar2_table(95) := 'c":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"statsField"'||wwv_flow.LF||
',"param_';
wwv_flow_api.g_varchar2_table(96) := 'type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_wh';
wwv_flow_api.g_varchar2_table(97) := 'en_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"statsNameList"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_req';
wwv_flow_api.g_varchar2_table(98) := 'uired":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param';
wwv_flow_api.g_varchar2_table(99) := '":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"surveyYears"'||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"';
wwv_flow_api.g_varchar2_table(100) := 'is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
',{'||wwv_flow.LF||
'"name":"updatedDate"';
wwv_flow_api.g_varchar2_table(101) := ''||wwv_flow.LF||
',"param_type":"QUERY_STRING"'||wwv_flow.LF||
',"is_required":"N"'||wwv_flow.LF||
',"direction":"IN"'||wwv_flow.LF||
',"is_static":"N"'||wwv_flow.LF||
',"is_array":"N"'||wwv_flow.LF||
'';
wwv_flow_api.g_varchar2_table(102) := ',"omit_when_null":"Y"'||wwv_flow.LF||
',"is_query_param":"N"'||wwv_flow.LF||
'}'||wwv_flow.LF||
']'||wwv_flow.LF||
'}'||wwv_flow.LF||
'';
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_api.id(3221765900559440)
,p_catalog_id=>wwv_flow_api.id(3221366788556074)
,p_name=>unistr('\7D71\8A08\8868\60C5\5831\53D6\5F97')
,p_base_url=>'https://api.e-stat.go.jp/rest/3.0/'
,p_service_path=>'app/json/getStatsList'
,p_plugin_internal_name=>'NATIVE_HTTP'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_details_json=>wwv_flow_api.g_varchar2_table
,p_version=>'20211110'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
