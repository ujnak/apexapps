prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.1'
,p_default_workspace_id=>2600572927015410
,p_default_application_id=>102
,p_default_id_offset=>5707700533188182
,p_default_owner=>'APEXDEV'
);
end;
/
 
prompt APPLICATION 102 - 医療提供体制の状況
--
-- Application Export:
--   Application:     102
--   Name:            医療提供体制の状況
--   Date and Time:   12:48 水曜日 7月 14, 2021
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      6
--       Items:                    4
--       Processes:                5
--       Regions:                  8
--       Buttons:                  2
--     Shared Components:
--       Logic:
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              17
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--         LOVs:                   2
--         Shortcuts:              1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:         11
--   Version:         21.1.1
--   Instance ID:     248259925035928
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEXDEV')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('\533B\7642\63D0\4F9B\4F53\5236\306E\72B6\6CC1'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'MEDICAL-FACILITY-STATUSES')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'FAF138C2DECD8A93D3F78369D3D3B43A8B06C4422C1ACA7996E26166134DE86E'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'ja'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\4F5C\6210\30A6\30A3\30B6\30FC\30C92021.07.08\304B\3089\4F5C\6210\3055\308C\305F\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3002')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(19873357787841629539)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>unistr('\533B\7642\63D0\4F9B\4F53\5236\306E\72B6\6CC1')
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>unistr('\30EA\30EA\30FC\30B91.0')
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>unistr('\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306F\3001\73FE\6642\70B9\3067\306F\4F7F\7528\3067\304D\307E\305B\3093\3002')
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>unistr('\533B\7642\63D0\4F9B\4F53\5236\306E\72B6\6CC1')
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210714124721'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
);
end;
/
prompt --application/shared_components/remote_servers/opendata_corona_go_jp_api_covid19dailysurvey
begin
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(19510450183315013737)
,p_name=>'opendata-corona-go-jp-api-covid19dailysurvey'
,p_static_id=>'opendata_corona_go_jp_api_covid19dailysurvey'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('opendata_corona_go_jp_api_covid19dailysurvey'),'https://opendata.corona.go.jp/api/covid19DailySurvey/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('opendata_corona_go_jp_api_covid19dailysurvey'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('opendata_corona_go_jp_api_covid19dailysurvey'),'')
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/data_profiles/covid19dailysurvey
begin
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'covid19DailySurvey'
,p_format=>'JSON'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875826391635878549)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'ANS_TYPE'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>16
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'ansType'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875826685914878550)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'ZIP_CODE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>12
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'zipCode'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875826925554878550)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'CITY_NAME'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>40
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'cityName'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875827252595878550)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'LATITUDE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'latitude'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875827514392878550)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'PREF_NAME'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>20
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'prefName'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875827820122878550)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'LONGITUDE'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'longitude'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875828147038878550)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'FACILITY_ID'
,p_sequence=>7
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>16
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'facilityId'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875828443228878550)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'SUBMIT_DATE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'submitDate'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875828711873878550)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'FACILITY_TEL'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>16
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'facilityTel'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875829020445878550)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'FACILITY_ADDR'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>255
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'facilityAddr'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875829327675878551)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'FACILITY_CODE'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>16
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'facilityCode'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875829696925878551)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'FACILITY_NAME'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>255
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'facilityName'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875829920417878551)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'FACILITY_TYPE'
,p_sequence=>13
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>16
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'facilityType'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(19875830243449878551)
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_name=>'LOCAL_GOV_CODE'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>6
,p_has_time_zone=>false
,p_is_filterable=>false
,p_selector=>'localGovCode'
);
end;
/
prompt --application/shared_components/web_sources/covid19dailysurvey
begin
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(19875830552906878553)
,p_name=>'covid19DailySurvey'
,p_static_id=>'covid19DailySurvey'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_api.id(19875826135693878547)
,p_remote_server_id=>wwv_flow_api.id(19510450183315013737)
,p_url_path_prefix=>':since'
,p_sync_table_name=>'C19_MEDICAL_FACILITY_STATUSES_INT'
,p_sync_type=>'REPLACE'
,p_sync_max_http_requests=>1000
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(19875831117678878556)
,p_web_src_module_id=>wwv_flow_api.id(19875830552906878553)
,p_name=>'localGovCode'
,p_param_type=>'QUERY_STRING'
,p_is_required=>false
,p_omit_when_null=>true
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(19877405340840025521)
,p_web_src_module_id=>wwv_flow_api.id(19875830552906878553)
,p_name=>'prefName'
,p_param_type=>'QUERY_STRING'
,p_is_required=>false
,p_omit_when_null=>true
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(19878478903312601431)
,p_web_src_module_id=>wwv_flow_api.id(19875830552906878553)
,p_name=>'since'
,p_param_type=>'URL_PATTERN'
,p_is_required=>false
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(19875830755381878555)
,p_web_src_module_id=>wwv_flow_api.id(19875830552906878553)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・メニュー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(19873358583124629540)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30E1\30CB\30E5\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19873615806297629622)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30DB\30FC\30E0')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19884989783648278788)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\533B\7642\63D0\4F9B\72B6\6CC1\8A73\7D30')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19933587790744579900)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\533B\7642\6A5F\95A2')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9600508049811973)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\5BFE\8C61\81EA\6CBB\4F53\9078\629E')
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・バー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(19873604989628629605)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30D0\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19873617372334629625)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19873617815921629625)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(19873617372334629625)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19873618252676629626)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\30B5\30A4\30F3\30A2\30A6\30C8')
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(19873617372334629625)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_api.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222343413538394422202F3E3C67206F7061636974793D222E32223E3C7061746820643D224D333220323661322E3520322E3520302031203020322E3520322E3541322E35303320322E3530332030';
wwv_flow_api.g_varchar2_table(3) := '203020302033322032367A6D30203461312E3520312E3520302031203120312E352D312E3541312E35303220312E3530322030203020312033322033307A222F3E3C7061746820643D224D34322E3533362033362E3832386C2D322E3637332D322E3637';
wwv_flow_api.g_varchar2_table(4) := '324131382E3937332031382E39373320302030203020343020333263302D352E3835352D322E3732332D31312E3439332D372E3636382D31352E383734612E352E352030203020302D2E36363420304332362E3732332032302E3530372032342032362E';
wwv_flow_api.g_varchar2_table(5) := '3134352032342033326131382E3937332031382E393733203020302030202E31333720322E3135366C2D322E36373320322E36373341342E39363720342E3936372030203020302032302034302E3336345634372E35612E352E35203020302030202E35';
wwv_flow_api.g_varchar2_table(6) := '2E3568312E30373561332E30303220332E30303220302030203020312E3935322D2E3732326C342E332D332E363835632E3431312E3538322E38343720312E31353520312E33323220312E37313261322E30303120322E30303120302030203020312E35';
wwv_flow_api.g_varchar2_table(7) := '32372E363935682E38323476312E35612E352E3520302030203020312030563436682E38323461322E30303120322E30303120302030203020312E3532372D2E3639352032332E37382032332E373820302030203020312E3332332D312E3731326C342E';
wwv_flow_api.g_varchar2_table(8) := '32393820332E36383461332E30303220332E30303220302030203020312E3935332E3732334834332E35612E352E35203020302030202E352D2E35762D372E31333661342E393720342E39372030203020302D312E3436342D332E3533367A4D33322031';
wwv_flow_api.g_varchar2_table(9) := '372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E3839372030203020312033322031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E33';
wwv_flow_api.g_varchar2_table(10) := '2E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E33303120302030203020322E39353920372E3335377A6D31312E3231342D312E383633';
wwv_flow_api.g_varchar2_table(11) := '61312E30313420312E3031342030203020312D2E3736362E3334344833322E35762D392E35612E352E352030203020302D312030563435682D2E38323461312E30313420312E3031342030203020312D2E3736362D2E3334344131392E342031392E3420';
wwv_flow_api.g_varchar2_table(12) := '30203020312032352033326131382E3434362031382E34343620302030203120312E3835382D386831302E3238344131382E3434362031382E3434362030203020312033392033326131392E342031392E342030203020312D342E39312031322E363536';
wwv_flow_api.g_varchar2_table(13) := '7A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E313420322E313441332E39373520332E393735203020';
wwv_flow_api.g_varchar2_table(14) := '3020312034332034302E3336347A222F3E3C2F673E3C7061746820643D224D33322031372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E383937203020302031203332';
wwv_flow_api.g_varchar2_table(15) := '2031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E332E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E';
wwv_flow_api.g_varchar2_table(16) := '33303120302030203020322E39353920372E3335377A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E31';
wwv_flow_api.g_varchar2_table(17) := '3420322E313441332E39373520332E3937352030203020312034332034302E3336347A222066696C6C3D222366636662666122206F7061636974793D222E34222F3E3C7061746820643D224D33372E3134322032344832362E3835384131382E34343620';
wwv_flow_api.g_varchar2_table(18) := '31382E3434362030203020302032352033326131392E342031392E3420302030203020342E39312031322E36353620312E30313420312E303134203020302030202E3736362E333434682E383234762D392E35612E352E35203020302031203120305634';
wwv_flow_api.g_varchar2_table(19) := '35682E38323461312E30313420312E303134203020302030202E3736362D2E3334344131392E342031392E342030203020302033392033326131382E3434362031382E3434362030203020302D312E3835382D387A4D333220333161322E3520322E3520';
wwv_flow_api.g_varchar2_table(20) := '302031203120322E352D322E3541322E35303320322E3530332030203020312033322033317A222066696C6C3D222366666622206F7061636974793D222E3935222F3E3C7061746820643D224D333220333061312E3520312E3520302031203120312E35';
wwv_flow_api.g_varchar2_table(21) := '2D312E3541312E35303220312E3530322030203020312033322033307A222066696C6C3D222366636662666122206F7061636974793D222E36222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(19873606511168629610)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234341353839443B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(19873607049110629612)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19873355040065629538)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19873355364850629538)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_JET'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19873355612030629538)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19873355988188629538)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19873356238838629538)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19873356575912629538)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19873356853845629538)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19873357132256629539)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(19873357475927629539)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/管理権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(19873608329235629614)
,p_name=>unistr('\7BA1\7406\6A29\9650')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\7BA1\7406\8005\3067\306F\3042\308A\307E\305B\3093')
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(19873611061679629618)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(19873611061679629618)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19873611480919629618)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/自治体コード
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(9400140739805894)
,p_lov_name=>unistr('\81EA\6CBB\4F53\30B3\30FC\30C9')
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'C19_LOCAL_GOV_CODES'
,p_return_column_name=>'LOCAL_GOV_CODE'
,p_display_column_name=>'LOCAL_GOV_CODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'LOCAL_GOV_CODE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(9400798929807856)
,p_query_column_name=>'LOCAL_GOV_CODE'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(9401154784807857)
,p_query_column_name=>'PREF_NAME'
,p_heading=>'Pref Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(9401543796807857)
,p_query_column_name=>'CITY_NAME'
,p_heading=>'City Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(19873609069563629615)
,p_group_name=>unistr('\7BA1\7406')
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(19873358034481629539)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19873358295066629539)
,p_short_name=>unistr('\30DB\30FC\30E0')
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(19873358832114629540)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim t-PageTemplate--leftCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main class="t-Body-mainContent" id="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873359103797629540)
,p_page_template_id=>wwv_flow_api.id(19873358832114629540)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873359436336629541)
,p_page_template_id=>wwv_flow_api.id(19873358832114629540)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873359704040629541)
,p_page_template_id=>wwv_flow_api.id(19873358832114629540)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873360100373629541)
,p_page_template_id=>wwv_flow_api.id(19873358832114629540)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873360317838629541)
,p_page_template_id=>wwv_flow_api.id(19873358832114629540)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873360666415629541)
,p_page_template_id=>wwv_flow_api.id(19873358832114629540)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873360904232629541)
,p_page_template_id=>wwv_flow_api.id(19873358832114629540)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873361212924629541)
,p_page_template_id=>wwv_flow_api.id(19873358832114629540)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(19873361629022629541)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim t-PageTemplate--leftRightCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873361954461629542)
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873362280437629542)
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873362575438629542)
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873362876786629542)
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873363122289629542)
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873363444595629542)
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873363769361629542)
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873364082449629543)
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873364390129629543)
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(19873364751487629543)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login t-PageTemplate--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873365009472629543)
,p_page_template_id=>wwv_flow_api.id(19873364751487629543)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873365303002629543)
,p_page_template_id=>wwv_flow_api.id(19873364751487629543)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873365633729629543)
,p_page_template_id=>wwv_flow_api.id(19873364751487629543)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(19873367055188629544)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim t-PageTemplate--marquee #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873367376161629544)
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873367641124629544)
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873367922366629544)
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873368205099629545)
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873368563359629545)
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873368830020629545)
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873369104607629545)
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873369445999629545)
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873369765741629545)
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(19873370173387629545)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav t-PageTemplate--minimal" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873370418468629546)
,p_page_template_id=>wwv_flow_api.id(19873370173387629545)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873370770918629546)
,p_page_template_id=>wwv_flow_api.id(19873370173387629545)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873371055340629546)
,p_page_template_id=>wwv_flow_api.id(19873370173387629545)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873371371179629546)
,p_page_template_id=>wwv_flow_api.id(19873370173387629545)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873371664967629546)
,p_page_template_id=>wwv_flow_api.id(19873370173387629545)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873371959737629546)
,p_page_template_id=>wwv_flow_api.id(19873370173387629545)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873372235607629546)
,p_page_template_id=>wwv_flow_api.id(19873370173387629545)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(19873372658766629546)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard t-PageTemplate--dialog #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873372957217629547)
,p_page_template_id=>wwv_flow_api.id(19873372658766629546)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873373228725629547)
,p_page_template_id=>wwv_flow_api.id(19873372658766629546)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873373533715629547)
,p_page_template_id=>wwv_flow_api.id(19873372658766629546)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(19873374148046629547)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim t-PageTemplate--rightSideCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873374468092629547)
,p_page_template_id=>wwv_flow_api.id(19873374148046629547)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873374769275629547)
,p_page_template_id=>wwv_flow_api.id(19873374148046629547)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873375021384629548)
,p_page_template_id=>wwv_flow_api.id(19873374148046629547)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873375323581629548)
,p_page_template_id=>wwv_flow_api.id(19873374148046629547)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873375636535629548)
,p_page_template_id=>wwv_flow_api.id(19873374148046629547)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873375976114629548)
,p_page_template_id=>wwv_flow_api.id(19873374148046629547)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873376276326629548)
,p_page_template_id=>wwv_flow_api.id(19873374148046629547)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873376533422629548)
,p_page_template_id=>wwv_flow_api.id(19873374148046629547)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(19873376938862629548)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873377231373629549)
,p_page_template_id=>wwv_flow_api.id(19873376938862629548)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873377541917629549)
,p_page_template_id=>wwv_flow_api.id(19873376938862629548)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873377894324629549)
,p_page_template_id=>wwv_flow_api.id(19873376938862629548)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873378167733629549)
,p_page_template_id=>wwv_flow_api.id(19873376938862629548)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873378442183629549)
,p_page_template_id=>wwv_flow_api.id(19873376938862629548)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873378750273629549)
,p_page_template_id=>wwv_flow_api.id(19873376938862629548)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873379037795629549)
,p_page_template_id=>wwv_flow_api.id(19873376938862629548)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(19873379480550629549)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard t-PageTemplate--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873379708670629549)
,p_page_template_id=>wwv_flow_api.id(19873379480550629549)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873380087114629550)
,p_page_template_id=>wwv_flow_api.id(19873379480550629549)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873380399088629550)
,p_page_template_id=>wwv_flow_api.id(19873379480550629549)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(19873580064820629592)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidde'
||'n="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSE'
||'S#" aria-hidden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(19873580783401629593)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(19873580828888629593)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873380959258629550)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873381211322629550)
,p_plug_template_id=>wwv_flow_api.id(19873380959258629550)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873384675534629552)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873384841290629552)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873385178874629552)
,p_plug_template_id=>wwv_flow_api.id(19873384841290629552)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873385462108629552)
,p_plug_template_id=>wwv_flow_api.id(19873384841290629552)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873385616828629552)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873385965602629552)
,p_plug_template_id=>wwv_flow_api.id(19873385616828629552)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873386277416629552)
,p_plug_template_id=>wwv_flow_api.id(19873385616828629552)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873387839028629553)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  #BODY##SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873388828122629554)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Region-header">',
'    <div class="t-Region-headerItems t-Region-headerItems--title">',
'      <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'    </div>',
'    <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
'  </div>',
'  <div role="region" aria-label="#TITLE#" class="t-Region-bodyWrap">',
'    <div class="t-Region-buttons t-Region-buttons--top">',
'      <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'      <div class="t-Region-buttons-right">#NEXT#</div>',
'    </div>',
'    <div class="t-Region-body">',
'      #BODY#',
'      <div class="t-Region-carouselRegions">#SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Region-buttons t-Region-buttons--bottom">',
'      <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'      <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873389131463629554)
,p_plug_template_id=>wwv_flow_api.id(19873388828122629554)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873389423271629554)
,p_plug_template_id=>wwv_flow_api.id(19873388828122629554)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873396012003629556)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!HTML#" class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873396356238629557)
,p_plug_template_id=>wwv_flow_api.id(19873396012003629556)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873396668489629557)
,p_plug_template_id=>wwv_flow_api.id(19873396012003629556)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873403408212629559)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873405889685629560)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title" data-apex-heading>#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873406128458629560)
,p_plug_template_id=>wwv_flow_api.id(19873405889685629560)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873508125504629561)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873508417334629562)
,p_plug_template_id=>wwv_flow_api.id(19873508125504629561)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873510452197629562)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873510761280629562)
,p_plug_template_id=>wwv_flow_api.id(19873510452197629562)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873513795412629564)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873514378552629564)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873514601223629564)
,p_plug_template_id=>wwv_flow_api.id(19873514378552629564)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873515622980629564)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873515926428629565)
,p_plug_template_id=>wwv_flow_api.id(19873515622980629564)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873516209113629565)
,p_plug_template_id=>wwv_flow_api.id(19873515622980629564)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873522418353629567)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">#SUB_REGIONS#</div>',
'</div>'))
,p_sub_plug_template=>'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">#SUB_REGION#</div>'
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873522761448629567)
,p_plug_template_id=>wwv_flow_api.id(19873522418353629567)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873523054587629567)
,p_plug_template_id=>wwv_flow_api.id(19873522418353629567)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873525067610629568)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">#BODY#</div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText" data-apex-heading>#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(19873526275525629569)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title" data-apex-heading>#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">#BODY#</div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(19873526546280629569)
,p_plug_template_id=>wwv_flow_api.id(19873526275525629569)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873552582013629580)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873556564965629581)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873562134420629583)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873563732358629584)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873566581994629586)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873567526348629586)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873568136109629586)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873568565355629587)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'js-navCollapsed--hidden:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873570381438629587)
,p_list_template_current=>'<li class="t-Tabs-item is-active #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873571992887629588)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873573962793629589)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873574967388629590)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(19873576523345629590)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873527571217629569)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873527767098629569)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873531740766629571)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873537131931629573)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873538346028629574)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/contextual_info
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873541531919629575)
,p_row_template_name=>'Contextual Info'
,p_internal_name=>'CONTEXTUAL_INFO'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContextualInfo-item">',
'  <span class="t-ContextualInfo-label">#COLUMN_HEADER#</span>',
'  <span class="t-ContextualInfo-value">#COLUMN_VALUE#</span>',
'</div>'))
,p_row_template_before_rows=>' <div class="t-ContextualInfo #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_reference_id=>2114325881116323585
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873542508523629575)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873545558016629577)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873545723642629577)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(19873545723642629577)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873548314794629578)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873548756578629578)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19873550726573629579)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(19873577966560629591)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(19873578069232629591)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(19873578188119629591)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(19873578235668629591)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(19873578314423629591)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(19873579097741629592)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(19873579554972629592)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(19873582184528629593)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(19873582362871629593)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(19873582288443629593)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(19873583569210629594)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(19873376938862629548)
,p_default_dialog_template=>wwv_flow_api.id(19873372658766629546)
,p_error_template=>wwv_flow_api.id(19873364751487629543)
,p_printer_friendly_template=>wwv_flow_api.id(19873376938862629548)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(19873364751487629543)
,p_default_button_template=>wwv_flow_api.id(19873580783401629593)
,p_default_region_template=>wwv_flow_api.id(19873515622980629564)
,p_default_chart_template=>wwv_flow_api.id(19873515622980629564)
,p_default_form_template=>wwv_flow_api.id(19873515622980629564)
,p_default_reportr_template=>wwv_flow_api.id(19873515622980629564)
,p_default_tabform_template=>wwv_flow_api.id(19873515622980629564)
,p_default_wizard_template=>wwv_flow_api.id(19873515622980629564)
,p_default_menur_template=>wwv_flow_api.id(19873525067610629568)
,p_default_listr_template=>wwv_flow_api.id(19873515622980629564)
,p_default_irr_template=>wwv_flow_api.id(19873513795412629564)
,p_default_report_template=>wwv_flow_api.id(19873545723642629577)
,p_default_label_template=>wwv_flow_api.id(19873578235668629591)
,p_default_menu_template=>wwv_flow_api.id(19873582184528629593)
,p_default_calendar_template=>wwv_flow_api.id(19873582288443629593)
,p_default_list_template=>wwv_flow_api.id(19873562134420629583)
,p_default_nav_list_template=>wwv_flow_api.id(19873573962793629589)
,p_default_top_nav_list_temp=>wwv_flow_api.id(19873573962793629589)
,p_default_side_nav_list_temp=>wwv_flow_api.id(19873568565355629587)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(19873385616828629552)
,p_default_dialogr_template=>wwv_flow_api.id(19873384675534629552)
,p_default_option_label=>wwv_flow_api.id(19873578235668629591)
,p_default_required_label=>wwv_flow_api.id(19873579554972629592)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(19873568136109629586)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(19873582577932629594)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(19873582762635629594)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(19873582903378629594)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(19873583111959629594)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(19873583305686629594)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873365942100629543)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873366769001629544)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873381744286629551)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873382196621629551)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873382732864629551)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873383171451629551)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873386518189629553)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873386985934629553)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873389786640629554)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873390541387629554)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873391710656629555)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873392971314629555)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873393366489629555)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873395330858629556)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873400709036629558)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873401162489629559)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873401912950629559)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873403983010629560)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873404739418629560)
,p_theme_id=>42
,p_name=>'HEADING_FONT'
,p_display_name=>'Heading Font'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the font-family of the heading for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873405198218629560)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873406435044629561)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873407213088629561)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873509103583629562)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873511024708629563)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873514937017629564)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873523391584629567)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873523756010629568)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873524584404629568)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873526899287629569)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873528049329629570)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873528435642629570)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873530421817629571)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873532275097629571)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873534052250629572)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873534845747629572)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873536298070629573)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873537424865629573)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873538645925629574)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873539077131629574)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873539472819629574)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873539805148629574)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873540203167629574)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873540633208629575)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873541223907629575)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873541888059629575)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS'
,p_display_name=>'Display Items'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873542208994629575)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS'
,p_display_name=>'Display Labels'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873544295398629576)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873546087367629577)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873546681083629577)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873547090177629577)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873549097267629578)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873552840135629580)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873554026821629580)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873555278753629581)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873557057370629582)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873559081035629582)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873559686781629583)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873561022805629583)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873563233446629584)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873565401542629585)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873569240274629587)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873575229223629590)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873575801088629590)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873576853610629590)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873578581205629591)
,p_theme_id=>42
,p_name=>'REQUIRED_INDICATOR'
,p_display_name=>'Required Indicator'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873580230376629592)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873581254336629593)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873583702528629596)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873585158433629597)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873585548405629597)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873587127160629598)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873587516105629598)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873589101369629599)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873589537109629599)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873591128224629599)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873591555161629600)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873593133924629600)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873593525095629600)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873593912131629600)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873594311269629601)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873594771162629601)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873595192077629601)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873595586774629601)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873596926637629602)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873598331282629602)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873599337663629602)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873599781524629603)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873600101085629603)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873600509092629603)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Spacing'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873601376077629603)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873601985631629603)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873602387930629604)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873602753649629604)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873603149391629604)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873603967056629604)
,p_theme_id=>42
,p_name=>'CONTENT_PADDING'
,p_display_name=>'Content Padding'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the Content Body padding for the page.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19873604319248629604)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873361524277629541)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(19873358832114629540)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873364649333629543)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(19873361629022629541)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873366107450629544)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(19873364751487629543)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(19873365942100629543)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873366393240629544)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(19873364751487629543)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(19873365942100629543)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873366594900629544)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_api.id(19873364751487629543)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(19873365942100629543)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873366924500629544)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(19873364751487629543)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(19873366769001629544)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873370076906629545)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(19873367055188629544)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873372501036629546)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(19873370173387629545)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873373869053629547)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(19873372658766629546)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873374057616629547)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(19873372658766629546)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873376815779629548)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(19873374148046629547)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873379380589629549)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(19873376938862629548)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873380614891629550)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(19873379480550629549)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873380857491629550)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(19873379480550629549)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873381537759629551)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873381922592629551)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(19873381744286629551)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873382383985629551)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(19873382196621629551)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873382516712629551)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--removeHeading js-removeLandmark'
,p_group_id=>wwv_flow_api.id(19873382196621629551)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873382997676629551)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(19873382732864629551)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873383348115629551)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(19873383171451629551)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873383578771629551)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(19873381744286629551)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873383706180629551)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(19873382732864629551)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873383923431629551)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(19873381744286629551)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873384151570629552)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(19873382732864629551)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873384318149629552)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(19873381744286629551)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873384539292629552)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873380959258629550)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(19873383171451629551)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873386786476629553)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873385616828629552)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873387194311629553)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(19873385616828629552)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(19873386985934629553)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873387363309629553)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(19873385616828629552)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873387553789629553)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(19873385616828629552)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(19873386985934629553)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873387753942629553)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873385616828629552)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873388116837629553)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873387839028629553)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873388340224629553)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873387839028629553)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873388537130629554)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873387839028629553)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873388733005629554)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873387839028629553)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873389923147629554)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(19873389786640629554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873390130554629554)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(19873389786640629554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873390359046629554)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(19873389786640629554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873390738629629554)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873390915391629554)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873391194862629555)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873391336863629555)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(19873389786640629554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873391595615629555)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873391919726629555)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873392134452629555)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873392320169629555)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873392558602629555)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873392726037629555)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873393110445629555)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(19873392971314629555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873393523868629555)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(19873393366489629555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873393791826629556)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(19873392971314629555)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873393955379629556)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873394197414629556)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873394348053629556)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873394535305629556)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(19873393366489629555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873394749774629556)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873394969746629556)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873395151838629556)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873395560079629556)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(19873395330858629556)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873395713982629556)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(19873395330858629556)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873395920749629556)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873388828122629554)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873396925755629557)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873397172398629557)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873397301920629557)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873397554066629557)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873397758873629557)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873397988329629557)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873398105010629557)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873398385771629558)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873398517103629558)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873398797839629558)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873398996159629558)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873399178830629558)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873399377474629558)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873399556553629558)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873399756869629558)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873399993045629558)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873400119004629558)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873400317239629558)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873400518471629558)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873400924881629558)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(19873400709036629558)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873401328396629559)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(19873401162489629559)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873401589860629559)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(19873400709036629558)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873401761066629559)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(19873393366489629555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873402179497629559)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(19873401912950629559)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873402314559629559)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873402538299629559)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873402746906629559)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873402993357629559)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873403195607629559)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(19873393366489629555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873403337567629559)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873396012003629556)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873403726913629560)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873403408212629559)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873404192522629560)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873403408212629559)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(19873403983010629560)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873404306788629560)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873403408212629559)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(19873403983010629560)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873404586427629560)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Small'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873403408212629559)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(19873403983010629560)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873404911877629560)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873403408212629559)
,p_css_classes=>'t-ContentBlock--headingFontAlt'
,p_group_id=>wwv_flow_api.id(19873404739418629560)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873405398268629560)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873403408212629559)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(19873405198218629560)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873405570355629560)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873403408212629559)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(19873405198218629560)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873405786931629560)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873403408212629559)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873406632357629561)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873405889685629560)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(19873406435044629561)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873406856597629561)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873405889685629560)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873407009413629561)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873405889685629560)
,p_css_classes=>'t-HeroRegion--headingFontAlt'
,p_group_id=>wwv_flow_api.id(19873404739418629560)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873407446737629561)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873405889685629560)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(19873407213088629561)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873407633547629561)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873405889685629560)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(19873407213088629561)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873507859898629561)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873405889685629560)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873508031433629561)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873405889685629560)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873508795038629562)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873508125504629561)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873508903870629562)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873508125504629561)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873509345277629562)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873508125504629561)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(19873509103583629562)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873509581153629562)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873508125504629561)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(19873509103583629562)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873509765680629562)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873508125504629561)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873509980276629562)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(19873508125504629561)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873510189853629562)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873508125504629561)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873510382445629562)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873508125504629561)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(19873509103583629562)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873511219910629563)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(19873511024708629563)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873511435221629563)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(19873511024708629563)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873511628533629563)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873511816794629563)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(19873511024708629563)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873512021675629563)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(19873511024708629563)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873512213936629563)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873512416715629563)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(19873511024708629563)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873512630553629563)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(19873509103583629562)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873512883120629563)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(19873509103583629562)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873513016961629563)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(19873509103583629562)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873513262658629563)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873513443414629563)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873513677282629564)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873510452197629562)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(19873509103583629562)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873514025732629564)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873513795412629564)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873514279737629564)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873513795412629564)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873515189188629564)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873514378552629564)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(19873514937017629564)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873515335423629564)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873514378552629564)
,p_css_classes=>'t-Login-region--headerTitle js-removeLandmark'
,p_group_id=>wwv_flow_api.id(19873514937017629564)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873515582078629564)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873514378552629564)
,p_css_classes=>'t-Login-region--headerHidden js-removeLandmark'
,p_group_id=>wwv_flow_api.id(19873514937017629564)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873516511729629565)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873516751692629565)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873516944816629565)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873517101557629565)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(19873390541387629554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873517325560629565)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873517536886629565)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873517772718629565)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873517970004629565)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873518192259629565)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873518352289629566)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873518545061629566)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873518744441629566)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873518911230629566)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873519176726629566)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873519332878629566)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873519577200629566)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873519735121629566)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873519966226629566)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873520102320629566)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(19873391710656629555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873520351171629566)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_api.id(19873392971314629555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873520549608629566)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(19873393366489629555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873520778897629566)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(19873392971314629555)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873520968013629566)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873521151137629567)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873521370001629567)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873521541970629567)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(19873393366489629555)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873521727841629567)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873521919113629567)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873522198411629567)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873522352324629567)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(19873515622980629564)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(19873386518189629553)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873523539172629567)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873522418353629567)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(19873523391584629567)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873523998302629568)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873522418353629567)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(19873523756010629568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873524174630629568)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873522418353629567)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873524352264629568)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873522418353629567)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(19873523756010629568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873524777653629568)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873522418353629567)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(19873524584404629568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873524982283629568)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873522418353629567)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(19873524584404629568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873525321645629568)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873525067610629568)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(19873403983010629560)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873525507304629568)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873525067610629568)
,p_css_classes=>'t-BreadcrumbRegion--headingFontAlt'
,p_group_id=>wwv_flow_api.id(19873404739418629560)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873525774640629568)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873525067610629568)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873525909005629569)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(19873525067610629568)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(19873403983010629560)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873526185975629569)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873525067610629568)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873527017689629569)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(19873526275525629569)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(19873526899287629569)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873527257873629569)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873526275525629569)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(19873526899287629569)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873527405864629569)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(19873526275525629569)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873528278457629570)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(19873528049329629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873528614271629570)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873528846203629570)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(19873528049329629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873529070687629570)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873529214229629570)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(19873528049329629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873529433672629570)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873529608299629570)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873529829812629570)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(19873528049329629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873530037108629570)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(19873528049329629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873530245391629571)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873530643057629571)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(19873530421817629571)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873530815527629571)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873531099707629571)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873531240773629571)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873531461699629571)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(19873530421817629571)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873531611601629571)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873527767098629569)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873532016901629571)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873532410817629571)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(19873532275097629571)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873532622405629571)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873532898294629572)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(19873532275097629571)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873533091481629572)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873533255844629572)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(19873532275097629571)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873533469431629572)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873533673420629572)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(19873530421817629571)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873533859419629572)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(19873530421817629571)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873534203907629572)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(19873534052250629572)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873534407012629572)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(19873534052250629572)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873534698727629572)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(19873530421817629571)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873535009499629572)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(19873534845747629572)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873535254100629572)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(19873534845747629572)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873535487297629573)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873535621665629573)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(19873530421817629571)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873535832978629573)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873536005427629573)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(19873532275097629571)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873536421051629573)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(19873536298070629573)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873536616249629573)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(19873536298070629573)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873536845244629573)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873537030458629573)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873531740766629571)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873537636871629573)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873537131931629573)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(19873537424865629573)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873537882182629574)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873537131931629573)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(19873536298070629573)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873538098961629574)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873537131931629573)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(19873536298070629573)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873538225098629574)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873537131931629573)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(19873537424865629573)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873538845404629574)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(19873538346028629574)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(19873538645925629574)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873539223176629574)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(19873538346028629574)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(19873539077131629574)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873539659036629574)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(19873538346028629574)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(19873539472819629574)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873540085045629574)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873538346028629574)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(19873539805148629574)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873540480832629574)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(19873538346028629574)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(19873540203167629574)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873540855023629575)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873538346028629574)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(19873540633208629575)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873541041620629575)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(19873538346028629574)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(19873530421817629571)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873541486034629575)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873538346028629574)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(19873541223907629575)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873542030321629575)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(19873541531919629575)
,p_css_classes=>'t-ContextualInfo-item--stacked'
,p_group_id=>wwv_flow_api.id(19873541888059629575)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873542441856629575)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(19873541531919629575)
,p_css_classes=>'t-ContextualInfo-label--stacked'
,p_group_id=>wwv_flow_api.id(19873542208994629575)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873542871342629576)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873543022594629576)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873543282077629576)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873543435521629576)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873543671113629576)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873543869474629576)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(19873536298070629573)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873544076489629576)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(19873536298070629573)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873544461365629576)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(19873544295398629576)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873544664109629576)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873544884046629576)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873545064941629576)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873545268417629577)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873545413494629577)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(19873542508523629575)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873546256162629577)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873545723642629577)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(19873546087367629577)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873546434999629577)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873545723642629577)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(19873546087367629577)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873546801920629577)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873545723642629577)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(19873546681083629577)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873547266975629577)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873545723642629577)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(19873547090177629577)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873547401937629577)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873545723642629577)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(19873547090177629577)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873547630138629578)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(19873545723642629577)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(19873547090177629577)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873547810536629578)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873545723642629577)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(19873546681083629577)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873548046669629578)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873545723642629577)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873548231976629578)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873545723642629577)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(19873547090177629577)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873548624039629578)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(19873548314794629578)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(19873530421817629571)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873549253969629578)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873548756578629578)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873549414455629578)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873548756578629578)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873549660282629578)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873548756578629578)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873549850848629578)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873548756578629578)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873550007174629579)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873548756578629578)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873550272900629579)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(19873548756578629578)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873550441620629579)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(19873548756578629578)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873550643578629579)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(19873548756578629578)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873551084232629579)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(19873550726573629579)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873551284297629579)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873550726573629579)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873551482950629579)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873550726573629579)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873551648504629579)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(19873550726573629579)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873551869452629579)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(19873550726573629579)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(19873528435642629570)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873552058222629579)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(19873550726573629579)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873552237524629580)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(19873550726573629579)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873552427204629580)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(19873550726573629579)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(19873549097267629578)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873553063408629580)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873553277053629580)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873553453548629580)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873553637438629580)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873553837648629580)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873554203710629580)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873554441736629580)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873554691700629581)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873554819262629581)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873555070920629581)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873555401872629581)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(19873555278753629581)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873555646869629581)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(19873555278753629581)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873555896007629581)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(19873555278753629581)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873556068265629581)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873556254508629581)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(19873555278753629581)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873556480565629581)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(19873552582013629580)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(19873555278753629581)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873556899718629581)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873557264757629582)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(19873557057370629582)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873557412257629582)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873557658688629582)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(19873557057370629582)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873557843299629582)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873558008912629582)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(19873557057370629582)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873558252326629582)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873558401423629582)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873558664985629582)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873558892911629582)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873559287382629582)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(19873559081035629582)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873559438148629582)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873559856924629583)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(19873559686781629583)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873560082927629583)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(19873559686781629583)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873560219777629583)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873560464856629583)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873560689667629583)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873560891420629583)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(19873557057370629582)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873561264855629583)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(19873561022805629583)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873561421079629583)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(19873561022805629583)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873561648385629583)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(19873559081035629582)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873561823146629583)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873562036163629583)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873556564965629581)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873562449854629584)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873562134420629583)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873562693033629584)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873562134420629583)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873562876067629584)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873562134420629583)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873563018507629584)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873562134420629583)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873563470405629584)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873562134420629583)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(19873563233446629584)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873563601193629584)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873562134420629583)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(19873563233446629584)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873564024386629584)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873564280338629585)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873564435850629585)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873564646436629585)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873564826839629585)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873565066239629585)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(19873561022805629583)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873565274147629585)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(19873561022805629583)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873565615224629585)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(19873565401542629585)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873565801148629585)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873566067131629585)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873566285535629586)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873566403020629586)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(19873563732358629584)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873566879516629586)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(19873566581994629586)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873567054750629586)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873566581994629586)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873567283321629586)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(19873566581994629586)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873567497336629586)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873566581994629586)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873567845258629586)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873567526348629586)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873568030191629586)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873567526348629586)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873568447792629587)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873568136109629586)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873568881890629587)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(19873568565355629587)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873569077069629587)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873568565355629587)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873569451600629587)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873568565355629587)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(19873569240274629587)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873569675678629587)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873568565355629587)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(19873569240274629587)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873569827608629587)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873568565355629587)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873570004083629587)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873568565355629587)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873570268404629587)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873568565355629587)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873570637599629588)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873570381438629587)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(19873559686781629583)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873570851912629588)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(19873570381438629587)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873571001949629588)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873570381438629587)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(19873559686781629583)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873571221575629588)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873570381438629587)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(19873565401542629585)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873571429085629588)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873570381438629587)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873571634529629588)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873570381438629587)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(19873554026821629580)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873571825158629588)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(19873570381438629587)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(19873565401542629585)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873572253839629588)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873571992887629588)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873572408171629589)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873571992887629588)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873572679957629589)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873571992887629588)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873572826015629589)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(19873571992887629588)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873573059122629589)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(19873571992887629588)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873573215658629589)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(19873571992887629588)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873573497728629589)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873571992887629588)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873573606474629589)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873571992887629588)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873573826424629589)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(19873571992887629588)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_api.id(19873552840135629580)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873574211302629589)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(19873573962793629589)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873574410812629589)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(19873573962793629589)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873574658352629590)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(19873573962793629589)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873574833332629590)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(19873573962793629589)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873575414419629590)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(19873574967388629590)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(19873575229223629590)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873575678460629590)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(19873574967388629590)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(19873575229223629590)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873576024916629590)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873574967388629590)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(19873575801088629590)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873576285368629590)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873574967388629590)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(19873575801088629590)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873576411170629590)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873574967388629590)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(19873575801088629590)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873577043248629590)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873576523345629590)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(19873576853610629590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873577232278629591)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(19873576523345629590)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(19873576853610629590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873577453483629591)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(19873576523345629590)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(19873576853610629590)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873577691554629591)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(19873576523345629590)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873577897664629591)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(19873576523345629590)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873578758910629591)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_api.id(19873578314423629591)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_api.id(19873578581205629591)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873578981128629591)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_api.id(19873578314423629591)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_api.id(19873578581205629591)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873579259421629592)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_api.id(19873579097741629592)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_api.id(19873578581205629591)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873579408254629592)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_api.id(19873579097741629592)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_api.id(19873578581205629591)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873579739889629592)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_api.id(19873579554972629592)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_api.id(19873578581205629591)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873579983414629592)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_api.id(19873579554972629592)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_api.id(19873578581205629591)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873580412832629592)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(19873580064820629592)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(19873580230376629592)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873580622833629592)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(19873580064820629592)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(19873580230376629592)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873581008389629593)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(19873580828888629593)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873581475850629593)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(19873580828888629593)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(19873581254336629593)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873581677766629593)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(19873580828888629593)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(19873580230376629592)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873581874011629593)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(19873580828888629593)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(19873581254336629593)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873582057257629593)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(19873580828888629593)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(19873580230376629592)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873583958332629596)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_api.id(19873583702528629596)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873584161236629596)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_api.id(19873583702528629596)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873584331640629596)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_api.id(19873583702528629596)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873584578048629596)
,p_theme_id=>42
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_api.id(19873583702528629596)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873584758125629597)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_api.id(19873583702528629596)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873584939948629597)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_api.id(19873583702528629596)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873585361421629597)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(19873585158433629597)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873585792184629597)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(19873585548405629597)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873585992249629597)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(19873585158433629597)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873586181274629597)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(19873585548405629597)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873586321646629598)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(19873585158433629597)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873586529933629598)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(19873585548405629597)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873586794551629598)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(19873585158433629597)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873586980382629598)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(19873585548405629597)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873587330858629598)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(19873587127160629598)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873587793601629598)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(19873587516105629598)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873587908819629598)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(19873587127160629598)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873588109958629598)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(19873587516105629598)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873588316141629598)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(19873587127160629598)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873588577523629598)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(19873587516105629598)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873588784502629598)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(19873587127160629598)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873588957822629598)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(19873587516105629598)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873589326188629599)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(19873589101369629599)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873589784503629599)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(19873589537109629599)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873589973874629599)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(19873589101369629599)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873590178767629599)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(19873589537109629599)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873590332080629599)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(19873589101369629599)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873590505928629599)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(19873589537109629599)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873590755262629599)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(19873589101369629599)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873590984412629599)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(19873589537109629599)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873591392053629600)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(19873591128224629599)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873591751533629600)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(19873591555161629600)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873591962023629600)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(19873591128224629599)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873592194767629600)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(19873591555161629600)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873592301395629600)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(19873591128224629599)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873592583306629600)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(19873591555161629600)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873592758461629600)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(19873591128224629599)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873592936158629600)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(19873591555161629600)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873593353815629600)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(19873593133924629600)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873593709394629600)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(19873593525095629600)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873594127530629601)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(19873593912131629600)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873594534189629601)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(19873594311269629601)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873594904412629601)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(19873594771162629601)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873595334390629601)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(19873595192077629601)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873595787410629601)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(19873595586774629601)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873595937193629601)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(19873595586774629601)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873596186591629601)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(19873593525095629600)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873596361449629601)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(19873593912131629600)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873596598604629601)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(19873594311269629601)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873596730934629602)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(19873594771162629601)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873597142091629602)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(19873596926637629602)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873597371987629602)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(19873596926637629602)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873597561906629602)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(19873596926637629602)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873597789696629602)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(19873593133924629600)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873597988814629602)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(19873595586774629601)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873598143489629602)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(19873595192077629601)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873598518393629602)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(19873598331282629602)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873598775634629602)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(19873593133924629600)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873598953645629602)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(19873595192077629601)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873599187955629602)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(19873593133924629600)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873599594132629603)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(19873599337663629602)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873599915920629603)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(19873599781524629603)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873600307173629603)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(19873600101085629603)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873600706053629603)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'None'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(19873600509092629603)
,p_template_types=>'REGION'
,p_help_text=>'Removes spacing between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873600916981629603)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(19873600509092629603)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item spacing.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873601157463629603)
,p_theme_id=>42
,p_name=>'FORMSTANDARDPADDING'
,p_display_name=>'Standard'
,p_display_sequence=>5
,p_css_classes=>'t-Form--standardPadding'
,p_group_id=>wwv_flow_api.id(19873600509092629603)
,p_template_types=>'REGION'
,p_help_text=>'Uses the standard spacing between items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873601513931629603)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(19873601376077629603)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873601786084629603)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(19873599781524629603)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873602177164629603)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(19873601985631629603)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873602566406629604)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(19873602387930629604)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873602909308629604)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(19873602753649629604)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873603380228629604)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(19873603149391629604)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873603527948629604)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873603735995629604)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(19873601985631629603)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873604154842629604)
,p_theme_id=>42
,p_name=>'REMOVE_PADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>1
,p_css_classes=>'t-PageBody--noContentPadding'
,p_group_id=>wwv_flow_api.id(19873603967056629604)
,p_template_types=>'PAGE'
,p_help_text=>'Removes padding from the content region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19873604579715629604)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(19873604319248629604)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(19873608800255629615)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
end;
/
prompt --application/shared_components/automations/医療提供状況の同期
begin
wwv_flow_api.create_automation(
 p_id=>wwv_flow_api.id(6402886651851938)
,p_name=>unistr('\533B\7642\63D0\4F9B\72B6\6CC1\306E\540C\671F')
,p_static_id=>'syncdailysurvey'
,p_trigger_type=>'API'
,p_polling_status=>'DISABLED'
,p_result_type=>'ROWS'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_type=>'TABLE'
,p_query_table=>'C19_LOAD_TARGETS'
,p_include_rowid_column=>false
,p_pk_column_name=>'LOCAL_GOV_CODE'
,p_commit_each_row=>true
,p_error_handling_type=>'IGNORE'
);
wwv_flow_api.create_automation_action(
 p_id=>wwv_flow_api.id(6403196935851950)
,p_automation_id=>wwv_flow_api.id(6402886651851938)
,p_name=>unistr('\81EA\6CBB\4F53\3054\3068\306E\66F4\65B0')
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_parameters apex_exec.t_parameters;',
'    l_sync_id varchar2(200);',
'    l_message varchar2(4000);',
'    l_rows    number;',
'begin',
'    l_parameters.delete;',
'    apex_exec.add_parameter(',
'        p_parameters      => l_parameters,',
'        p_name            => ''localGovCode'',',
'        p_value           => :LOCAL_GOV_CODE );',
'    apex_exec.add_parameter(',
'        p_parameters      => l_parameters,',
'        p_name            => ''since'',',
'        p_value           => to_char(sysdate-1,''YYYYMMDD'') );',
unistr('    l_sync_id := ''\540C\671F -\3000\81EA\6CBB\4F53\30B3\30FC\30C9: '' || :LOCAL_GOV_CODE;'),
'    apex_rest_source_sync.dynamic_synchronize_data(',
'        p_module_static_id => ''covid19DailySurvey'',',
'        p_sync_static_id   => l_sync_id,',
'        p_sync_parameters  => l_parameters );',
unistr('    -- \5B9F\884C\7D50\679C\306E\30ED\30B0'),
'    select count(*) into l_rows from c19_medical_facility_statuses_int;',
'    l_message := ''Load data from REST data source, rows = '' || l_rows;',
'    apex_automation.log_info(l_message);',
'end;'))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_stop_execution_on_error=>true
);
wwv_flow_api.create_automation_action(
 p_id=>wwv_flow_api.id(8300224554963551)
,p_automation_id=>wwv_flow_api.id(6402886651851938)
,p_name=>unistr('\533B\7642\6A5F\95A2\306E\8FFD\52A0')
,p_execution_sequence=>20
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into c19_medical_facilities f',
'using',
'(',
'    select distinct',
'        facility_id, facility_code, zip_code',
unistr('        ,\3000facility_name, facility_addr,facility_tel, local_gov_code'),
unistr('        ,\3000longitude, latitude'),
'    from c19_medical_facility_statuses_int',
'    group by',
'        facility_id, facility_code, zip_code',
unistr('        ,\3000facility_name, facility_addr,\3000facility_tel, local_gov_code'),
unistr('        ,\3000longitude, latitude'),
') u',
'on (f.facility_id = u.facility_id)',
'when matched then',
'    update set',
unistr('        facility_code   \3000= u.facility_code'),
unistr('        ,\3000zip_code       = replace(u.zip_code,''\3012'')'),
unistr('        ,\3000facility_name  = u.facility_name'),
unistr('        ,\3000facility_addr  = u.facility_addr'),
unistr('        ,\3000facility_tel   = u.facility_tel'),
unistr('        ,\3000local_gov_code = u.local_gov_code'),
unistr('        ,\3000longitude      = u.longitude'),
unistr('        ,\3000latitude       = u.latitude'),
unistr('        ,\3000geometry       = sdo_geometry(2001, 4326, '),
'            sdo_point_type(u.longitude, u.latitude, null),',
'            null, null)',
'when not matched then',
'    insert (',
'        facility_id, facility_code, zip_code',
unistr('        ,\3000facility_name, facility_addr,\3000facility_tel, local_gov_code'),
unistr('        ,\3000longitude, latitude'),
unistr('        ,\3000geometry'),
'    )',
'    values (',
unistr('        u.facility_id, u.facility_code, replace(u.zip_code,''\3012'')'),
unistr('        ,\3000u.facility_name, u.facility_addr,\3000u.facility_tel, u.local_gov_code'),
unistr('        ,\3000u.longitude, u.latitude'),
unistr('        ,\3000sdo_geometry(2001, 4326, '),
'            sdo_point_type(u.longitude, u.latitude, null),',
'            null, null)',
'    )',
';',
unistr('-- \5B9F\884C\7D50\679C\306E\30ED\30B0'),
'apex_automation.log_info(''Update/Insert Medical Facilities, rows = '' || SQL%ROWCOUNT );',
''))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_stop_execution_on_error=>true
);
wwv_flow_api.create_automation_action(
 p_id=>wwv_flow_api.id(8400248649060877)
,p_automation_id=>wwv_flow_api.id(6402886651851938)
,p_name=>unistr('\8EE2\8A18')
,p_execution_sequence=>30
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into c19_medical_facility_statuses s',
'using (',
'    select',
'        i.facility_id, i.submit_date',
'        , t.facility_type_cd facility_type, a.ans_type_cd ans_type',
'    from c19_medical_facility_statuses_int i',
'        join c19_ans_types a on i.ans_type = a.ans_type',
'        join c19_facility_types t on i.facility_type = t.facility_type',
') u',
'on (s.facility_id = u.facility_id and s.facility_type = u.facility_type)',
'when matched then',
'    update set',
'        submit_date = u.submit_date',
'        , ans_type  = u.ans_type',
'when not matched then',
'    insert (',
'        facility_id, facility_type',
'        , submit_date, ans_type',
'    )',
'    values (',
'        u.facility_id, u.facility_type',
'        , u.submit_date, u.ans_type',
'    )',
';',
unistr('-- \5B9F\884C\7D50\679C\306E\30ED\30B0'),
'apex_automation.log_info(''Update/Insert Medical Facilities Statuses, rows = '' || SQL%ROWCOUNT );'))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_stop_execution_on_error=>true
);
end;
/
prompt --application/shared_components/security/authentications/application_expressアカウント
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(19873357787841629539)
,p_name=>unistr('Application Express\30A2\30AB\30A6\30F3\30C8')
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(19873605292777629606)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7')
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(19873358583124629540)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(19873568565355629587)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(19873604989628629605)
,p_nav_bar_list_template_id=>wwv_flow_api.id(19873568136109629586)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(19873605292777629606)
,p_name=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_step_title=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20210708012608'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(19873605292777629606)
,p_name=>unistr('\30DB\30FC\30E0')
,p_alias=>'HOME'
,p_step_title=>unistr('\533B\7642\63D0\4F9B\4F53\5236\306E\72B6\6CC1')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20210708012608'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19873616723376629624)
,p_plug_name=>unistr('\533B\7642\63D0\4F9B\4F53\5236\306E\72B6\6CC1')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(19873405889685629560)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(19873605292777629606)
,p_name=>unistr('\533B\7642\63D0\4F9B\72B6\6CC1\8A73\7D30')
,p_alias=>unistr('\533B\7642\63D0\4F9B\72B6\6CC1\8A73\7D30')
,p_step_title=>unistr('\533B\7642\63D0\4F9B\72B6\6CC1\8A73\7D30')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210713155345'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19884990123063278789)
,p_plug_name=>unistr('\533B\7642\63D0\4F9B\72B6\6CC1\8A73\7D30')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(19873513795412629564)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'C19_MEDICAL_FACILITY_STATUSES_V'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('\533B\7642\63D0\4F9B\72B6\6CC1\8A73\7D30')
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(19884990253231278789)
,p_name=>unistr('\533B\7642\63D0\4F9B\72B6\6CC1\8A73\7D30')
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>19879282552698090607
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19884991843005278792)
,p_db_column_name=>'LATITUDE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19884992604620278793)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580313527048788393)
,p_db_column_name=>'ANS_TYPE'
,p_display_order=>16
,p_column_identifier=>'O'
,p_column_label=>'Ans Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580313602021788394)
,p_db_column_name=>'ZIP_CODE'
,p_display_order=>26
,p_column_identifier=>'P'
,p_column_label=>'Zip Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580313769514788395)
,p_db_column_name=>'CITY_NAME'
,p_display_order=>36
,p_column_identifier=>'Q'
,p_column_label=>'City Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580313883464788396)
,p_db_column_name=>'PREF_NAME'
,p_display_order=>46
,p_column_identifier=>'R'
,p_column_label=>'Pref Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580313938665788397)
,p_db_column_name=>'FACILITY_ID'
,p_display_order=>56
,p_column_identifier=>'S'
,p_column_label=>'Facility Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580314092645788398)
,p_db_column_name=>'SUBMIT_DATE'
,p_display_order=>66
,p_column_identifier=>'T'
,p_column_label=>'Submit Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580314127635788399)
,p_db_column_name=>'FACILITY_TEL'
,p_display_order=>76
,p_column_identifier=>'U'
,p_column_label=>'Facility Tel'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580314255711788400)
,p_db_column_name=>'FACILITY_ADDR'
,p_display_order=>86
,p_column_identifier=>'V'
,p_column_label=>'Facility Addr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580314350583788401)
,p_db_column_name=>'FACILITY_CODE'
,p_display_order=>96
,p_column_identifier=>'W'
,p_column_label=>'Facility Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580314411584788402)
,p_db_column_name=>'FACILITY_NAME'
,p_display_order=>106
,p_column_identifier=>'X'
,p_column_label=>'Facility Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580314558726788403)
,p_db_column_name=>'FACILITY_TYPE'
,p_display_order=>116
,p_column_identifier=>'Y'
,p_column_label=>'Facility Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19580314712484788405)
,p_db_column_name=>'LOCAL_GOV_CODE'
,p_display_order=>126
,p_column_identifier=>'AA'
,p_column_label=>'Local Gov Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2906588387332510)
,p_db_column_name=>'GEOMETRY'
,p_display_order=>136
,p_column_identifier=>'AB'
,p_column_label=>'Geometry'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19885053073295820238)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'198793454'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LATITUDE:LONGITUDE:ANS_TYPE:ZIP_CODE:CITY_NAME:PREF_NAME:FACILITY_ID:SUBMIT_DATE:FACILITY_TEL:FACILITY_ADDR:FACILITY_CODE:FACILITY_NAME:FACILITY_TYPE:LOCAL_GOV_CODE:GEOMETRY'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(19873605292777629606)
,p_name=>unistr('\5BFE\8C61\81EA\6CBB\4F53\9078\629E')
,p_alias=>unistr('\5BFE\8C61\81EA\6CBB\4F53\9078\629E')
,p_step_title=>unistr('\5BFE\8C61\81EA\6CBB\4F53\9078\629E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210714124721'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9600940742811976)
,p_plug_name=>unistr('\5BFE\8C61\81EA\6CBB\4F53\9078\629E')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(19873513795412629564)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'C19_LOAD_TARGETS'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('\5BFE\8C61\81EA\6CBB\4F53\9078\629E')
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9602252660811983)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9602703743811983)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>unistr('\30A2\30AF\30B7\30E7\30F3')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9603766011811985)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9604721999812017)
,p_name=>'LOCAL_GOV_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCAL_GOV_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Local Gov Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>6
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(9400140739805894)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(9601432296811978)
,p_internal_uid=>9601432296811978
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(9601813707811980)
,p_interactive_grid_id=>wwv_flow_api.id(9601432296811978)
,p_static_id=>'96019'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(9602002090811981)
,p_report_id=>wwv_flow_api.id(9601813707811980)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(9603112574811984)
,p_view_id=>wwv_flow_api.id(9602002090811981)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(9602703743811983)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(9604187929811985)
,p_view_id=>wwv_flow_api.id(9602002090811981)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(9603766011811985)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(9605182934812017)
,p_view_id=>wwv_flow_api.id(9602002090811981)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(9604721999812017)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9605775555812018)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(9600940742811976)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\5BFE\8C61\81EA\6CBB\4F53\9078\629E - \5BFE\8A71\30B0\30EA\30C3\30C9\30FB\30C7\30FC\30BF\306E\4FDD\5B58')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(19873605292777629606)
,p_name=>unistr('\533B\7642\6A5F\95A2')
,p_alias=>unistr('\533B\7642\6A5F\95A2')
,p_step_title=>unistr('\533B\7642\6A5F\95A2')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19873358832114629540)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210713172145'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19933588200128579902)
,p_plug_name=>unistr('\30DE\30C3\30D7')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(19873384841290629552)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.zip_code, f.facility_name, f.facility_addr, f.geometry',
'    , m.ans_type ans_type_m, e.ans_type ans_type_e, h.ans_type ans_type_h',
'    , ',
'    case',
'        when m.ans_type = ''H'' or e.ans_type = ''H'' or h.ans_type = ''H'' then',
'            ''H''',
'        when m.ans_type = ''L'' or e.ans_type = ''L'' or h.ans_type = ''L'' then',
'            ''L''',
'        when m.ans_type = ''N'' or e.ans_type = ''N'' or h.ans_type = ''N'' then',
'            ''N''',
'        when m.ans_type = ''V'' or e.ans_type = ''V'' or h.ans_type = ''V'' then',
'            ''V''',
'        else',
'            ''X''',
'    end ans_type  ',
'from c19_medical_facilities f',
'    left outer join (',
'        select ans_type, facility_type, facility_id ',
'        from c19_medical_facility_statuses ',
'        where facility_type = ''M'') m',
'    on f.facility_id = m.facility_id',
'    left outer join (',
'        select ans_type, facility_type, facility_id ',
'        from c19_medical_facility_statuses ',
'        where facility_type = ''E'') e',
'    on f.facility_id = e.facility_id',
'    left outer join (',
'        select ans_type, facility_type, facility_id ',
'        from c19_medical_facility_statuses ',
'        where facility_type = ''H'') h',
'    on f.facility_id = h.facility_id'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_map_region(
 p_id=>wwv_flow_api.id(19933590181339579907)
,p_region_id=>wwv_flow_api.id(19933588200128579902)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_init_position_from_browser=>true
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP:BROWSER_LOCATION:CIRCLE_TOOL:DISTANCE_TOOL'
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(19933590672091579908)
,p_map_region_id=>wwv_flow_api.id(19933590181339579907)
,p_name=>unistr('\901A\5E38')
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_row_assignment_column=>'ANS_TYPE'
,p_row_assignment_value=>'N'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_fill_color=>'#00ff00'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>&FACILITY_NAME.</b>',
unistr('<br>\90F5\4FBF\756A\53F7: &ZIP_CODE.'),
unistr('<br>\4F4F\6240: &FACILITY_ADDR.'),
'<br>',
unistr('<table><tr><th>\533B\7642\533A\5206</th><th>\533B\7642\63D0\4F9B\72B6\6CC1</th></tr>'),
'{case ANS_TYPE_M/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5916\6765</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5916\6765</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5916\6765</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5916\6765</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5916\6765</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_E/}',
unistr('{when N/}<tr class="u-success-bg"><td>\6551\6025</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\6551\6025</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\6551\6025</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\6551\6025</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\6551\6025</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_H/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5165\9662</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5165\9662</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5165\9662</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5165\9662</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5165\9662</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'</table>'))
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(19580314942074788407)
,p_map_region_id=>wwv_flow_api.id(19933590181339579907)
,p_name=>unistr('\5236\9650')
,p_layer_type=>'POINT'
,p_display_sequence=>20
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_row_assignment_column=>'ANS_TYPE'
,p_row_assignment_value=>'L'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_fill_color=>'#ffff00'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>&FACILITY_NAME.</b>',
unistr('<br>\90F5\4FBF\756A\53F7: &ZIP_CODE.'),
unistr('<br>\4F4F\6240: &FACILITY_ADDR.'),
'<br>',
unistr('<table><tr><th>\533B\7642\533A\5206</th><th>\533B\7642\63D0\4F9B\72B6\6CC1</th></tr>'),
'{case ANS_TYPE_M/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5916\6765</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5916\6765</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5916\6765</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5916\6765</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5916\6765</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_E/}',
unistr('{when N/}<tr class="u-success-bg"><td>\6551\6025</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\6551\6025</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\6551\6025</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\6551\6025</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\6551\6025</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_H/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5165\9662</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5165\9662</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5165\9662</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5165\9662</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5165\9662</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'</table>'))
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(19580315020495788408)
,p_map_region_id=>wwv_flow_api.id(19933590181339579907)
,p_name=>unistr('\505C\6B62')
,p_layer_type=>'POINT'
,p_display_sequence=>30
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_row_assignment_column=>'ANS_TYPE'
,p_row_assignment_value=>'H'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_fill_color=>'#ff0000'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>&FACILITY_NAME.</b>',
unistr('<br>\90F5\4FBF\756A\53F7: &ZIP_CODE.'),
unistr('<br>\4F4F\6240: &FACILITY_ADDR.'),
'<br>',
unistr('<table><tr><th>\533B\7642\533A\5206</th><th>\533B\7642\63D0\4F9B\72B6\6CC1</th></tr>'),
'{case ANS_TYPE_M/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5916\6765</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5916\6765</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5916\6765</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5916\6765</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5916\6765</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_E/}',
unistr('{when N/}<tr class="u-success-bg"><td>\6551\6025</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\6551\6025</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\6551\6025</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\6551\6025</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\6551\6025</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_H/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5165\9662</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5165\9662</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5165\9662</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5165\9662</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5165\9662</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'</table>'))
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(19580315109112788409)
,p_map_region_id=>wwv_flow_api.id(19933590181339579907)
,p_name=>unistr('\8A2D\7F6E\306A\3057')
,p_layer_type=>'POINT'
,p_display_sequence=>40
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_row_assignment_column=>'ANS_TYPE'
,p_row_assignment_value=>'V'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_fill_color=>'#c0c0c0'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>&FACILITY_NAME.</b>',
unistr('<br>\90F5\4FBF\756A\53F7: &ZIP_CODE.'),
unistr('<br>\4F4F\6240: &FACILITY_ADDR.'),
'<br>',
unistr('<table><tr><th>\533B\7642\533A\5206</th><th>\533B\7642\63D0\4F9B\72B6\6CC1</th></tr>'),
'{case ANS_TYPE_M/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5916\6765</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5916\6765</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5916\6765</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5916\6765</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5916\6765</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_E/}',
unistr('{when N/}<tr class="u-success-bg"><td>\6551\6025</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\6551\6025</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\6551\6025</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\6551\6025</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\6551\6025</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_H/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5165\9662</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5165\9662</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5165\9662</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5165\9662</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5165\9662</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'</table>'))
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(19580315226859788410)
,p_map_region_id=>wwv_flow_api.id(19933590181339579907)
,p_name=>unistr('\672A\56DE\7B54')
,p_layer_type=>'POINT'
,p_display_sequence=>50
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_row_assignment_column=>'ANS_TYPE'
,p_row_assignment_value=>'X'
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_fill_color=>'#808080'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>&FACILITY_NAME.</b>',
unistr('<br>\90F5\4FBF\756A\53F7: &ZIP_CODE.'),
unistr('<br>\4F4F\6240: &FACILITY_ADDR.'),
'<br>',
unistr('<table><tr><th>\533B\7642\533A\5206</th><th>\533B\7642\63D0\4F9B\72B6\6CC1</th></tr>'),
'{case ANS_TYPE_M/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5916\6765</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5916\6765</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5916\6765</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5916\6765</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5916\6765</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_E/}',
unistr('{when N/}<tr class="u-success-bg"><td>\6551\6025</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\6551\6025</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\6551\6025</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\6551\6025</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\6551\6025</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'{case ANS_TYPE_H/}',
unistr('{when N/}<tr class="u-success-bg"><td>\5165\9662</td><td >\901A\5E38</td></tr>'),
unistr('{when L/}<tr class="u-warning-bg"><td>\5165\9662</td><td>\5236\9650</td></tr>'),
unistr('{when H/}<tr class="u-danger-bg"><td>\5165\9662</td><td>\505C\6B62</td></tr>'),
unistr('{when V/}<tr class="u-color-44-bg"><td>\5165\9662</td><td >\8A2D\7F6E\306A\3057</td></tr>'),
unistr('{when X/}<tr  class="u-color-45-bg"><td>\5165\9662</td><td>\672A\56DE\7B54</td></tr>'),
'{endcase/}',
'</table>'))
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19933588275960579902)
,p_plug_name=>unistr('\691C\7D22')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(19873515622980629564)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(19933588200128579902)
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_07=>'Y'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19933589075288579904)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(19873385616828629552)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19933589577690579906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19933589075288579904)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(19873580828888629593)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RR,4::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19933588730458579903)
,p_name=>'P4_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19933588275960579902)
,p_prompt=>unistr('\691C\7D22')
,p_source=>'ANS_TYPE,ZIP_CODE,CITY_NAME,PREF_NAME,FACILITY_ID,FACILITY_TEL,FACILITY_ADDR,FACILITY_CODE,FACILITY_NAME,FACILITY_TYPE,LOCAL_GOV_CODE,APEX$SYNC_STEP_STATIC_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(19873605292777629606)
,p_name=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
,p_alias=>'LOGIN'
,p_step_title=>unistr('\533B\7642\63D0\4F9B\4F53\5236\306E\72B6\6CC1 - \30B5\30A4\30F3\30A4\30F3')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19873364751487629543)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20210708012608'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19873609946037629617)
,p_plug_name=>unistr('\533B\7642\63D0\4F9B\4F53\5236\306E\72B6\6CC1')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(19873514378552629564)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19873614632419629621)
,p_plug_name=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
,p_parent_plug_id=>wwv_flow_api.id(19873609946037629617)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(19873384675534629552)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19873612710198629619)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19873609946037629617)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(19873580783401629593)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30B5\30A4\30F3\30A4\30F3')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19873610351237629617)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19873609946037629617)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_placeholder=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(19873577966560629591)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19873610751666629618)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19873609946037629617)
,p_prompt=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_placeholder=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(19873577966560629591)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19873611819324629619)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19873609946037629617)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(19873611061679629618)||'.'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(19873577966560629591)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('\3053\306E\30C1\30A7\30C3\30AF\30FB\30DC\30C3\30AF\30B9\3092\9078\629E\3059\308B\3068\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067\306F\3001"LOGIN_USERNAME_COOKIE"\3068\3044\3046\540D\524D\306E\6C38\7D9A\7684\306A\30D6\30E9\30A6\30B6cookie\306B\30E6\30FC\30B6\30FC\540D\304C\4FDD\5B58\3055\308C\307E\3059\3002'),
unistr('\6B21\56DE\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8\306B\30A2\30AF\30BB\30B9\3059\308B\3068\3001'),
unistr('\30E6\30FC\30B6\30FC\540D\30D5\30A3\30FC\30EB\30C9\306B\3053\306E\5024\304C\81EA\52D5\7684\306B\79FB\5165\3055\308C\307E\3059\3002'),
'</p>',
'<p>',
unistr('\3053\306E\30C1\30A7\30C3\30AF\30FB\30DC\30C3\30AF\30B9\306E\9078\629E\3092\89E3\9664\3057\3001\30E6\30FC\30B6\30FC\540D\304C\3059\3067\306Bcookie\306B\4FDD\5B58\3055\308C\3066\3044\308B\5834\5408\3001'),
unistr('\7A7A\306E\5024\3067\4E0A\66F8\3055\308C\307E\3059\3002'),
unistr('\30D6\30E9\30A6\30B6\306E\958B\767A\8005\30C4\30FC\30EB\3092\4F7F\7528\3057\3066\3001cookie\3092\5B8C\5168\306B\524A\9664\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002'),
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19873613521543629620)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Cookie\306E\30E6\30FC\30B6\30FC\540D\3092\8A2D\5B9A')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19873613155506629620)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19873614304274629620)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\30DA\30FC\30B8\30FB\30AD\30E3\30C3\30B7\30E5\306E\30AF\30EA\30A2')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19873613923825629620)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Cookie\306E\30E6\30FC\30B6\30FC\540D\3092\53D6\5F97')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(19948859811950165162)
);
end;
/
prompt --application/deployment/install/install_tables
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9100302875391619)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'tables'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE "C19_LOCAL_GOV_CODES" ',
'   (	"LOCAL_GOV_CODE" VARCHAR2(6), ',
'	"PREF_NAME" VARCHAR2(20) NOT NULL ENABLE, ',
'	"CITY_NAME" VARCHAR2(40) NOT NULL ENABLE, ',
'	 CONSTRAINT "C19_LOCAL_GOV_CODES_PK" PRIMARY KEY ("LOCAL_GOV_CODE")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "C19_MEDICAL_FACILITIES" ',
'   (	"FACILITY_ID" VARCHAR2(16), ',
'	"FACILITY_CODE" VARCHAR2(16), ',
'	"ZIP_CODE" VARCHAR2(8), ',
'	"FACILITY_NAME" VARCHAR2(255) NOT NULL ENABLE, ',
'	"FACILITY_ADDR" VARCHAR2(255) NOT NULL ENABLE, ',
'	"FACILITY_TEL" VARCHAR2(16), ',
'	"LOCAL_GOV_CODE" VARCHAR2(6) NOT NULL ENABLE, ',
'	"LONGITUDE" NUMBER, ',
'	"LATITUDE" NUMBER, ',
'	"GEOMETRY" "SDO_GEOMETRY", ',
'	 CONSTRAINT "C19_MEDICAL_FACILITIES_PK" PRIMARY KEY ("FACILITY_ID")',
'  USING INDEX  ENABLE',
'   ) ',
' VARRAY "GEOMETRY"."SDO_ELEM_INFO" STORE AS SECUREFILE LOB ',
' VARRAY "GEOMETRY"."SDO_ORDINATES" STORE AS SECUREFILE LOB ;',
'',
'CREATE TABLE "C19_ANS_TYPES" ',
'   (	"ANS_TYPE_CD" VARCHAR2(1), ',
'	"ANS_TYPE" VARCHAR2(16) NOT NULL ENABLE, ',
'	 CONSTRAINT "C19_ANS_TYPES_PK" PRIMARY KEY ("ANS_TYPE_CD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "C19_FACILITY_TYPES" ',
'   (	"FACILITY_TYPE_CD" VARCHAR2(1), ',
'	"FACILITY_TYPE" VARCHAR2(16) NOT NULL ENABLE, ',
'	 CONSTRAINT "C19_FACILITY_TYPES_PK" PRIMARY KEY ("FACILITY_TYPE_CD")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "C19_MEDICAL_FACILITY_STATUSES" ',
'   (	"ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP , ',
'	"ANS_TYPE" VARCHAR2(1), ',
'	"SUBMIT_DATE" DATE, ',
'	"FACILITY_TYPE" VARCHAR2(1), ',
'	"FACILITY_ID" VARCHAR2(16), ',
'	 CONSTRAINT "C19_MEDICAL_FACILI_ID_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "C19_MEDICAL_FACILITY_STATUSES_INT" ',
'   (	"ANS_TYPE" VARCHAR2(16), ',
'	"ZIP_CODE" VARCHAR2(12), ',
'	"CITY_NAME" VARCHAR2(40), ',
'	"LATITUDE" NUMBER, ',
'	"PREF_NAME" VARCHAR2(20), ',
'	"LONGITUDE" NUMBER, ',
'	"FACILITY_ID" VARCHAR2(16), ',
'	"SUBMIT_DATE" DATE, ',
'	"FACILITY_TEL" VARCHAR2(16), ',
'	"FACILITY_ADDR" VARCHAR2(255), ',
'	"FACILITY_CODE" VARCHAR2(16), ',
'	"FACILITY_NAME" VARCHAR2(255), ',
'	"FACILITY_TYPE" VARCHAR2(16), ',
'	"LOCAL_GOV_CODE" VARCHAR2(6), ',
'	"APEX$SYNC_STEP_STATIC_ID" VARCHAR2(255), ',
'	"APEX$ROW_SYNC_TIMESTAMP" TIMESTAMP (6) WITH TIME ZONE, ',
'	 CONSTRAINT "C19_MEDICAL_FACILITY_STATUSES_INT_PK" PRIMARY KEY ("FACILITY_ID", "FACILITY_TYPE")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "C19_LOAD_TARGETS" ',
'   (	"LOCAL_GOV_CODE" VARCHAR2(6), ',
'	 PRIMARY KEY ("LOCAL_GOV_CODE")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'ALTER TABLE "C19_MEDICAL_FACILITIES" ADD CONSTRAINT "C19_MEDICAL_FACILITIES_FK" FOREIGN KEY ("LOCAL_GOV_CODE")',
'	  REFERENCES "C19_LOCAL_GOV_CODES" ("LOCAL_GOV_CODE") ENABLE;',
'',
'ALTER TABLE "C19_MEDICAL_FACILITY_STATUSES" ADD CONSTRAINT "C19_MEDICAL_FACILI_ANS_TYPE_FK" FOREIGN KEY ("ANS_TYPE")',
'	  REFERENCES "C19_ANS_TYPES" ("ANS_TYPE_CD") ON DELETE CASCADE ENABLE;',
'',
'ALTER TABLE "C19_MEDICAL_FACILITY_STATUSES" ADD CONSTRAINT "C19_MEDICAL_FAC_FACILITY_TY_FK" FOREIGN KEY ("FACILITY_TYPE")',
'	  REFERENCES "C19_FACILITY_TYPES" ("FACILITY_TYPE_CD") ON DELETE CASCADE ENABLE;',
'',
'ALTER TABLE "C19_MEDICAL_FACILITY_STATUSES" ADD CONSTRAINT "C19_MEDICAL_FAC_FACILITY_ID_FK" FOREIGN KEY ("FACILITY_ID")',
'	  REFERENCES "C19_MEDICAL_FACILITIES" ("FACILITY_ID") ON DELETE CASCADE ENABLE;',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(9100411634391632)
,p_script_id=>wwv_flow_api.id(9100302875391619)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'C19_ANS_TYPES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(9100637427391634)
,p_script_id=>wwv_flow_api.id(9100302875391619)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'C19_FACILITY_TYPES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(9101053737391634)
,p_script_id=>wwv_flow_api.id(9100302875391619)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'C19_LOAD_TARGETS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(9100846945391634)
,p_script_id=>wwv_flow_api.id(9100302875391619)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'C19_LOCAL_GOV_CODES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(9101206599391634)
,p_script_id=>wwv_flow_api.id(9100302875391619)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'C19_MEDICAL_FACILITIES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(9101415799391634)
,p_script_id=>wwv_flow_api.id(9100302875391619)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'C19_MEDICAL_FACILITY_STATUSES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(9101609385391634)
,p_script_id=>wwv_flow_api.id(9100302875391619)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'C19_MEDICAL_FACILITY_STATUSES_INT'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20210714113604','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_anstypes
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9101864646443839)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'anstypes'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into c19_ans_types(ans_type_cd, ans_type) values(''N'',''\901A\5E38'');'),
unistr('insert into c19_ans_types(ans_type_cd, ans_type) values(''L'',''\5236\9650'');'),
unistr('insert into c19_ans_types(ans_type_cd, ans_type) values(''H'',''\505C\6B62'');'),
unistr('insert into c19_ans_types(ans_type_cd, ans_type) values(''V'',''\8A2D\7F6E\306A\3057'');'),
unistr('insert into c19_ans_types(ans_type_cd, ans_type) values(''X'',''\672A\56DE\7B54'');'),
'commit;'))
);
end;
/
prompt --application/deployment/install/install_facilitytypes
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9102050055446899)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'facilitytypes'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into c19_facility_types(facility_type_cd, facility_type) values(''M'',''\5916\6765'');'),
unistr('insert into c19_facility_types(facility_type_cd, facility_type) values(''E'',''\6551\6025'');'),
unistr('insert into c19_facility_types(facility_type_cd, facility_type) values(''H'',''\5165\9662'');'),
'commit;'))
);
end;
/
prompt --application/deployment/install/install_localgovcodes1
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9200619849702332)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'localgovcodes1'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''215058'',''\5C90\961C\770C'',''\516B\767E\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222232'',''\9759\5CA1\770C'',''\5FA1\524D\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''223425'',''\9759\5CA1\770C'',''\9577\6CC9\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''224618'',''\9759\5CA1\770C'',''\68EE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''182028'',''\798F\4E95\770C'',''\6566\8CC0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''182044'',''\798F\4E95\770C'',''\5C0F\6D5C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202070'',''\9577\91CE\770C'',''\9808\5742\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202142'',''\9577\91CE\770C'',''\8305\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212041'',''\5C90\961C\770C'',''\591A\6CBB\898B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202029'',''\9577\91CE\770C'',''\677E\672C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192023'',''\5C71\68A8\770C'',''\5BCC\58EB\5409\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142077'',''\795E\5948\5DDD\770C'',''\8305\30F6\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142166'',''\795E\5948\5DDD\770C'',''\5EA7\9593\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''143219'',''\795E\5948\5DDD\770C'',''\5BD2\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''143669'',''\795E\5948\5DDD\770C'',''\958B\6210\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''144011'',''\795E\5948\5DDD\770C'',''\611B\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152048'',''\65B0\6F5F\770C'',''\4E09\6761\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152056'',''\65B0\6F5F\770C'',''\67CF\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172022'',''\77F3\5DDD\770C'',''\4E03\5C3E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152099'',''\65B0\6F5F\770C'',''\52A0\8302\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152111'',''\65B0\6F5F\770C'',''\898B\9644\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152161'',''\65B0\6F5F\770C'',''\7CF8\9B5A\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172049'',''\77F3\5DDD\770C'',''\8F2A\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172065'',''\77F3\5DDD\770C'',''\52A0\8CC0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172090'',''\77F3\5DDD\770C'',''\304B\307B\304F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''173614'',''\77F3\5DDD\770C'',''\6D25\5E61\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''153851'',''\65B0\6F5F\770C'',''\963F\8CC0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132217'',''\6771\4EAC\90FD'',''\6E05\702C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132241'',''\6771\4EAC\90FD'',''\591A\6469\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272141'',''\5927\962A\5E9C'',''\5BCC\7530\6797\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272248'',''\5927\962A\5E9C'',''\6442\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282031'',''\5175\5EAB\770C'',''\660E\77F3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''293431'',''\5948\826F\770C'',''\4E09\90F7\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''294012'',''\5948\826F\770C'',''\9AD8\53D6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292036'',''\5948\826F\770C'',''\5927\548C\90E1\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''303437'',''\548C\6B4C\5C71\770C'',''\4E5D\5EA6\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''302058'',''\548C\6B4C\5C71\770C'',''\5FA1\574A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282201'',''\5175\5EAB\770C'',''\52A0\897F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292095'',''\5948\826F\770C'',''\751F\99D2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272205'',''\5927\962A\5E9C'',''\7B95\9762\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''273619'',''\5927\962A\5E9C'',''\718A\53D6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''233021'',''\611B\77E5\770C'',''\6771\90F7\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''234257'',''\611B\77E5\770C'',''\87F9\6C5F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''234478'',''\611B\77E5\770C'',''\6B66\8C4A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''235016'',''\611B\77E5\770C'',''\5E78\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''243418'',''\4E09\91CD\770C'',''\83F0\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262102'',''\4EAC\90FD\5E9C'',''\516B\5E61\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262111'',''\4EAC\90FD\5E9C'',''\4EAC\7530\8FBA\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''264652'',''\4EAC\90FD\5E9C'',''\4E0E\8B1D\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''271004'',''\5927\962A\5E9C'',''\5927\962A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272043'',''\5927\962A\5E9C'',''\6C60\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272060'',''\5927\962A\5E9C'',''\6CC9\5927\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252018'',''\6ECB\8CC0\770C'',''\5927\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242039'',''\4E09\91CD\770C'',''\4F0A\52E2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252042'',''\6ECB\8CC0\770C'',''\8FD1\6C5F\516B\5E61\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232220'',''\611B\77E5\770C'',''\6771\6D77\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252085'',''\6ECB\8CC0\770C'',''\6817\6771\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252093'',''\6ECB\8CC0\770C'',''\7532\8CC0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232335'',''\611B\77E5\770C'',''\6E05\9808\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232351'',''\611B\77E5\770C'',''\5F25\5BCC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392014'',''\9AD8\77E5\770C'',''\9AD8\77E5\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''394246'',''\9AD8\77E5\770C'',''\5927\6708\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''393878'',''\9AD8\77E5\770C'',''\4EC1\6DC0\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402109'',''\798F\5CA1\770C'',''\516B\5973\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402184'',''\798F\5CA1\770C'',''\6625\65E5\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402257'',''\798F\5CA1\770C'',''\3046\304D\306F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382027'',''\611B\5A9B\770C'',''\4ECA\6CBB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''372072'',''\9999\5DDD\770C'',''\6771\304B\304C\308F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''384011'',''\611B\5A9B\770C'',''\677E\524D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''384887'',''\611B\5A9B\770C'',''\9B3C\5317\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''324493'',''\5CF6\6839\770C'',''\9091\5357\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''325015'',''\5CF6\6839\770C'',''\6D25\548C\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342084'',''\5E83\5CF6\770C'',''\5E9C\4E2D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342092'',''\5E83\5CF6\770C'',''\4E09\6B21\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342149'',''\5E83\5CF6\770C'',''\5B89\82B8\9AD8\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352101'',''\5C71\53E3\770C'',''\5149\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''362034'',''\5FB3\5CF6\770C'',''\5C0F\677E\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352136'',''\5C71\53E3\770C'',''\7F8E\7962\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''362085'',''\5FB3\5CF6\770C'',''\4E09\597D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352039'',''\5C71\53E3\770C'',''\5C71\53E3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''363871'',''\5FB3\5CF6\770C'',''\7F8E\6CE2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''364029'',''\5FB3\5CF6\770C'',''\5317\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''364037'',''\5FB3\5CF6\770C'',''\85CD\4F4F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''313025'',''\9CE5\53D6\770C'',''\5CA9\7F8E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332097'',''\5CA1\5C71\770C'',''\9AD8\6881\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332151'',''\5CA1\5C71\770C'',''\7F8E\4F5C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462039'',''\9E7F\5150\5CF6\770C'',''\9E7F\5C4B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462195'',''\9E7F\5150\5CF6\770C'',''\3044\3061\304D\4E32\6728\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472093'',''\6C96\7E04\770C'',''\540D\8B77\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462101'',''\9E7F\5150\5CF6\770C'',''\6307\5BBF\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472107'',''\6C96\7E04\770C'',''\7CF8\6E80\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473065'',''\6C96\7E04\770C'',''\4ECA\5E30\4EC1\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473618'',''\6C96\7E04\770C'',''\4E45\7C73\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462250'',''\9E7F\5150\5CF6\770C'',''\59F6\826F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''452084'',''\5BAE\5D0E\770C'',''\897F\90FD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''453412'',''\5BAE\5D0E\770C'',''\4E09\80A1\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''465259'',''\9E7F\5150\5CF6\770C'',''\702C\6238\5185\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''454303'',''\5BAE\5D0E\770C'',''\690E\8449\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''454419'',''\5BAE\5D0E\770C'',''\9AD8\5343\7A42\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422045'',''\9577\5D0E\770C'',''\8AEB\65E9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412023'',''\4F50\8CC0\770C'',''\5510\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432067'',''\718A\672C\770C'',''\7389\540D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''444626'',''\5927\5206\770C'',''\7396\73E0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''452017'',''\5BAE\5D0E\770C'',''\5BAE\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434035'',''\718A\672C\770C'',''\5927\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434825'',''\718A\672C\770C'',''\82A6\5317\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442046'',''\5927\5206\770C'',''\65E5\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442089'',''\5927\5206\770C'',''\7AF9\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403431'',''\798F\5CA1\770C'',''\5FD7\514D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''405035'',''\798F\5CA1\770C'',''\5927\5200\6D17\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412074'',''\4F50\8CC0\770C'',''\9E7F\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012157'',''\5317\6D77\9053'',''\7F8E\5504\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012319'',''\5317\6D77\9053'',''\6075\5EAD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013714'',''\5317\6D77\9053'',''\305B\305F\306A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015458'',''\5317\6D77\9053'',''\659C\91CC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015750'',''\5317\6D77\9053'',''\58EE\77A5\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016012'',''\5317\6D77\9053'',''\65E5\9AD8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016071'',''\5317\6D77\9053'',''\6D66\6CB3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''022063'',''\9752\68EE\770C'',''\5341\548C\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''024457'',''\9752\68EE\770C'',''\5357\90E8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032069'',''\5CA9\624B\770C'',''\5317\4E0A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032140'',''\5CA9\624B\770C'',''\516B\5E61\5E73\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042030'',''\5BAE\57CE\770C'',''\5869\7AC8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042072'',''\5BAE\57CE\770C'',''\540D\53D6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''034835'',''\5CA9\624B\770C'',''\5CA9\6CC9\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042161'',''\5BAE\57CE\770C'',''\5BCC\8C37\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''045055'',''\5BAE\57CE\770C'',''\7F8E\91CC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052108'',''\79CB\7530\770C'',''\7531\5229\672C\8358\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052116'',''\79CB\7530\770C'',''\6F5F\4E0A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072010'',''\798F\5CF6\770C'',''\798F\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''075451'',''\798F\5CF6\770C'',''\5927\718A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''075477'',''\798F\5CF6\770C'',''\6D6A\6C5F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''074837'',''\798F\5CF6\770C'',''\5859\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''075221'',''\798F\5CF6\770C'',''\5C0F\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082155'',''\8328\57CE\770C'',''\5317\8328\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082198'',''\8328\57CE\770C'',''\725B\4E45\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082317'',''\8328\57CE\770C'',''\685C\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082333'',''\8328\57CE\770C'',''\884C\65B9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122343'',''\5343\8449\770C'',''\5357\623F\7DCF\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131130'',''\6771\4EAC\90FD'',''\6E0B\8C37\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131164'',''\6771\4EAC\90FD'',''\8C4A\5CF6\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131181'',''\6771\4EAC\90FD'',''\8352\5DDD\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''123226'',''\5343\8449\770C'',''\9152\3005\4E95\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''124109'',''\5343\8449\770C'',''\6A2A\829D\5149\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131032'',''\6771\4EAC\90FD'',''\6E2F\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102121'',''\7FA4\99AC\770C'',''\307F\3069\308A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112101'',''\57FC\7389\770C'',''\52A0\9808\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112194'',''\57FC\7389\770C'',''\4E0A\5C3E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112283'',''\57FC\7389\770C'',''\5FD7\6728\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112402'',''\57FC\7389\770C'',''\5E78\624B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122025'',''\5343\8449\770C'',''\929A\5B50\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112437'',''\57FC\7389\770C'',''\5409\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122165'',''\5343\8449\770C'',''\7FD2\5FD7\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122050'',''\5343\8449\770C'',''\9928\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112020'',''\57FC\7389\770C'',''\718A\8C37\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092134'',''\6803\6728\770C'',''\90A3\9808\5869\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092151'',''\6803\6728\770C'',''\90A3\9808\70CF\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''093424'',''\6803\6728\770C'',''\76CA\5B50\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102075'',''\7FA4\99AC\770C'',''\9928\6797\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212148'',''\5C90\961C\770C'',''\53EF\5150\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212199'',''\5C90\961C\770C'',''\90E1\4E0A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''221309'',''\9759\5CA1\770C'',''\6D5C\677E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''214019'',''\5C90\961C\770C'',''\63D6\6590\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''214043'',''\5C90\961C\770C'',''\6C60\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''221007'',''\9759\5CA1\770C'',''\9759\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222101'',''\9759\5CA1\770C'',''\5BCC\58EB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''223026'',''\9759\5CA1\770C'',''\6CB3\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''223255'',''\9759\5CA1\770C'',''\51FD\5357\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232084'',''\611B\77E5\770C'',''\6D25\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192121'',''\5C71\68A8\770C'',''\4E0A\91CE\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202134'',''\9577\91CE\770C'',''\98EF\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''183229'',''\798F\4E95\770C'',''\6C38\5E73\5BFA\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''184233'',''\798F\4E95\770C'',''\8D8A\524D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142051'',''\795E\5948\5DDD\770C'',''\85E4\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142140'',''\795E\5948\5DDD\770C'',''\4F0A\52E2\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142107'',''\795E\5948\5DDD\770C'',''\4E09\6D66\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''151009'',''\65B0\6F5F\770C'',''\65B0\6F5F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''143626'',''\795E\5948\5DDD\770C'',''\5927\4E95\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152064'',''\65B0\6F5F\770C'',''\65B0\767A\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152129'',''\65B0\6F5F\770C'',''\6751\4E0A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172031'',''\77F3\5DDD\770C'',''\5C0F\677E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162051'',''\5BCC\5C71\770C'',''\6C37\898B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''182010'',''\798F\4E95\770C'',''\798F\4E95\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''153079'',''\65B0\6F5F\770C'',''\8056\7C60\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''154610'',''\65B0\6F5F\770C'',''\6E6F\6CA2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132276'',''\6771\4EAC\90FD'',''\7FBD\6751\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142042'',''\795E\5948\5DDD\770C'',''\938C\5009\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272272'',''\5927\962A\5E9C'',''\6771\5927\962A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282049'',''\5175\5EAB\770C'',''\897F\5BAE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282073'',''\5175\5EAB\770C'',''\4F0A\4E39\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292125'',''\5948\826F\770C'',''\5B87\9640\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''294241'',''\5948\826F\770C'',''\4E0A\7267\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''284432'',''\5175\5EAB\770C'',''\798F\5D0E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''284645'',''\5175\5EAB\770C'',''\592A\5B50\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''285862'',''\5175\5EAB\770C'',''\65B0\6E29\6CC9\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292010'',''\5948\826F\770C'',''\5948\826F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282171'',''\5175\5EAB\770C'',''\5DDD\897F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292028'',''\5948\826F\770C'',''\5927\548C\9AD8\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''303615'',''\548C\6B4C\5C71\770C'',''\6E6F\6D45\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282235'',''\5175\5EAB\770C'',''\4E39\6CE2\5E02'');'),
'commit;',
''))
);
end;
/
prompt --application/deployment/install/install_view
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9202140277744521)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'view'
,p_sequence=>45
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE FORCE VIEW "C19_MEDICAL_FACILITY_STATUSES_V" ("ANS_TYPE", "ZIP_CODE", "CITY_NAME", "LATITUDE", "PREF_NAME", "LONGITUDE", "FACILITY_ID", "SUBMIT_DATE", "FACILITY_TEL", "FACILITY_ADDR", "FACILITY_CODE", "FACILITY_NAME", "FACILITY_TYPE'
||'", "LOCAL_GOV_CODE", "GEOMETRY") AS ',
'  select ',
'    a.ans_type',
unistr('    , ''\3012'' || f.zip_code zip_code'),
'    , l.city_name',
'    , f.latitude',
'    , l.pref_name',
'    , f.longitude',
'    , f.facility_id',
'    , s.submit_date',
'    , f.facility_tel',
'    , f.facility_addr',
'    , f.facility_code',
'    , f.facility_name',
'    , t.facility_type',
'    , f.local_gov_code',
'    , f.geometry',
'from c19_medical_facility_statuses s',
'    join c19_medical_facilities f on s.facility_id = f.facility_id',
'    join c19_local_gov_codes l on f.local_gov_code = l.local_gov_code',
'    join c19_ans_types a on s.ans_type = a.ans_type_cd',
'    join c19_facility_types t on s.facility_type = t.facility_type_cd',
'',
';',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(9202215960744522)
,p_script_id=>wwv_flow_api.id(9202140277744521)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'C19_MEDICAL_FACILITY_STATUSES_V'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20210714123453','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20210714123453','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_localgovcodes2
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9200803831703728)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'localgovcodes2'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282251'',''\5175\5EAB\770C'',''\671D\6765\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''302091'',''\548C\6B4C\5C71\770C'',''\5CA9\51FA\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''273414'',''\5927\962A\5E9C'',''\5FE0\5CA1\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232360'',''\611B\77E5\770C'',''\307F\3088\3057\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''244619'',''\4E09\91CD\770C'',''\7389\57CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262030'',''\4EAC\90FD\5E9C'',''\7DBE\90E8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262056'',''\4EAC\90FD\5E9C'',''\5BAE\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262072'',''\4EAC\90FD\5E9C'',''\57CE\967D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''264075'',''\4EAC\90FD\5E9C'',''\4EAC\4E39\6CE2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272051'',''\5927\962A\5E9C'',''\5439\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''271403'',''\5927\962A\5E9C'',''\583A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''244724'',''\4E09\91CD\770C'',''\5357\4F0A\52E2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242021'',''\4E09\91CD\770C'',''\56DB\65E5\5E02\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232190'',''\611B\77E5\770C'',''\5C0F\7267\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242047'',''\4E09\91CD\770C'',''\677E\962A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232211'',''\611B\77E5\770C'',''\65B0\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252107'',''\6ECB\8CC0\770C'',''\91CE\6D32\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392120'',''\9AD8\77E5\770C'',''\9999\7F8E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''393444'',''\9AD8\77E5\770C'',''\5927\8C4A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402141'',''\798F\5CA1\770C'',''\8C4A\524D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402168'',''\798F\5CA1\770C'',''\5C0F\90E1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382060'',''\611B\5A9B\770C'',''\897F\6761\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392065'',''\9AD8\77E5\770C'',''\9808\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''325058'',''\5CF6\6839\770C'',''\5409\8CC0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''362018'',''\5FB3\5CF6\770C'',''\5FB3\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352110'',''\5C71\53E3\770C'',''\9577\9580\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352152'',''\5C71\53E3\770C'',''\5468\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352021'',''\5C71\53E3\770C'',''\5B87\90E8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''363014'',''\5FB3\5CF6\770C'',''\52DD\6D66\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''353051'',''\5C71\53E3\770C'',''\5468\9632\5927\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''363685'',''\5FB3\5CF6\770C'',''\90A3\8CC0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''363880'',''\5FB3\5CF6\770C'',''\6D77\967D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''312029'',''\9CE5\53D6\770C'',''\7C73\5B50\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''313289'',''\9CE5\53D6\770C'',''\667A\982D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''314021'',''\9CE5\53D6\770C'',''\65E5\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''334235'',''\5CA1\5C71\770C'',''\65E9\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462012'',''\9E7F\5150\5CF6\770C'',''\9E7F\5150\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472077'',''\6C96\7E04\770C'',''\77F3\57A3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462080'',''\9E7F\5150\5CF6\770C'',''\51FA\6C34\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473146'',''\6C96\7E04\770C'',''\91D1\6B66\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''452076'',''\5BAE\5D0E\770C'',''\4E32\9593\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''463922'',''\9E7F\5150\5CF6\770C'',''\3055\3064\307E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''453820'',''\5BAE\5D0E\770C'',''\56FD\5BCC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''454214'',''\5BAE\5D0E\770C'',''\9580\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''454427'',''\5BAE\5D0E\770C'',''\65E5\4E4B\5F71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''454435'',''\5BAE\5D0E\770C'',''\4E94\30F6\702C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432024'',''\718A\672C\770C'',''\516B\4EE3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''433691'',''\718A\672C\770C'',''\548C\6C34\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434442'',''\718A\672C\770C'',''\7532\4F50\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442011'',''\5927\5206\770C'',''\5927\5206\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403458'',''\798F\5CA1\770C'',''\65B0\5BAE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''404012'',''\798F\5CA1\770C'',''\5C0F\7AF9\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''404217'',''\798F\5CA1\770C'',''\6842\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''406058'',''\798F\5CA1\770C'',''\5DDD\5D0E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''406104'',''\798F\5CA1\770C'',''\798F\667A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422142'',''\9577\5D0E\770C'',''\5357\5CF6\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''423084'',''\9577\5D0E\770C'',''\6642\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''414239'',''\4F50\8CC0\770C'',''\5927\753A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012076'',''\5317\6D77\9053'',''\5E2F\5E83\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013340'',''\5317\6D77\9053'',''\6728\53E4\5185\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013455'',''\5317\6D77\9053'',''\68EE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012190'',''\5317\6D77\9053'',''\7D0B\5225\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012297'',''\5317\6D77\9053'',''\5BCC\826F\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016420'',''\5317\6D77\9053'',''\5E83\5C3E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016918'',''\5317\6D77\9053'',''\5225\6D77\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014362'',''\5317\6D77\9053'',''\96E8\7ADC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014681'',''\5317\6D77\9053'',''\4E0B\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014842'',''\5317\6D77\9053'',''\7FBD\5E4C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015113'',''\5317\6D77\9053'',''\733F\6255\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015148'',''\5317\6D77\9053'',''\679D\5E78\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015610'',''\5317\6D77\9053'',''\8208\90E8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016365'',''\5317\6D77\9053'',''\6E05\6C34\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''033219'',''\5CA9\624B\770C'',''\7D2B\6CE2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052027'',''\79CB\7530\770C'',''\80FD\4EE3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042129'',''\5BAE\57CE\770C'',''\767B\7C73\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''043214'',''\5BAE\57CE\770C'',''\5927\6CB3\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''043419'',''\5BAE\57CE\770C'',''\4E38\68EE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''044067'',''\5BAE\57CE\770C'',''\5229\5E9C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062065'',''\5C71\5F62\770C'',''\5BD2\6CB3\6C5F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062103'',''\5C71\5F62\770C'',''\5929\7AE5\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062138'',''\5C71\5F62\770C'',''\5357\967D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052132'',''\79CB\7530\770C'',''\5317\79CB\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062014'',''\5C71\5F62\770C'',''\5C71\5F62\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''063231'',''\5C71\5F62\770C'',''\671D\65E5\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''064025'',''\5C71\5F62\770C'',''\767D\9DF9\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072133'',''\798F\5CF6\770C'',''\4F0A\9054\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''074471'',''\798F\5CF6\770C'',''\4F1A\6D25\7F8E\91CC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''075035'',''\798F\5CF6\770C'',''\5E73\7530\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''075434'',''\798F\5CF6\770C'',''\5BCC\5CA1\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082031'',''\8328\57CE\770C'',''\571F\6D66\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082040'',''\8328\57CE\770C'',''\53E4\6CB3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082287'',''\8328\57CE\770C'',''\5742\6771\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082325'',''\8328\57CE\770C'',''\795E\6816\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082341'',''\8328\57CE\770C'',''\927E\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082368'',''\8328\57CE\770C'',''\5C0F\7F8E\7389\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''083640'',''\8328\57CE\770C'',''\5927\5B50\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''084433'',''\8328\57CE\770C'',''\963F\898B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122351'',''\5343\8449\770C'',''\531D\7473\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131148'',''\6771\4EAC\90FD'',''\4E2D\91CE\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132063'',''\6771\4EAC\90FD'',''\5E9C\4E2D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131211'',''\6771\4EAC\90FD'',''\8DB3\7ACB\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131237'',''\6771\4EAC\90FD'',''\6C5F\6238\5DDD\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132110'',''\6771\4EAC\90FD'',''\5C0F\5E73\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132144'',''\6771\4EAC\90FD'',''\56FD\5206\5BFA\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132152'',''\6771\4EAC\90FD'',''\56FD\7ACB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122211'',''\5343\8449\770C'',''\516B\5343\4EE3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''124419'',''\5343\8449\770C'',''\5927\591A\559C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122262'',''\5343\8449\770C'',''\5BCC\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112097'',''\57FC\7389\770C'',''\98EF\80FD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112127'',''\57FC\7389\770C'',''\6771\677E\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112216'',''\57FC\7389\770C'',''\8349\52A0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112259'',''\57FC\7389\770C'',''\5165\9593\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112429'',''\57FC\7389\770C'',''\65E5\9AD8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122033'',''\5343\8449\770C'',''\5E02\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122041'',''\5343\8449\770C'',''\8239\6A4B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113425'',''\57FC\7389\770C'',''\5D50\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122173'',''\5343\8449\770C'',''\67CF\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''114651'',''\57FC\7389\770C'',''\677E\4F0F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092037'',''\6803\6728\770C'',''\6803\6728\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''104248'',''\7FA4\99AC\770C'',''\9577\91CE\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092061'',''\6803\6728\770C'',''\65E5\5149\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102067'',''\7FA4\99AC\770C'',''\6CBC\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092169'',''\6803\6728\770C'',''\4E0B\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''093432'',''\6803\6728\770C'',''\8302\6728\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''093611'',''\6803\6728\770C'',''\58EC\751F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192104'',''\5C71\68A8\770C'',''\7532\6590\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202061'',''\9577\91CE\770C'',''\8ACF\8A2A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''213039'',''\5C90\961C\770C'',''\7B20\677E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''213616'',''\5C90\961C\770C'',''\5782\4E95\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222038'',''\9759\5CA1\770C'',''\6CBC\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''231002'',''\611B\77E5\770C'',''\540D\53E4\5C4B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222135'',''\9759\5CA1\770C'',''\639B\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232025'',''\611B\77E5\770C'',''\5CA1\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222160'',''\9759\5CA1\770C'',''\888B\4E95\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222194'',''\9759\5CA1\770C'',''\4E0B\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232114'',''\611B\77E5\770C'',''\8C4A\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''182052'',''\798F\4E95\770C'',''\5927\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192147'',''\5C71\68A8\770C'',''\4E2D\592E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''193658'',''\5C71\68A8\770C'',''\8EAB\5EF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''182087'',''\798F\4E95\770C'',''\3042\308F\3089\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''182095'',''\798F\4E95\770C'',''\8D8A\524D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202118'',''\9577\91CE\770C'',''\4E2D\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202126'',''\9577\91CE\770C'',''\5927\753A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212032'',''\5C90\961C\770C'',''\9AD8\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''184811'',''\798F\4E95\770C'',''\9AD8\6D5C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212083'',''\5C90\961C\770C'',''\745E\6D6A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203092'',''\9577\91CE\770C'',''\4F50\4E45\7A42\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203505'',''\9577\91CE\770C'',''\9577\548C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203611'',''\9577\91CE\770C'',''\4E0B\8ACF\8A2A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''141003'',''\795E\5948\5DDD\770C'',''\6A2A\6D5C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''141305'',''\795E\5948\5DDD\770C'',''\5DDD\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142158'',''\795E\5948\5DDD\770C'',''\6D77\8001\540D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142123'',''\795E\5948\5DDD\770C'',''\539A\6728\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152137'',''\65B0\6F5F\770C'',''\71D5\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162060'',''\5BCC\5C71\770C'',''\6ED1\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172057'',''\77F3\5DDD\770C'',''\73E0\6D32\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162094'',''\5BCC\5C71\770C'',''\5C0F\77E2\90E8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152234'',''\65B0\6F5F\770C'',''\963F\8CC0\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142018'',''\795E\5948\5DDD\770C'',''\6A2A\9808\8CC0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132284'',''\6771\4EAC\90FD'',''\3042\304D\308B\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''133051'',''\6771\4EAC\90FD'',''\65E5\306E\51FA\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272159'',''\5927\962A\5E9C'',''\5BDD\5C4B\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272256'',''\5927\962A\5E9C'',''\9AD8\77F3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''281000'',''\5175\5EAB\770C'',''\795E\6238\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282065'',''\5175\5EAB\770C'',''\82A6\5C4B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282278'',''\5175\5EAB\770C'',''\5B8D\7C9F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282294'',''\5175\5EAB\770C'',''\305F\3064\306E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''294411'',''\5948\826F\770C'',''\5409\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''283819'',''\5175\5EAB\770C'',''\7A32\7F8E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''302023'',''\548C\6B4C\5C71\770C'',''\6D77\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''302031'',''\548C\6B4C\5C71\770C'',''\6A4B\672C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282189'',''\5175\5EAB\770C'',''\5C0F\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282197'',''\5175\5EAB\770C'',''\4E09\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''302082'',''\548C\6B4C\5C71\770C'',''\7D00\306E\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272116'',''\5927\962A\5E9C'',''\8328\6728\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272183'',''\5927\962A\5E9C'',''\5927\6771\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272299'',''\5927\962A\5E9C'',''\56DB\689D\7577\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232378'',''\611B\77E5\770C'',''\3042\307E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242144'',''\4E09\91CD\770C'',''\3044\306A\3079\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242152'',''\4E09\91CD\770C'',''\5FD7\6469\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''244431'',''\4E09\91CD\770C'',''\5927\53F0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252026'',''\6ECB\8CC0\770C'',''\5F66\6839\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232238'',''\611B\77E5\770C'',''\5927\5E9C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252077'',''\6ECB\8CC0\770C'',''\5B88\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242071'',''\4E09\91CD\770C'',''\9234\9E7F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232343'',''\611B\77E5\770C'',''\5317\540D\53E4\5C4B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''401005'',''\798F\5CA1\770C'',''\5317\4E5D\5DDE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''393860'',''\9AD8\77E5\770C'',''\3044\306E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402117'',''\798F\5CA1\770C'',''\7B51\5F8C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402125'',''\798F\5CA1\770C'',''\5927\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402052'',''\798F\5CA1\770C'',''\98EF\585A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''373877'',''\9999\5DDD\770C'',''\7DBE\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''331007'',''\5CA1\5C71\770C'',''\5CA1\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342157'',''\5E83\5CF6\770C'',''\6C5F\7530\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''343692'',''\5E83\5CF6\770C'',''\5317\5E83\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352012'',''\5C71\53E3\770C'',''\4E0B\95A2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''362042'',''\5FB3\5CF6\770C'',''\963F\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''363413'',''\5FB3\5CF6\770C'',''\77F3\4E95\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352047'',''\5C71\53E3\770C'',''\8429\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352063'',''\5C71\53E3\770C'',''\9632\5E9C\5E02'');'),
'commit;',
''))
);
end;
/
prompt --application/deployment/install/install_localgovcodes3
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9201042375704914)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'localgovcodes3'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''364053'',''\5FB3\5CF6\770C'',''\4E0A\677F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332089'',''\5CA1\5C71\770C'',''\7DCF\793E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''313645'',''\9CE5\53D6\770C'',''\4E09\671D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''313904'',''\9CE5\53D6\770C'',''\4F2F\8006\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''314013'',''\9CE5\53D6\770C'',''\65E5\5357\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''322016'',''\5CF6\6839\770C'',''\677E\6C5F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332101'',''\5CA1\5C71\770C'',''\65B0\898B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332119'',''\5CA1\5C71\770C'',''\5099\524D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''322024'',''\5CF6\6839\770C'',''\6D5C\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''322041'',''\5CF6\6839\770C'',''\76CA\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472085'',''\6C96\7E04\770C'',''\6D66\6DFB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473278'',''\6C96\7E04\770C'',''\5317\4E2D\57CE\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''452050'',''\5BAE\5D0E\770C'',''\5C0F\6797\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''464520'',''\9E7F\5150\5CF6\770C'',''\6E67\6C34\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''454010'',''\5BAE\5D0E\770C'',''\9AD8\934B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''464929'',''\9E7F\5150\5CF6\770C'',''\809D\4ED8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''465054'',''\9E7F\5150\5CF6\770C'',''\5C4B\4E45\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''465291'',''\9E7F\5150\5CF6\770C'',''\559C\754C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''414247'',''\4F50\8CC0\770C'',''\6C5F\5317\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432130'',''\718A\672C\770C'',''\5B87\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434043'',''\718A\672C\770C'',''\83CA\967D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434248'',''\718A\672C\770C'',''\5C0F\56FD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434426'',''\718A\672C\770C'',''\5609\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434434'',''\718A\672C\770C'',''\76CA\57CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442071'',''\5927\5206\770C'',''\6D25\4E45\898B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422070'',''\9577\5D0E\770C'',''\5E73\6238\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403482'',''\798F\5CA1\770C'',''\4E45\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403822'',''\798F\5CA1\770C'',''\6C34\5DFB\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412082'',''\4F50\8CC0\770C'',''\5C0F\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''406210'',''\798F\5CA1\770C'',''\82C5\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''413275'',''\4F50\8CC0\770C'',''\5409\91CE\30F6\91CC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012165'',''\5317\6D77\9053'',''\82A6\5225\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012084'',''\5317\6D77\9053'',''\5317\898B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012122'',''\5317\6D77\9053'',''\7559\840C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013471'',''\5317\6D77\9053'',''\9577\4E07\90E8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013617'',''\5317\6D77\9053'',''\6C5F\5DEE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013633'',''\5317\6D77\9053'',''\539A\6CA2\90E8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013676'',''\5317\6D77\9053'',''\5965\5C3B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013943'',''\5317\6D77\9053'',''\862D\8D8A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012211'',''\5317\6D77\9053'',''\540D\5BC4\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016471'',''\5317\6D77\9053'',''\8DB3\5BC4\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016659'',''\5317\6D77\9053'',''\5F1F\5B50\5C48\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014249'',''\5317\6D77\9053'',''\5948\4E95\6C5F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014281'',''\5317\6D77\9053'',''\9577\6CBC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014290'',''\5317\6D77\9053'',''\6817\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014613'',''\5317\6D77\9053'',''\4E2D\5BCC\826F\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015504'',''\5317\6D77\9053'',''\7F6E\6238\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016314'',''\5317\6D77\9053'',''\97F3\66F4\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''022098'',''\9752\68EE\770C'',''\3064\304C\308B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''023612'',''\9752\68EE\770C'',''\85E4\5D0E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''024236'',''\9752\68EE\770C'',''\5927\9593\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032158'',''\5CA9\624B\770C'',''\5965\5DDE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032018'',''\5CA9\624B\770C'',''\76DB\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032107'',''\5CA9\624B\770C'',''\9678\524D\9AD8\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032131'',''\5CA9\624B\770C'',''\4E8C\6238\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''034827'',''\5CA9\624B\770C'',''\5C71\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042145'',''\5BAE\57CE\770C'',''\6771\677E\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''044211'',''\5BAE\57CE\770C'',''\5927\548C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062022'',''\5C71\5F62\770C'',''\7C73\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052078'',''\79CB\7530\770C'',''\6E6F\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052094'',''\79CB\7530\770C'',''\9E7F\89D2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''054631'',''\79CB\7530\770C'',''\7FBD\5F8C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''063649'',''\5C71\5F62\770C'',''\771F\5BA4\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082015'',''\8328\57CE\770C'',''\6C34\6238\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072117'',''\798F\5CF6\770C'',''\7530\6751\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''075213'',''\798F\5CF6\770C'',''\4E09\6625\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''075418'',''\798F\5CF6\770C'',''\5E83\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082058'',''\8328\57CE\770C'',''\77F3\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082104'',''\8328\57CE\770C'',''\4E0B\59BB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082112'',''\8328\57CE\770C'',''\5E38\7DCF\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092011'',''\6803\6728\770C'',''\5B87\90FD\5BAE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''083097'',''\8328\57CE\770C'',''\5927\6D17\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''083411'',''\8328\57CE\770C'',''\6771\6D77\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''084425'',''\8328\57CE\770C'',''\7F8E\6D66\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122360'',''\5343\8449\770C'',''\9999\53D6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122386'',''\5343\8449\770C'',''\3044\3059\307F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131199'',''\6771\4EAC\90FD'',''\677F\6A4B\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132047'',''\6771\4EAC\90FD'',''\4E09\9DF9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132187'',''\6771\4EAC\90FD'',''\798F\751F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''124095'',''\5343\8449\770C'',''\829D\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102016'',''\7FA4\99AC\770C'',''\524D\6A4B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''103454'',''\7FA4\99AC\770C'',''\5409\5CA1\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112160'',''\57FC\7389\770C'',''\7FBD\751F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112186'',''\57FC\7389\770C'',''\6DF1\8C37\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112356'',''\57FC\7389\770C'',''\5BCC\58EB\898B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113018'',''\57FC\7389\770C'',''\4F0A\5948\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113247'',''\57FC\7389\770C'',''\4E09\82B3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''104213'',''\7FA4\99AC\770C'',''\4E2D\4E4B\6761\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''105244'',''\7FA4\99AC\770C'',''\5927\6CC9\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092100'',''\6803\6728\770C'',''\5927\7530\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092118'',''\6803\6728\770C'',''\77E2\677F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212202'',''\5C90\961C\770C'',''\4E0B\5442\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''213411'',''\5C90\961C\770C'',''\990A\8001\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222119'',''\9759\5CA1\770C'',''\78D0\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222143'',''\9759\5CA1\770C'',''\85E4\679D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222216'',''\9759\5CA1\770C'',''\6E56\897F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222259'',''\9759\5CA1\770C'',''\4F0A\8C46\306E\56FD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232041'',''\611B\77E5\770C'',''\702C\6238\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''224243'',''\9759\5CA1\770C'',''\5409\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''193461'',''\5C71\68A8\770C'',''\5E02\5DDD\4E09\90F7\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212024'',''\5C90\961C\770C'',''\5927\57A3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212067'',''\5C90\961C\770C'',''\4E2D\6D25\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192015'',''\5C71\68A8\770C'',''\7532\5E9C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203033'',''\9577\91CE\770C'',''\5C0F\6D77\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203831'',''\9577\91CE\770C'',''\7B95\8F2A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''204021'',''\9577\91CE\770C'',''\677E\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''204323'',''\9577\91CE\770C'',''\6728\66FD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142069'',''\795E\5948\5DDD\770C'',''\5C0F\7530\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''143618'',''\795E\5948\5DDD\770C'',''\4E2D\4E95\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''143634'',''\795E\5948\5DDD\770C'',''\677E\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''143847'',''\795E\5948\5DDD\770C'',''\6E6F\6CB3\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172014'',''\77F3\5DDD\770C'',''\91D1\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152102'',''\65B0\6F5F\770C'',''\5341\65E5\753A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162043'',''\5BCC\5C71\770C'',''\9B5A\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162086'',''\5BCC\5C71\770C'',''\783A\6CE2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172103'',''\77F3\5DDD\770C'',''\767D\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152242'',''\65B0\6F5F\770C'',''\4F50\6E21\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152251'',''\65B0\6F5F\770C'',''\9B5A\6CBC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''173657'',''\77F3\5DDD\770C'',''\5185\7058\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''174637'',''\77F3\5DDD\770C'',''\80FD\767B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132195'',''\6771\4EAC\90FD'',''\72DB\6C5F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''133035'',''\6771\4EAC\90FD'',''\745E\7A42\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''133086'',''\6771\4EAC\90FD'',''\5965\591A\6469\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''134015'',''\6771\4EAC\90FD'',''\516B\4E08\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282022'',''\5175\5EAB\770C'',''\5C3C\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282286'',''\5175\5EAB\770C'',''\52A0\6771\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282103'',''\5175\5EAB\770C'',''\52A0\53E4\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''303810'',''\548C\6B4C\5C71\770C'',''\7F8E\6D5C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292052'',''\5948\826F\770C'',''\6A7F\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282243'',''\5175\5EAB\770C'',''\5357\3042\308F\3058\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292109'',''\5948\826F\770C'',''\9999\829D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''303046'',''\548C\6B4C\5C71\770C'',''\7D00\7F8E\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272175'',''\5927\962A\5E9C'',''\677E\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272124'',''\5927\962A\5E9C'',''\516B\5C3E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272132'',''\5927\962A\5E9C'',''\6CC9\4F50\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232386'',''\611B\77E5\770C'',''\9577\4E45\624B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242080'',''\4E09\91CD\770C'',''\540D\5F35\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242128'',''\4E09\91CD\770C'',''\718A\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252131'',''\6ECB\8CC0\770C'',''\6771\8FD1\6C5F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262081'',''\4EAC\90FD\5E9C'',''\5411\65E5\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262099'',''\4EAC\90FD\5E9C'',''\9577\5CA1\4EAC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''263222'',''\4EAC\90FD\5E9C'',''\4E45\5FA1\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272078'',''\5927\962A\5E9C'',''\9AD8\69FB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272086'',''\5927\962A\5E9C'',''\8C9D\585A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''245437'',''\4E09\91CD\770C'',''\7D00\5317\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232122'',''\611B\77E5\770C'',''\5B89\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232157'',''\611B\77E5\770C'',''\72AC\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252123'',''\6ECB\8CC0\770C'',''\9AD8\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''374067'',''\9999\5DDD\770C'',''\307E\3093\306E\3046\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''384020'',''\611B\5A9B\770C'',''\7825\90E8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''373419'',''\9999\5DDD\770C'',''\4E09\6728\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''373869'',''\9999\5DDD\770C'',''\5B87\591A\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''322091'',''\5CF6\6839\770C'',''\96F2\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''323861'',''\5CF6\6839\770C'',''\98EF\5357\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342050'',''\5E83\5CF6\770C'',''\5C3E\9053\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''362026'',''\5FB3\5CF6\770C'',''\9CF4\9580\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''362051'',''\5FB3\5CF6\770C'',''\5409\91CE\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332071'',''\5CA1\5C71\770C'',''\4E95\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''322067'',''\5CF6\6839\770C'',''\5B89\6765\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462233'',''\9E7F\5150\5CF6\770C'',''\5357\4E5D\5DDE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472115'',''\6C96\7E04\770C'',''\6C96\7E04\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472131'',''\6C96\7E04\770C'',''\3046\308B\307E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472158'',''\6C96\7E04\770C'',''\5357\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473081'',''\6C96\7E04\770C'',''\672C\90E8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473251'',''\6C96\7E04\770C'',''\5609\624B\7D0D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473286'',''\6C96\7E04\770C'',''\4E2D\57CE\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473294'',''\6C96\7E04\770C'',''\897F\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473481'',''\6C96\7E04\770C'',''\4E0E\90A3\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473502'',''\6C96\7E04\770C'',''\5357\98A8\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473626'',''\6C96\7E04\770C'',''\516B\91CD\702C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462161'',''\9E7F\5150\5CF6\770C'',''\65E5\7F6E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''453617'',''\5BAE\5D0E\770C'',''\9AD8\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''454061'',''\5BAE\5D0E\770C'',''\90FD\8FB2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''454311'',''\5BAE\5D0E\770C'',''\7F8E\90F7\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''465356'',''\9E7F\5150\5CF6\770C'',''\4E0E\8AD6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''431001'',''\718A\672C\770C'',''\718A\672C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432164'',''\718A\672C\770C'',''\5408\5FD7\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''433489'',''\718A\672C\770C'',''\7F8E\91CC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434477'',''\718A\672C\770C'',''\5C71\90FD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442038'',''\5927\5206\770C'',''\4E2D\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''435058'',''\718A\672C\770C'',''\591A\826F\6728\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442054'',''\5927\5206\770C'',''\4F50\4F2F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442127'',''\5927\5206\770C'',''\8C4A\5F8C\5927\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403831'',''\798F\5CA1\770C'',''\5CA1\57A3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412040'',''\4F50\8CC0\770C'',''\591A\4E45\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403849'',''\798F\5CA1\770C'',''\9060\8CC0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412066'',''\4F50\8CC0\770C'',''\6B66\96C4\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422118'',''\9577\5D0E\770C'',''\4E94\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412091'',''\4F50\8CC0\770C'',''\5B09\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''423912'',''\9577\5D0E\770C'',''\4F50\3005\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''011002'',''\5317\6D77\9053'',''\672D\5E4C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012068'',''\5317\6D77\9053'',''\91E7\8DEF\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013374'',''\5317\6D77\9053'',''\4E03\98EF\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013994'',''\5317\6D77\9053'',''\4EAC\6975\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012181'',''\5317\6D77\9053'',''\8D64\5E73\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012203'',''\5317\6D77\9053'',''\58EB\5225\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012220'',''\5317\6D77\9053'',''\4E09\7B20\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012289'',''\5317\6D77\9053'',''\6DF1\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016438'',''\5317\6D77\9053'',''\5E55\5225\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014231'',''\5317\6D77\9053'',''\5357\5E4C\753A'');'),
'commit;',
''))
);
end;
/
prompt --application/deployment/install/install_localgovcodes4
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9201279518706363)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'localgovcodes4'
,p_sequence=>70
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014532'',''\5317\6D77\9053'',''\6771\795E\697D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014591'',''\5317\6D77\9053'',''\7F8E\745B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015440'',''\5317\6D77\9053'',''\6D25\5225\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015644'',''\5317\6D77\9053'',''\5927\7A7A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015717'',''\5317\6D77\9053'',''\8C4A\6D66\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''022039'',''\9752\68EE\770C'',''\516B\6238\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''023019'',''\9752\68EE\770C'',''\5E73\5185\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''023213'',''\9752\68EE\770C'',''\9C3A\30F6\6CA2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''024121'',''\9752\68EE\770C'',''\304A\3044\3089\305B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016926'',''\5317\6D77\9053'',''\4E2D\6A19\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016934'',''\5317\6D77\9053'',''\6A19\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''022021'',''\9752\68EE\770C'',''\5F18\524D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''033227'',''\5CA9\624B\770C'',''\77E2\5DFE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032026'',''\5CA9\624B\770C'',''\5BAE\53E4\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''041009'',''\5BAE\57CE\770C'',''\4ED9\53F0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''033669'',''\5CA9\624B\770C'',''\897F\548C\8CC0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042153'',''\5BAE\57CE\770C'',''\5927\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062057'',''\5C71\5F62\770C'',''\65B0\5E84\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062073'',''\5C71\5F62\770C'',''\4E0A\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062111'',''\5C71\5F62\770C'',''\6771\6839\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062120'',''\5C71\5F62\770C'',''\5C3E\82B1\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052043'',''\79CB\7530\770C'',''\5927\9928\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052124'',''\79CB\7530\770C'',''\5927\4ED9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052159'',''\79CB\7530\770C'',''\4ED9\5317\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''053481'',''\79CB\7530\770C'',''\4E09\7A2E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''075469'',''\798F\5CF6\770C'',''\53CC\8449\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082023'',''\8328\57CE\770C'',''\65E5\7ACB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072052'',''\798F\5CF6\770C'',''\767D\6CB3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072095'',''\798F\5CF6\770C'',''\76F8\99AC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''073032'',''\798F\5CF6\770C'',''\56FD\898B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''074217'',''\798F\5CF6\770C'',''\4F1A\6D25\5742\4E0B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''074446'',''\798F\5CF6\770C'',''\4E09\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''074616'',''\798F\5CF6\770C'',''\897F\90F7\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082147'',''\8328\57CE\770C'',''\9AD8\8429\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082163'',''\8328\57CE\770C'',''\7B20\9593\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''085464'',''\8328\57CE\770C'',''\5883\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092029'',''\6803\6728\770C'',''\8DB3\5229\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082252'',''\8328\57CE\770C'',''\5E38\9678\5927\5BAE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082295'',''\8328\57CE\770C'',''\7A32\6577\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''085219'',''\8328\57CE\770C'',''\516B\5343\4EE3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122394'',''\5343\8449\770C'',''\5927\7DB2\767D\91CC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132012'',''\6771\4EAC\90FD'',''\516B\738B\5B50\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132136'',''\6771\4EAC\90FD'',''\6771\6751\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122220'',''\5343\8449\770C'',''\6211\5B6B\5B50\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122289'',''\5343\8449\770C'',''\56DB\8857\9053\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102105'',''\7FA4\99AC\770C'',''\5BCC\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112089'',''\57FC\7389\770C'',''\6240\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112178'',''\57FC\7389\770C'',''\9D3B\5DE3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112224'',''\57FC\7389\770C'',''\8D8A\8C37\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112275'',''\57FC\7389\770C'',''\671D\971E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112305'',''\57FC\7389\770C'',''\65B0\5EA7\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112372'',''\57FC\7389\770C'',''\4E09\90F7\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112399'',''\57FC\7389\770C'',''\5742\6238\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''121002'',''\5343\8449\770C'',''\5343\8449\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112461'',''\57FC\7389\770C'',''\767D\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122131'',''\5343\8449\770C'',''\6771\91D1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122190'',''\5343\8449\770C'',''\5E02\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102041'',''\7FA4\99AC\770C'',''\4F0A\52E2\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''093017'',''\6803\6728\770C'',''\4E0A\4E09\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''094111'',''\6803\6728\770C'',''\90A3\73C2\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192066'',''\5C71\68A8\770C'',''\5927\6708\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192074'',''\5C71\68A8\770C'',''\97EE\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192091'',''\5C71\68A8\770C'',''\5317\675C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212130'',''\5C90\961C\770C'',''\5404\52D9\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212156'',''\5C90\961C\770C'',''\5C71\770C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212172'',''\5C90\961C\770C'',''\98DB\9A28\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202053'',''\9577\91CE\770C'',''\98EF\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212211'',''\5C90\961C\770C'',''\6D77\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''213624'',''\5C90\961C\770C'',''\95A2\30B1\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''215210'',''\5C90\961C\770C'',''\5FA1\5D69\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222062'',''\9759\5CA1\770C'',''\4E09\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222097'',''\9759\5CA1\770C'',''\5CF6\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222151'',''\9759\5CA1\770C'',''\5FA1\6BBF\5834\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222241'',''\9759\5CA1\770C'',''\83CA\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222267'',''\9759\5CA1\770C'',''\7267\4E4B\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''223018'',''\9759\5CA1\770C'',''\6771\4F0A\8C46\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''223069'',''\9759\5CA1\770C'',''\897F\4F0A\8C46\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''223417'',''\9759\5CA1\770C'',''\6E05\6C34\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202096'',''\9577\91CE\770C'',''\4F0A\90A3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''193844'',''\5C71\68A8\770C'',''\662D\548C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202151'',''\9577\91CE\770C'',''\5869\5C3B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192040'',''\5C71\68A8\770C'',''\90FD\7559\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142085'',''\795E\5948\5DDD\770C'',''\9017\5B50\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162019'',''\5BCC\5C71\770C'',''\5BCC\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152081'',''\65B0\6F5F\770C'',''\5C0F\5343\8C37\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172073'',''\77F3\5DDD\770C'',''\7FBD\548B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162108'',''\5BCC\5C71\770C'',''\5357\783A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172120'',''\77F3\5DDD\770C'',''\91CE\3005\5E02\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152269'',''\65B0\6F5F\770C'',''\5357\9B5A\6CBC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162116'',''\5BCC\5C71\770C'',''\5C04\6C34\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''163422'',''\5BCC\5C71\770C'',''\5165\5584\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152277'',''\65B0\6F5F\770C'',''\80CE\5185\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132209'',''\6771\4EAC\90FD'',''\6771\5927\548C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142034'',''\795E\5948\5DDD\770C'',''\5E73\585A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272264'',''\5927\962A\5E9C'',''\85E4\4E95\5BFA\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282057'',''\5175\5EAB\770C'',''\6D32\672C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''294250'',''\5948\826F\770C'',''\738B\5BFA\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282081'',''\5175\5EAB\770C'',''\76F8\751F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282090'',''\5175\5EAB\770C'',''\8C4A\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''294420'',''\5948\826F\770C'',''\5927\6DC0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''284467'',''\5175\5EAB\770C'',''\795E\6CB3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''285854'',''\5175\5EAB\770C'',''\9999\7F8E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282146'',''\5175\5EAB\770C'',''\5B9D\585A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282154'',''\5175\5EAB\770C'',''\4E09\6728\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''302074'',''\548C\6B4C\5C71\770C'',''\65B0\5BAE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''304280'',''\548C\6B4C\5C71\770C'',''\4E32\672C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''273015'',''\5927\962A\5E9C'',''\5CF6\672C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272221'',''\5927\962A\5E9C'',''\7FBD\66F3\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''234451'',''\611B\77E5\770C'',''\5357\77E5\591A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242161'',''\4E09\91CD\770C'',''\4F0A\8CC0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''244422'',''\4E09\91CD\770C'',''\660E\548C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262013'',''\4EAC\90FD\5E9C'',''\798F\77E5\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262048'',''\4EAC\90FD\5E9C'',''\5B87\6CBB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232149'',''\611B\77E5\770C'',''\84B2\90E1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232165'',''\611B\77E5\770C'',''\5E38\6ED1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232203'',''\611B\77E5\770C'',''\7A32\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232246'',''\611B\77E5\770C'',''\77E5\591A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252115'',''\6ECB\8CC0\770C'',''\6E56\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232301'',''\611B\77E5\770C'',''\65E5\9032\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''374032'',''\9999\5DDD\770C'',''\7434\5E73\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392081'',''\9AD8\77E5\770C'',''\5BBF\6BDB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''394033'',''\9AD8\77E5\770C'',''\8D8A\77E5\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''393410'',''\9AD8\77E5\770C'',''\672C\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402192'',''\798F\5CA1\770C'',''\5927\91CE\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402214'',''\798F\5CA1\770C'',''\592A\5BB0\5E9C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402044'',''\798F\5CA1\770C'',''\76F4\65B9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402249'',''\798F\5CA1\770C'',''\798F\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403415'',''\798F\5CA1\770C'',''\5B87\7F8E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''372030'',''\9999\5DDD\770C'',''\5742\51FA\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382132'',''\611B\5A9B\770C'',''\56DB\56FD\4E2D\592E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''372048'',''\9999\5DDD\770C'',''\5584\901A\5BFA\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''372056'',''\9999\5DDD\770C'',''\89B3\97F3\5BFA\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''384224'',''\611B\5A9B\770C'',''\5185\5B50\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''385069'',''\611B\5A9B\770C'',''\611B\5357\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''373249'',''\9999\5DDD\770C'',''\5C0F\8C46\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''325287'',''\5CF6\6839\770C'',''\96A0\5C90\306E\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332038'',''\5CA1\5C71\770C'',''\6D25\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352080'',''\5C71\53E3\770C'',''\5CA9\56FD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352128'',''\5C71\53E3\770C'',''\67F3\4E95\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''363839'',''\5FB3\5CF6\770C'',''\725F\5C90\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''364045'',''\5FB3\5CF6\770C'',''\677F\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''334456'',''\5CA1\5C71\770C'',''\91CC\5E84\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''334618'',''\5CA1\5C71\770C'',''\77E2\639B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''322059'',''\5CF6\6839\770C'',''\5927\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472051'',''\6C96\7E04\770C'',''\5B9C\91CE\6E7E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462225'',''\9E7F\5150\5CF6\770C'',''\5944\7F8E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472140'',''\6C96\7E04\770C'',''\5BAE\53E4\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''452068'',''\5BAE\5D0E\770C'',''\65E5\5411\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462152'',''\9E7F\5150\5CF6\770C'',''\85A9\6469\5DDD\5185\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''465348'',''\9E7F\5150\5CF6\770C'',''\77E5\540D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422011'',''\9577\5D0E\770C'',''\9577\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432041'',''\718A\672C\770C'',''\8352\5C3E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432083'',''\718A\672C\770C'',''\5C71\9E7F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''433683'',''\718A\672C\770C'',''\9577\6D32\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''435317'',''\718A\672C\770C'',''\82D3\5317\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442119'',''\5927\5206\770C'',''\5B87\4F50\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403491'',''\798F\5CA1\770C'',''\7C95\5C4B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422100'',''\9577\5D0E\770C'',''\58F1\5C90\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''406040'',''\798F\5CA1\770C'',''\7CF8\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412104'',''\4F50\8CC0\770C'',''\795E\57FC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''423076'',''\9577\5D0E\770C'',''\9577\4E0E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''423220'',''\9577\5D0E\770C'',''\5DDD\68DA\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012025'',''\5317\6D77\9053'',''\51FD\9928\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012041'',''\5317\6D77\9053'',''\65ED\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012335'',''\5317\6D77\9053'',''\4F0A\9054\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013463'',''\5317\6D77\9053'',''\516B\96F2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016462'',''\5317\6D77\9053'',''\672C\5225\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014320'',''\5317\6D77\9053'',''\65B0\5341\6D25\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015130'',''\5317\6D77\9053'',''\4E2D\9813\5225\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015598'',''\5317\6D77\9053'',''\6E67\5225\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015849'',''\5317\6D77\9053'',''\6D1E\723A\6E56\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016021'',''\5317\6D77\9053'',''\5E73\53D6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016322'',''\5317\6D77\9053'',''\58EB\5E4C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016349'',''\5317\6D77\9053'',''\9E7F\8FFD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''023078'',''\9752\68EE\770C'',''\5916\30F6\6D5C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''024422'',''\9752\68EE\770C'',''\4E94\6238\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''033014'',''\5CA9\624B\770C'',''\96EB\77F3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032051'',''\5CA9\624B\770C'',''\82B1\5DFB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032115'',''\5CA9\624B\770C'',''\91DC\77F3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042099'',''\5BAE\57CE\770C'',''\591A\8CC0\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042111'',''\5BAE\57CE\770C'',''\5CA9\6CBC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''044016'',''\5BAE\57CE\770C'',''\677E\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''046060'',''\5BAE\57CE\770C'',''\5357\4E09\9678\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062049'',''\5C71\5F62\770C'',''\9152\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''063622'',''\5C71\5F62\770C'',''\6700\4E0A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072028'',''\798F\5CF6\770C'',''\4F1A\6D25\82E5\677E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''075612'',''\798F\5CF6\770C'',''\65B0\5730\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072079'',''\798F\5CF6\770C'',''\9808\8CC0\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072125'',''\798F\5CF6\770C'',''\5357\76F8\99AC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''073083'',''\798F\5CF6\770C'',''\5DDD\4FE3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082201'',''\8328\57CE\770C'',''\3064\304F\3070\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082210'',''\8328\57CE\770C'',''\3072\305F\3061\306A\304B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082261'',''\8328\57CE\770C'',''\90A3\73C2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131059'',''\6771\4EAC\90FD'',''\6587\4EAC\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122378'',''\5343\8449\770C'',''\5C71\6B66\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132055'',''\6771\4EAC\90FD'',''\9752\6885\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132128'',''\6771\4EAC\90FD'',''\65E5\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132039'',''\6771\4EAC\90FD'',''\6B66\8535\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''123471'',''\5343\8449\770C'',''\591A\53E4\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''123498'',''\5343\8449\770C'',''\6771\5E84\753A'');'),
'commit;',
''))
);
end;
/
prompt --application/deployment/install/install_localgovcodes5
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9201478460707867)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'localgovcodes5'
,p_sequence=>80
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131024'',''\6771\4EAC\90FD'',''\4E2D\592E\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131105'',''\6771\4EAC\90FD'',''\76EE\9ED2\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102024'',''\7FA4\99AC\770C'',''\9AD8\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112330'',''\57FC\7389\770C'',''\5317\672C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112348'',''\57FC\7389\770C'',''\516B\6F6E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112411'',''\57FC\7389\770C'',''\9DB4\30F6\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113654'',''\57FC\7389\770C'',''\5C0F\9E7F\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''114081'',''\57FC\7389\770C'',''\5BC4\5C45\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''103829'',''\7FA4\99AC\770C'',''\4E0B\4EC1\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''104264'',''\7FA4\99AC\770C'',''\8349\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''104493'',''\7FA4\99AC\770C'',''\307F\306A\304B\307F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092045'',''\6803\6728\770C'',''\4F50\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''105252'',''\7FA4\99AC\770C'',''\9091\697D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092142'',''\6803\6728\770C'',''\3055\304F\3089\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''093441'',''\6803\6728\770C'',''\5E02\8C9D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''093645'',''\6803\6728\770C'',''\91CE\6728\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192082'',''\5C71\68A8\770C'',''\5357\30A2\30EB\30D7\30B9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202037'',''\9577\91CE\770C'',''\4E0A\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''205907'',''\9577\91CE\770C'',''\98EF\7DB1\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192112'',''\5C71\68A8\770C'',''\7B1B\5439\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222054'',''\9759\5CA1\770C'',''\71B1\6D77\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222089'',''\9759\5CA1\770C'',''\4F0A\6771\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222208'',''\9759\5CA1\770C'',''\88FE\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232033'',''\611B\77E5\770C'',''\4E00\5BAE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232068'',''\611B\77E5\770C'',''\6625\65E5\4E95\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232106'',''\611B\77E5\770C'',''\5208\8C37\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''182061'',''\798F\4E95\770C'',''\52DD\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202100'',''\9577\91CE\770C'',''\99D2\30F6\6839\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''182109'',''\798F\4E95\770C'',''\5742\4E95\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''185019'',''\798F\4E95\770C'',''\82E5\72ED\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212059'',''\5C90\961C\770C'',''\95A2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212105'',''\5C90\961C\770C'',''\6075\90A3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203823'',''\9577\91CE\770C'',''\8FB0\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203858'',''\9577\91CE\770C'',''\5357\7B95\8F2A\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''141500'',''\795E\5948\5DDD\770C'',''\76F8\6A21\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''143014'',''\795E\5948\5DDD\770C'',''\8449\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''144029'',''\795E\5948\5DDD\770C'',''\6E05\5DDD\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152226'',''\65B0\6F5F\770C'',''\4E0A\8D8A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''163236'',''\5BCC\5C71\770C'',''\7ACB\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''174611'',''\77F3\5DDD\770C'',''\7A74\6C34\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132225'',''\6771\4EAC\90FD'',''\6771\4E45\7559\7C73\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272230'',''\5927\962A\5E9C'',''\9580\771F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272167'',''\5927\962A\5E9C'',''\6CB3\5185\9577\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''283827'',''\5175\5EAB\770C'',''\64AD\78E8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''285013'',''\5175\5EAB\770C'',''\4F50\7528\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282162'',''\5175\5EAB\770C'',''\9AD8\7802\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''304018'',''\548C\6B4C\5C71\770C'',''\767D\6D5C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''302066'',''\548C\6B4C\5C71\770C'',''\7530\8FBA\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282227'',''\5175\5EAB\770C'',''\990A\7236\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292061'',''\5948\826F\770C'',''\685C\4E95\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''312011'',''\9CE5\53D6\770C'',''\9CE5\53D6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272108'',''\5927\962A\5E9C'',''\679A\65B9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272213'',''\5927\962A\5E9C'',''\67CF\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''273660'',''\5927\962A\5E9C'',''\5CAC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242098'',''\4E09\91CD\770C'',''\5C3E\9DF2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242101'',''\4E09\91CD\770C'',''\4E80\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''253839'',''\6ECB\8CC0\770C'',''\65E5\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''243248'',''\4E09\91CD\770C'',''\6771\54E1\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262129'',''\4EAC\90FD\5E9C'',''\4EAC\4E39\5F8C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262145'',''\4EAC\90FD\5E9C'',''\6728\6D25\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272027'',''\5927\962A\5E9C'',''\5CB8\548C\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272035'',''\5927\962A\5E9C'',''\8C4A\4E2D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252069'',''\6ECB\8CC0\770C'',''\8349\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232271'',''\611B\77E5\770C'',''\9AD8\6D5C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232319'',''\611B\77E5\770C'',''\7530\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''374041'',''\9999\5DDD\770C'',''\591A\5EA6\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382043'',''\611B\5A9B\770C'',''\516B\5E61\6D5C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382051'',''\611B\5A9B\770C'',''\65B0\5C45\6D5C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392090'',''\9AD8\77E5\770C'',''\571F\4F50\6E05\6C34\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392103'',''\9AD8\77E5\770C'',''\56DB\4E07\5341\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''394050'',''\9AD8\77E5\770C'',''\68BC\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392111'',''\9AD8\77E5\770C'',''\9999\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''393070'',''\9AD8\77E5\770C'',''\82B8\897F\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''393631'',''\9AD8\77E5\770C'',''\571F\4F50\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''394025'',''\9AD8\77E5\770C'',''\4F50\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402133'',''\798F\5CA1\770C'',''\884C\6A4B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402273'',''\798F\5CA1\770C'',''\5609\9EBB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402303'',''\798F\5CA1\770C'',''\7CF8\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403423'',''\798F\5CA1\770C'',''\7BE0\6817\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012033'',''\5317\6D77\9053'',''\5C0F\6A3D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012131'',''\5317\6D77\9053'',''\82EB\5C0F\7267\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012173'',''\5317\6D77\9053'',''\6C5F\5225\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012106'',''\5317\6D77\9053'',''\5CA9\898B\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012114'',''\5317\6D77\9053'',''\7DB2\8D70\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012351'',''\5317\6D77\9053'',''\77F3\72E9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013641'',''\5317\6D77\9053'',''\4E59\90E8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012238'',''\5317\6D77\9053'',''\6839\5BA4\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014001'',''\5317\6D77\9053'',''\5036\77E5\5B89\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014028'',''\5317\6D77\9053'',''\5CA9\5185\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014303'',''\5317\6D77\9053'',''\6708\5F62\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014605'',''\5317\6D77\9053'',''\4E0A\5BCC\826F\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014877'',''\5317\6D77\9053'',''\5929\5869\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015555'',''\5317\6D77\9053'',''\9060\8EFD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016101'',''\5317\6D77\9053'',''\65B0\3072\3060\304B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016373'',''\5317\6D77\9053'',''\82BD\5BA4\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''024023'',''\9752\68EE\770C'',''\4E03\6238\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''024082'',''\9752\68EE\770C'',''\6771\5317\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''024414'',''\9752\68EE\770C'',''\4E09\6238\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032166'',''\5CA9\624B\770C'',''\6EDD\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032034'',''\5CA9\624B\770C'',''\5927\8239\6E21\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032077'',''\5CA9\624B\770C'',''\4E45\6148\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032093'',''\5CA9\624B\770C'',''\4E00\95A2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042021'',''\5BAE\57CE\770C'',''\77F3\5DFB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''043010'',''\5BAE\57CE\770C'',''\8535\738B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''043231'',''\5BAE\57CE\770C'',''\67F4\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''043249'',''\5BAE\57CE\770C'',''\5DDD\5D0E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''043621'',''\5BAE\57CE\770C'',''\5C71\5143\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062090'',''\5C71\5F62\770C'',''\9577\4E95\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052035'',''\79CB\7530\770C'',''\6A2A\624B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''063827'',''\5C71\5F62\770C'',''\5DDD\897F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''064289'',''\5C71\5F62\770C'',''\5E84\5185\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''073687'',''\798F\5CF6\770C'',''\5357\4F1A\6D25\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''074667'',''\798F\5CF6\770C'',''\77E2\5439\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082074'',''\8328\57CE\770C'',''\7D50\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122319'',''\5343\8449\770C'',''\5370\897F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122327'',''\5343\8449\770C'',''\767D\4E95\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131113'',''\6771\4EAC\90FD'',''\5927\7530\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131172'',''\6771\4EAC\90FD'',''\5317\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132071'',''\6771\4EAC\90FD'',''\662D\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132098'',''\6771\4EAC\90FD'',''\753A\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131229'',''\6771\4EAC\90FD'',''\845B\98FE\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132021'',''\6771\4EAC\90FD'',''\7ACB\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''123293'',''\5343\8449\770C'',''\6804\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''124265'',''\5343\8449\770C'',''\9577\67C4\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131083'',''\6771\4EAC\90FD'',''\6C5F\6771\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102091'',''\7FA4\99AC\770C'',''\85E4\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''111007'',''\57FC\7389\770C'',''\3055\3044\305F\307E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112011'',''\57FC\7389\770C'',''\5DDD\8D8A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112119'',''\57FC\7389\770C'',''\672C\5E84\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122122'',''\5343\8449\770C'',''\4F50\5009\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113263'',''\57FC\7389\770C'',''\6BDB\5442\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122157'',''\5343\8449\770C'',''\65ED\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113417'',''\57FC\7389\770C'',''\6ED1\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113433'',''\57FC\7389\770C'',''\5C0F\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122068'',''\5343\8449\770C'',''\6728\66F4\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''104299'',''\7FA4\99AC\770C'',''\6771\543E\59BB\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112038'',''\57FC\7389\770C'',''\5DDD\53E3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092096'',''\6803\6728\770C'',''\771F\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''094072'',''\6803\6728\770C'',''\90A3\9808\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222071'',''\9759\5CA1\770C'',''\5BCC\58EB\5BAE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222127'',''\9759\5CA1\770C'',''\713C\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''223042'',''\9759\5CA1\770C'',''\5357\4F0A\8C46\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''223441'',''\9759\5CA1\770C'',''\5C0F\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232092'',''\611B\77E5\770C'',''\78A7\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232050'',''\611B\77E5\770C'',''\534A\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''182079'',''\798F\4E95\770C'',''\9BD6\6C5F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192139'',''\5C71\68A8\770C'',''\7532\5DDE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''193682'',''\5C71\68A8\770C'',''\5BCC\58EB\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202088'',''\9577\91CE\770C'',''\5C0F\8AF8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''194301'',''\5C71\68A8\770C'',''\5BCC\58EB\6CB3\53E3\6E56\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202011'',''\9577\91CE\770C'',''\9577\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202177'',''\9577\91CE\770C'',''\4F50\4E45\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202185'',''\9577\91CE\770C'',''\5343\66F2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212091'',''\5C90\961C\770C'',''\7FBD\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''192058'',''\5C71\68A8\770C'',''\5C71\68A8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142115'',''\795E\5948\5DDD\770C'',''\79E6\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''143413'',''\795E\5948\5DDD\770C'',''\5927\78EF\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152170'',''\65B0\6F5F\770C'',''\5999\9AD8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''172111'',''\77F3\5DDD\770C'',''\80FD\7F8E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''163228'',''\5BCC\5C71\770C'',''\4E0A\5E02\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''173843'',''\77F3\5DDD\770C'',''\5FD7\8CC0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''173860'',''\77F3\5DDD\770C'',''\5B9D\9054\5FD7\6C34\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132233'',''\6771\4EAC\90FD'',''\6B66\8535\6751\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132250'',''\6771\4EAC\90FD'',''\7A32\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132292'',''\6771\4EAC\90FD'',''\897F\6771\4EAC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282014'',''\5175\5EAB\770C'',''\59EB\8DEF\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''293636'',''\5948\826F\770C'',''\7530\539F\672C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282120'',''\5175\5EAB\770C'',''\8D64\7A42\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''303666'',''\548C\6B4C\5C71\770C'',''\6709\7530\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''304212'',''\548C\6B4C\5C71\770C'',''\90A3\667A\52DD\6D66\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292044'',''\5948\826F\770C'',''\5929\7406\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292079'',''\5948\826F\770C'',''\4E94\689D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272191'',''\5927\962A\5E9C'',''\548C\6CC9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272302'',''\5927\962A\5E9C'',''\4EA4\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272329'',''\5927\962A\5E9C'',''\962A\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''233617'',''\611B\77E5\770C'',''\5927\53E3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''254410'',''\6ECB\8CC0\770C'',''\8C4A\90F7\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''234460'',''\611B\77E5\770C'',''\7F8E\6D5C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242012'',''\4E09\91CD\770C'',''\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262064'',''\4EAC\90FD\5E9C'',''\4E80\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272094'',''\5927\962A\5E9C'',''\5B88\53E3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''252034'',''\6ECB\8CC0\770C'',''\9577\6D5C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232173'',''\611B\77E5\770C'',''\6C5F\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''242055'',''\4E09\91CD\770C'',''\6851\540D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232297'',''\611B\77E5\770C'',''\8C4A\660E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382019'',''\611B\5A9B\770C'',''\677E\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''393037'',''\9AD8\77E5\770C'',''\7530\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''394017'',''\9AD8\77E5\770C'',''\4E2D\571F\4F50\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402150'',''\798F\5CA1\770C'',''\4E2D\9593\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402206'',''\798F\5CA1\770C'',''\5B97\50CF\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402281'',''\798F\5CA1\770C'',''\671D\5009\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402231'',''\798F\5CA1\770C'',''\53E4\8CC0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''372021'',''\9999\5DDD\770C'',''\4E38\4E80\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382108'',''\611B\5A9B\770C'',''\4F0A\4E88\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382141'',''\611B\5A9B\770C'',''\897F\4E88\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''372081'',''\9999\5DDD\770C'',''\4E09\8C4A\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''323438'',''\5CF6\6839\770C'',''\5965\51FA\96F2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''324418'',''\5CF6\6839\770C'',''\5DDD\672C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''336068'',''\5CA1\5C71\770C'',''\93E1\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''336815'',''\5CA1\5C71\770C'',''\5409\5099\4E2D\592E\753A'');'),
'commit;',
''))
);
end;
/
prompt --application/deployment/install/install_localgovcodes6
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9201616032709085)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'localgovcodes6'
,p_sequence=>90
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342041'',''\5E83\5CF6\770C'',''\4E09\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342106'',''\5E83\5CF6\770C'',''\5E84\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342114'',''\5E83\5CF6\770C'',''\5927\7AF9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342131'',''\5E83\5CF6\770C'',''\5EFF\65E5\5E02\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''343099'',''\5E83\5CF6\770C'',''\5742\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''343684'',''\5E83\5CF6\770C'',''\5B89\82B8\592A\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''345458'',''\5E83\5CF6\770C'',''\795E\77F3\9AD8\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''362069'',''\5FB3\5CF6\770C'',''\963F\6CE2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''362077'',''\5FB3\5CF6\770C'',''\7F8E\99AC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352161'',''\5C71\53E3\770C'',''\5C71\967D\5C0F\91CE\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''364011'',''\5FB3\5CF6\770C'',''\677E\8302\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''364681'',''\5FB3\5CF6\770C'',''\3064\308B\304E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332054'',''\5CA1\5C71\770C'',''\7B20\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332127'',''\5CA1\5C71\770C'',''\702C\6238\5185\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''333468'',''\5CA1\5C71\770C'',''\548C\6C17\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462047'',''\9E7F\5150\5CF6\770C'',''\6795\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473260'',''\6C96\7E04\770C'',''\5317\8C37\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462136'',''\9E7F\5150\5CF6\770C'',''\897F\4E4B\8868\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462144'',''\9E7F\5150\5CF6\770C'',''\5782\6C34\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462241'',''\9E7F\5150\5CF6\770C'',''\4F0A\4F50\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''452092'',''\5BAE\5D0E\770C'',''\3048\3073\306E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''414417'',''\4F50\8CC0\770C'',''\592A\826F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422037'',''\9577\5D0E\770C'',''\5CF6\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432105'',''\718A\672C\770C'',''\83CA\6C60\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432148'',''\718A\672C\770C'',''\963F\8607\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432156'',''\718A\672C\770C'',''\5929\8349\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434418'',''\718A\672C\770C'',''\5FA1\8239\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''452033'',''\5BAE\5D0E\770C'',''\5EF6\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''452041'',''\5BAE\5D0E\770C'',''\65E5\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422126'',''\9577\5D0E\770C'',''\897F\6D77\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422134'',''\9577\5D0E\770C'',''\96F2\4ED9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''414018'',''\4F50\8CC0\770C'',''\6709\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''423238'',''\9577\5D0E\770C'',''\6CE2\4F50\898B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''424111'',''\9577\5D0E\770C'',''\65B0\4E0A\4E94\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012050'',''\5317\6D77\9053'',''\5BA4\862D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013315'',''\5317\6D77\9053'',''\677E\524D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''013706'',''\5317\6D77\9053'',''\4ECA\91D1\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012254'',''\5317\6D77\9053'',''\6EDD\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012262'',''\5317\6D77\9053'',''\7802\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012301'',''\5317\6D77\9053'',''\767B\5225\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016641'',''\5317\6D77\9053'',''\6A19\8336\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016675'',''\5317\6D77\9053'',''\9DB4\5C45\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014087'',''\5317\6D77\9053'',''\4F59\5E02\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014699'',''\5317\6D77\9053'',''\7F8E\6DF1\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015121'',''\5317\6D77\9053'',''\6D5C\9813\5225\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015181'',''\5317\6D77\9053'',''\5229\5C3B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015431'',''\5317\6D77\9053'',''\7F8E\5E4C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015636'',''\5317\6D77\9053'',''\96C4\6B66\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015784'',''\5317\6D77\9053'',''\767D\8001\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015865'',''\5317\6D77\9053'',''\3080\304B\308F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''022047'',''\9752\68EE\770C'',''\9ED2\77F3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''033022'',''\5CA9\624B\770C'',''\845B\5DFB\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042056'',''\5BAE\57CE\770C'',''\6C17\4ED9\6CBC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''034614'',''\5CA9\624B\770C'',''\5927\69CC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''035017'',''\5CA9\624B\770C'',''\8EFD\7C73\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''035246'',''\5CA9\624B\770C'',''\4E00\6238\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042137'',''\5BAE\57CE\770C'',''\6817\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''062031'',''\5C71\5F62\770C'',''\9DB4\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''063223'',''\5C71\5F62\770C'',''\897F\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052141'',''\79CB\7530\770C'',''\306B\304B\307B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''053635'',''\79CB\7530\770C'',''\516B\90CE\6F5F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''063819'',''\5C71\5F62\770C'',''\9AD8\7560\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''064611'',''\5C71\5F62\770C'',''\904A\4F50\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072036'',''\798F\5CF6\770C'',''\90E1\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072087'',''\798F\5CF6\770C'',''\559C\591A\65B9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072141'',''\798F\5CF6\770C'',''\672C\5BAE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082121'',''\8328\57CE\770C'',''\5E38\9678\592A\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082228'',''\8328\57CE\770C'',''\9E7F\5D8B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''083020'',''\8328\57CE\770C'',''\8328\57CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''083101'',''\8328\57CE\770C'',''\57CE\91CC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122335'',''\5343\8449\770C'',''\5BCC\91CC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131041'',''\6771\4EAC\90FD'',''\65B0\5BBF\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132080'',''\6771\4EAC\90FD'',''\8ABF\5E03\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122238'',''\5343\8449\770C'',''\9D28\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''124630'',''\5343\8449\770C'',''\92F8\5357\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122246'',''\5343\8449\770C'',''\938C\30B1\8C37\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131091'',''\6771\4EAC\90FD'',''\54C1\5DDD\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122271'',''\5343\8449\770C'',''\6D66\5B89\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122301'',''\5343\8449\770C'',''\516B\8857\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102113'',''\7FA4\99AC\770C'',''\5B89\4E2D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112143'',''\57FC\7389\770C'',''\6625\65E5\90E8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112151'',''\57FC\7389\770C'',''\72ED\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112321'',''\57FC\7389\770C'',''\4E45\559C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122076'',''\5343\8449\770C'',''\677E\6238\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112381'',''\57FC\7389\770C'',''\84EE\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122084'',''\5343\8449\770C'',''\91CE\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112453'',''\57FC\7389\770C'',''\3075\3058\307F\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113468'',''\57FC\7389\770C'',''\5DDD\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113620'',''\57FC\7389\770C'',''\7686\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122181'',''\5343\8449\770C'',''\52DD\6D66\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''114642'',''\57FC\7389\770C'',''\6749\6238\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''104442'',''\7FA4\99AC\770C'',''\5DDD\5834\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092053'',''\6803\6728\770C'',''\9E7F\6CBC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''092088'',''\6803\6728\770C'',''\5C0F\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102059'',''\7FA4\99AC\770C'',''\592A\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''205419'',''\9577\91CE\770C'',''\5C0F\5E03\65BD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''205834'',''\9577\91CE\770C'',''\4FE1\6FC3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212016'',''\5C90\961C\770C'',''\5C90\961C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202045'',''\9577\91CE\770C'',''\5CA1\8C37\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402079'',''\798F\5CA1\770C'',''\67F3\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''372013'',''\9999\5DDD\770C'',''\9AD8\677E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382078'',''\611B\5A9B\770C'',''\5927\6D32\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382159'',''\611B\5A9B\770C'',''\6771\6E29\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''383864'',''\611B\5A9B\770C'',''\4E45\4E07\9AD8\539F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''372064'',''\9999\5DDD\770C'',''\3055\306C\304D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''336661'',''\5CA1\5C71\770C'',''\7F8E\54B2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342033'',''\5E83\5CF6\770C'',''\7AF9\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342076'',''\5E83\5CF6\770C'',''\798F\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342122'',''\5E83\5CF6\770C'',''\6771\5E83\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''343021'',''\5E83\5CF6\770C'',''\5E9C\4E2D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''343048'',''\5E83\5CF6\770C'',''\6D77\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''344621'',''\5E83\5CF6\770C'',''\4E16\7F85\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''353442'',''\5C71\53E3\770C'',''\5E73\751F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''364894'',''\5FB3\5CF6\770C'',''\6771\307F\3088\3057\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''312037'',''\9CE5\53D6\770C'',''\5009\5409\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''312045'',''\9CE5\53D6\770C'',''\5883\6E2F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''313891'',''\9CE5\53D6\770C'',''\5357\90E8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332143'',''\5CA1\5C71\770C'',''\771F\5EAD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''322032'',''\5CF6\6839\770C'',''\51FA\96F2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''322075'',''\5CF6\6839\770C'',''\6C5F\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462209'',''\9E7F\5150\5CF6\770C'',''\5357\3055\3064\307E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462217'',''\9E7F\5150\5CF6\770C'',''\5FD7\5E03\5FD7\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472018'',''\6C96\7E04\770C'',''\90A3\8987\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462063'',''\9E7F\5150\5CF6\770C'',''\963F\4E45\6839\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''472123'',''\6C96\7E04\770C'',''\8C4A\898B\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''473138'',''\6C96\7E04\770C'',''\5B9C\91CE\5EA7\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''454052'',''\5BAE\5D0E\770C'',''\5DDD\5357\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462187'',''\9E7F\5150\5CF6\770C'',''\9727\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412015'',''\4F50\8CC0\770C'',''\4F50\8CC0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432032'',''\718A\672C\770C'',''\4EBA\5409\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432121'',''\718A\672C\770C'',''\4E0A\5929\8349\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''443417'',''\5927\5206\770C'',''\65E5\51FA\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442020'',''\5927\5206\770C'',''\5225\5E9C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''435147'',''\718A\672C\770C'',''\3042\3055\304E\308A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''452025'',''\5BAE\5D0E\770C'',''\90FD\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442101'',''\5927\5206\770C'',''\6775\7BC9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442135'',''\5927\5206\770C'',''\7531\5E03\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442143'',''\5927\5206\770C'',''\56FD\6771\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412031'',''\4F50\8CC0\770C'',''\9CE5\6816\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403814'',''\798F\5CA1\770C'',''\82A6\5C4B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422088'',''\9577\5D0E\770C'',''\677E\6D66\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''404021'',''\798F\5CA1\770C'',''\978D\624B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''404471'',''\798F\5CA1\770C'',''\7B51\524D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''405221'',''\798F\5CA1\770C'',''\5927\6728\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''405442'',''\798F\5CA1\770C'',''\5E83\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''406023'',''\798F\5CA1\770C'',''\6DFB\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''406473'',''\798F\5CA1\770C'',''\7BC9\4E0A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''413411'',''\4F50\8CC0\770C'',''\57FA\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''413453'',''\4F50\8CC0\770C'',''\4E0A\5CF0\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''413461'',''\4F50\8CC0\770C'',''\307F\3084\304D\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012149'',''\5317\6D77\9053'',''\7A1A\5185\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012343'',''\5317\6D77\9053'',''\5317\5E83\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012246'',''\5317\6D77\9053'',''\5343\6B73\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''012271'',''\5317\6D77\9053'',''\6B4C\5FD7\5185\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016411'',''\5317\6D77\9053'',''\5927\6A39\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016446'',''\5317\6D77\9053'',''\6C60\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''016624'',''\5317\6D77\9053'',''\539A\5CB8\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014648'',''\5317\6D77\9053'',''\548C\5BD2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''014869'',''\5317\6D77\9053'',''\9060\5225\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015474'',''\5317\6D77\9053'',''\5C0F\6E05\6C34\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015601'',''\5317\6D77\9053'',''\6EDD\4E0A\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''015857'',''\5317\6D77\9053'',''\5B89\5E73\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''022055'',''\9752\68EE\770C'',''\4E94\6240\5DDD\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''022071'',''\9752\68EE\770C'',''\4E09\6CA2\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''022080'',''\9752\68EE\770C'',''\3080\3064\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''023621'',''\9752\68EE\770C'',''\5927\9C10\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''023817'',''\9752\68EE\770C'',''\677F\67F3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''024015'',''\9752\68EE\770C'',''\91CE\8FBA\5730\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''022012'',''\9752\68EE\770C'',''\9752\68EE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''032085'',''\5CA9\624B\770C'',''\9060\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042064'',''\5BAE\57CE\770C'',''\767D\77F3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''042081'',''\5BAE\57CE\770C'',''\89D2\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''035076'',''\5CA9\624B\770C'',''\6D0B\91CE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052019'',''\79CB\7530\770C'',''\79CB\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''044440'',''\5BAE\57CE\770C'',''\8272\9EBB\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''045012'',''\5BAE\57CE\770C'',''\6D8C\8C37\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''063215'',''\5C71\5F62\770C'',''\6CB3\5317\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''052060'',''\79CB\7530\770C'',''\7537\9E7F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072044'',''\798F\5CF6\770C'',''\3044\308F\304D\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''064017'',''\5C71\5F62\770C'',''\5C0F\56FD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''064262'',''\5C71\5F62\770C'',''\4E09\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''072109'',''\798F\5CF6\770C'',''\4E8C\672C\677E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''074080'',''\798F\5CF6\770C'',''\732A\82D7\4EE3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082082'',''\8328\57CE\770C'',''\9F8D\30B1\5D0E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082171'',''\8328\57CE\770C'',''\53D6\624B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082244'',''\8328\57CE\770C'',''\5B88\8C37\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''082279'',''\8328\57CE\770C'',''\7B51\897F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131067'',''\6771\4EAC\90FD'',''\53F0\6771\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131075'',''\6771\4EAC\90FD'',''\58A8\7530\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131156'',''\6771\4EAC\90FD'',''\6749\4E26\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131202'',''\6771\4EAC\90FD'',''\7DF4\99AC\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''132101'',''\6771\4EAC\90FD'',''\5C0F\91D1\4E95\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122203'',''\5343\8449\770C'',''\6D41\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''124036'',''\5343\8449\770C'',''\4E5D\5341\4E5D\91CC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131121'',''\6771\4EAC\90FD'',''\4E16\7530\8C37\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''131016'',''\6771\4EAC\90FD'',''\5343\4EE3\7530\533A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122254'',''\5343\8449\770C'',''\541B\6D25\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122297'',''\5343\8449\770C'',''\8896\30B1\6D66\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102083'',''\7FA4\99AC\770C'',''\6E0B\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112232'',''\57FC\7389\770C'',''\8568\5E02'');'),
'commit;',
''))
);
end;
/
prompt --application/deployment/install/install_localgovcodes7
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9201895098710435)
,p_install_id=>wwv_flow_api.id(19948859811950165162)
,p_name=>'localgovcodes7'
,p_sequence=>100
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112241'',''\57FC\7389\770C'',''\6238\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112291'',''\57FC\7389\770C'',''\548C\5149\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112313'',''\57FC\7389\770C'',''\6876\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122106'',''\5343\8449\770C'',''\8302\539F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''122114'',''\5343\8449\770C'',''\6210\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''113484'',''\57FC\7389\770C'',''\9CE9\5C71\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''102032'',''\7FA4\99AC\770C'',''\6850\751F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''104647'',''\7FA4\99AC\770C'',''\7389\6751\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112062'',''\57FC\7389\770C'',''\884C\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''112071'',''\57FC\7389\770C'',''\79E9\7236\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''093866'',''\6803\6728\770C'',''\9AD8\6839\6CA2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''215066'',''\5C90\961C\770C'',''\767D\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232017'',''\611B\77E5\770C'',''\8C4A\6A4B\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''222224'',''\9759\5CA1\770C'',''\4F0A\8C46\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232076'',''\611B\77E5\770C'',''\8C4A\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202193'',''\9577\91CE\770C'',''\6771\5FA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''202207'',''\9577\91CE\770C'',''\5B89\66C7\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212075'',''\5C90\961C\770C'',''\7F8E\6FC3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203211'',''\9577\91CE\770C'',''\8EFD\4E95\6CA2\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203238'',''\9577\91CE\770C'',''\5FA1\4EE3\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212113'',''\5C90\961C\770C'',''\7F8E\6FC3\52A0\8302\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''212121'',''\5C90\961C\770C'',''\571F\5C90\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''203629'',''\9577\91CE\770C'',''\5BCC\58EB\898B\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''204030'',''\9577\91CE\770C'',''\9AD8\68EE\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''204048'',''\9577\91CE\770C'',''\963F\5357\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''204811'',''\9577\91CE\770C'',''\6C60\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142131'',''\795E\5948\5DDD\770C'',''\5927\548C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142174'',''\795E\5948\5DDD\770C'',''\5357\8DB3\67C4\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''142182'',''\795E\5948\5DDD\770C'',''\7DBE\702C\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''143821'',''\795E\5948\5DDD\770C'',''\7BB1\6839\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152021'',''\65B0\6F5F\770C'',''\9577\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162027'',''\5BCC\5C71\770C'',''\9AD8\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''152188'',''\65B0\6F5F\770C'',''\4E94\6CC9\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''162078'',''\5BCC\5C71\770C'',''\9ED2\90E8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''163431'',''\5BCC\5C71\770C'',''\671D\65E5\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''154822'',''\65B0\6F5F\770C'',''\6D25\5357\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292117'',''\5948\826F\770C'',''\845B\57CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282260'',''\5175\5EAB\770C'',''\6DE1\8DEF\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''302015'',''\548C\6B4C\5C71\770C'',''\548C\6B4C\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''283011'',''\5175\5EAB\770C'',''\732A\540D\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''283657'',''\5175\5EAB\770C'',''\591A\53EF\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282138'',''\5175\5EAB\770C'',''\897F\8107\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''304042'',''\548C\6B4C\5C71\770C'',''\4E0A\5BCC\7530\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''304069'',''\548C\6B4C\5C71\770C'',''\3059\3055\307F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''302040'',''\548C\6B4C\5C71\770C'',''\6709\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''282219'',''\5175\5EAB\770C'',''\4E39\6CE2\7BE0\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''292087'',''\5948\826F\770C'',''\5FA1\6240\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''303411'',''\548C\6B4C\5C71\770C'',''\304B\3064\3089\304E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272281'',''\5927\962A\5E9C'',''\6CC9\5357\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''272311'',''\5927\962A\5E9C'',''\5927\962A\72ED\5C71\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''234427'',''\611B\77E5\770C'',''\6771\6D66\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''261009'',''\4EAC\90FD\5E9C'',''\4EAC\90FD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262021'',''\4EAC\90FD\5E9C'',''\821E\9DB4\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''262137'',''\4EAC\90FD\5E9C'',''\5357\4E39\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''263664'',''\4EAC\90FD\5E9C'',''\7CBE\83EF\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''245615'',''\4E09\91CD\770C'',''\5FA1\6D5C\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232131'',''\611B\77E5\770C'',''\897F\5C3E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232254'',''\611B\77E5\770C'',''\77E5\7ACB\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232262'',''\611B\77E5\770C'',''\5C3E\5F35\65ED\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''232289'',''\611B\77E5\770C'',''\5CA9\5009\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''394122'',''\9AD8\77E5\770C'',''\56DB\4E07\5341\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''401307'',''\798F\5CA1\770C'',''\798F\5CA1\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402028'',''\798F\5CA1\770C'',''\5927\725F\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402176'',''\798F\5CA1\770C'',''\7B51\7D2B\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402036'',''\798F\5CA1\770C'',''\4E45\7559\7C73\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402290'',''\798F\5CA1\770C'',''\307F\3084\307E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402061'',''\798F\5CA1\770C'',''\7530\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402311'',''\798F\5CA1\770C'',''\90A3\73C2\5DDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''402265'',''\798F\5CA1\770C'',''\5BAE\82E5\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392022'',''\9AD8\77E5\770C'',''\5BA4\6238\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392031'',''\9AD8\77E5\770C'',''\5B89\82B8\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392049'',''\9AD8\77E5\770C'',''\5357\56FD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''392057'',''\9AD8\77E5\770C'',''\571F\4F50\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''382035'',''\611B\5A9B\770C'',''\5B87\548C\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''325261'',''\5CF6\6839\770C'',''\897F\30CE\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332020'',''\5CA1\5C71\770C'',''\5009\6577\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''336220'',''\5CA1\5C71\770C'',''\52DD\592E\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''341002'',''\5E83\5CF6\770C'',''\5E83\5CF6\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''342025'',''\5E83\5CF6\770C'',''\5449\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''352071'',''\5C71\53E3\770C'',''\4E0B\677E\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332046'',''\5CA1\5C71\770C'',''\7389\91CE\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332135'',''\5CA1\5C71\770C'',''\8D64\78D0\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''332160'',''\5CA1\5C71\770C'',''\6D45\53E3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''464902'',''\9E7F\5150\5CF6\770C'',''\9326\6C5F\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''462179'',''\9E7F\5150\5CF6\770C'',''\66FD\65BC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''465020'',''\9E7F\5150\5CF6\770C'',''\5357\7A2E\5B50\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''465305'',''\9E7F\5150\5CF6\770C'',''\5FB3\4E4B\5CF6\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''414255'',''\4F50\8CC0\770C'',''\767D\77F3\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432059'',''\718A\672C\770C'',''\6C34\4FE3\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''432113'',''\718A\672C\770C'',''\5B87\571F\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434337'',''\718A\672C\770C'',''\5357\963F\8607\6751'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''434680'',''\718A\672C\770C'',''\6C37\5DDD\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442062'',''\5927\5206\770C'',''\81FC\6775\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''442097'',''\5927\5206\770C'',''\8C4A\5F8C\9AD8\7530\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''403440'',''\798F\5CA1\770C'',''\9808\6075\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422053'',''\9577\5D0E\770C'',''\5927\6751\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''412058'',''\4F50\8CC0\770C'',''\4F0A\4E07\91CC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422096'',''\9577\5D0E\770C'',''\5BFE\99AC\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''422029'',''\9577\5D0E\770C'',''\4F50\4E16\4FDD\5E02'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''406252'',''\798F\5CA1\770C'',''\307F\3084\3053\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''406422'',''\798F\5CA1\770C'',''\5409\5BCC\753A'');'),
unistr('insert into c19_local_gov_codes(local_gov_code,pref_name,city_name) values(''423211'',''\9577\5D0E\770C'',''\6771\5F7C\6775\753A'');'),
'commit;',
''))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
