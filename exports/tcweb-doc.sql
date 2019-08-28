prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.15'
,p_default_workspace_id=>2557312866622325
,p_default_application_id=>100
,p_default_owner=>'TCWEB'
);
end;
/
 
prompt APPLICATION 100 - Documents
--
-- Application Export:
--   Application:     100
--   Name:            Documents
--   Date and Time:   18:39 水曜日 8月 28, 2019
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         19.1.0.00.15
--   Instance ID:     248259925035928
--

-- Application Statistics:
--   Pages:                     37
--     Items:                  125
--     Computations:             2
--     Validations:              3
--     Processes:               71
--     Regions:                114
--     Buttons:                 70
--     Dynamic Actions:         39
--   Shared Components:
--     Logic:
--       Items:                 14
--       Processes:              1
--       Computations:          12
--       App Settings:           2
--       Build Options:          9
--     Navigation:
--       Lists:                  5
--       Breadcrumbs:            1
--         Entries:             13
--     Security:
--       Authentication:         1
--       Authorization:          3
--       ACL Roles:              3
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              16
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              11
--       LOVs:                  14
--       Shortcuts:              1
--     Globalization:
--     Reports:
--     E-Mail:
--   Supporting Objects:  Included
--     Install scripts:         10

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TCWEB')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Documents')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'UCSAMPLE')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'C3FEB8DA5552032547D583C736CA934492C8AE9B4D1E3160E8D0478CBD45C93A'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.1'
,p_flow_language=>'ja'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'YYYY/MM/DD'
,p_date_time_format=>'YYYY/MM/DD HH24:MI:SS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(134415349495562937)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:&APP_NAME.'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'19.2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_security_scheme=>wwv_flow_api.id(8253037665650347)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'UCSAMPLE'
,p_substitution_string_02=>'PERSON_URL'
,p_substitution_string_03=>'DOMAIN_NAME'
,p_substitution_string_04=>'DOCUMENT_DIRECT_PATH'
,p_substitution_value_04=>'http://localhost:8080/ords/xepdb1/f?p=UCSAMPLE:DETAIL:0::NO:RP,3:P3_LINK_NUM:'
,p_substitution_string_05=>'DOWNLOAD_DIRECT_PATH'
,p_substitution_value_05=>'http://localhost:8080/ords/xepdb1/f?p=UCSAMPLE:DOWNLOAD:0::NO::DOWNLOAD_LINK_NUM:'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190828183800'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/アクセス制御
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(8289962798650428)
,p_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(8251538045650342)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8290340271650430)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30E6\30FC\30B6\30FC')
,p_list_item_link_target=>'f?p=&APP_ID.:10072:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\8A2D\5B9A\306E\5909\66F4\3068\30A2\30AF\30BB\30B9\5236\5FA1\306E\7121\52B9\5316')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8290712055650430)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1')
,p_list_item_link_target=>'f?p=&APP_ID.:10070:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>unistr('\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\306E\8A2D\5B9A')
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/フィードバック
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(8329760419675868)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(8299291135675792)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8330155520675869)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30E6\30FC\30B6\30FC\30FB\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_list_item_link_target=>'f?p=&APP_ID.:10083:&SESSION.::&DEBUG.:10083:::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30E6\30FC\30B6\30FC\306B\3088\3063\3066\9001\4FE1\3055\308C\305F\3059\3079\3066\306E\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\30EC\30DD\30FC\30C8')
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/管理リンク
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(8493272109211045)
,p_name=>unistr('\7BA1\7406\30EA\30F3\30AF')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8493429612211050)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30E1\30FC\30EB\30C6\30F3\30D7\30EC\30FC\30C8\306E\7DE8\96C6')
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(451150342632606620)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(451202918091607196)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\767B\9332\6587\66F8\4E00\89A7')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.:B_INIT:&DEBUG.:5,RIR:::'
,p_list_item_icon=>'fa-list-alt'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>',18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(451522377131161485)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\6240\6709\8005\306B\3088\308B\691C\7D22')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-plus'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(452384442926893110)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\8CC7\6599\306E\65B0\898F\767B\9332')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_icon=>'fa-upload'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(451527557654220164)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\308F\305F\3057\306E\8CC7\6599 [&MY_OWN_DOCUMENTS.]')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.:MYDOC:&DEBUG.:5,RIR:::'
,p_list_item_icon=>'fa-edit'
,p_list_item_disp_cond_type=>'SQL_EXPRESSION'
,p_list_item_disp_condition=>':MY_OWN_DOCUMENTS > 0'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(451670786908083681)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('\308F\305F\3057\306E\4FEE\6B63\4F9D\983C [&MY_OPEN_REMARKS.]')
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil-square'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(452396321137998607)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('\30A2\30AF\30BB\30B9\5C65\6B74')
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(452396638067006141)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-bar-chart'
,p_parent_list_item_id=>wwv_flow_api.id(452396321137998607)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(452401927503006884)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('\691C\7D22\30EF\30FC\30C9\5C65\6B74')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_parent_list_item_id=>wwv_flow_api.id(452396321137998607)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(454863630532365676)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('\7D71\8A08\60C5\5831')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart-horizontal'
,p_parent_list_item_id=>wwv_flow_api.id(452396321137998607)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(157483977700296071)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\9055\53CD')
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-lock-x'
,p_parent_list_item_id=>wwv_flow_api.id(452396321137998607)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(452452176324350301)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\30BB\30F3\30BF\30FC')
,p_list_item_link_target=>'f?p=DCENTER'
,p_list_item_icon=>'fa-download'
,p_required_patch=>wwv_flow_api.id(134429047887752051)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8288861886650424)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>unistr('\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10000'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(451202450923607091)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16418010618374608)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\6280\8853\30DD\30FC\30BF\30EB\4E00\89A7')
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_required_patch=>wwv_flow_api.id(22229127853369601)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15611864975570453)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\30B5\30FC\30D3\30B9')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15612162244573948)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>unistr('\30C9\30AD\30E5\30E1\30F3\30C8')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(15611864975570453)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15612586173578851)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>unistr('\30BB\30DF\30CA\30FC')
,p_list_item_link_target=>'f?p=SEMINAR:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(15611864975570453)
,p_required_patch=>wwv_flow_api.id(134150804649607812)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15613014831581260)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'FAQ'
,p_list_item_link_target=>'f?p=FAQ:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(15611864975570453)
,p_required_patch=>wwv_flow_api.id(134150242132604042)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15614529377593027)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Field Alert'
,p_list_item_link_target=>'f?p=FIELDALERT:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(15611864975570453)
,p_required_patch=>wwv_flow_api.id(134150351595605495)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15614855491593028)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>unistr('\30DD\30FC\30BF\30EB\4E00\89A7')
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(15611864975570453)
,p_required_patch=>wwv_flow_api.id(22229127853369601)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(481920830817650961)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Open Feedbacks(&OPEN_FEEDBACK_COUNT.)'
,p_list_item_disp_cond_type=>'PLSQL_EXPRESSION'
,p_list_item_disp_condition=>'APEX_ACL.HAS_USER_ROLE(p_role_static_id => ''ADMINISTRATOR'')'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(453175812118271013)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8329478394675867)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10080:&SESSION.::&DEBUG.:10080:P10080_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_required_patch=>wwv_flow_api.id(8299291135675792)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(453838917978647550)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(481655331279067944)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_NAME.::&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/gruntfile_js
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A20676C6F62616C206D6F64756C65202A2F0D0A6D6F64756C652E6578706F727473203D2066756E6374696F6E286772756E7429207B0D0A092275736520737472696374223B0D0A096772756E742E696E6974436F6E666967287B0D0A0909706B673A';
wwv_flow_api.g_varchar2_table(2) := '206772756E742E66696C652E726561644A534F4E282261706578706C7567696E2E6A736F6E22292C0D0A090962616E6E65723A20272F2A2A5C6E27202B0D0A09090927202A203C253D20706B672E6E616D6520253E202D20763C253D20706B672E766572';
wwv_flow_api.g_varchar2_table(3) := '73696F6E20253E202D203C253D206772756E742E74656D706C6174652E746F6461792822797979792D6D6D2D6464222920253E5C6E27202B0D0A090909273C253D20706B672E686F6D6570616765203F2022202A2022202B20706B672E686F6D65706167';
wwv_flow_api.g_varchar2_table(4) := '65202B20225C5C6E22203A20222220253E27202B0D0A09090927202A20436F707972696768742028632920323031352D3C253D206772756E742E74656D706C6174652E746F646179282279797979222920253E203C253D20706B672E617574686F722E6E';
wwv_flow_api.g_varchar2_table(5) := '616D6520253E202D203C253D20706B672E6C6963656E736520253E206C6963656E73655C6E27202B0D0A09090927202A20466F722073686970706564206C69627261726965732073656520616C736F2068747470733A2F2F6769746875622E636F6D2F6F';
wwv_flow_api.g_varchar2_table(6) := '676F6272656368742F6D61726B646F776E2D617065782D706C7567696E2F4C4943454E53452E7478745C6E27202B0D0A09090927202A2F5C6E272C0D0A09096A7368696E743A207B0D0A09090966696C65733A205B0D0A090909092261706578706C7567';
wwv_flow_api.g_varchar2_table(7) := '696E2E6A736F6E222C0D0A09090909224772756E7466696C652E6A73222C0D0A0909090922736F75726365732F6D61726B646F776E2E617065782D706C7567696E2D6C6F6769632E6A73220D0A0909095D2C0D0A0909096F7074696F6E733A207B0D0A09';
wwv_flow_api.g_varchar2_table(8) := '0909096A7368696E7472633A20747275650D0A0909097D0D0A09097D2C0D0A0909636C65616E3A207B0D0A09090966696C65733A205B0D0A09090909227365727665722F2A220D0A0909095D0D0A09097D2C0D0A0909636F70793A207B0D0A0909096A73';
wwv_flow_api.g_varchar2_table(9) := '3A207B0D0A090909097372633A20226C69627261726965732F686967686C696768742E6A732F686967686C696768742E7061636B2E636F6D6D6F6E2E392E392E302E6A73222C0D0A09090909646573743A20227365727665722F686967686C696768742E';
wwv_flow_api.g_varchar2_table(10) := '7061636B2E636F6D6D6F6E2E392E392E302E6A73222C0D0A0909097D2C0D0A0909096373733A207B0D0A090909097372633A2022736F75726365732F6D61726B646F776E2E637373222C0D0A09090909646573743A20227365727665722F6D61726B646F';
wwv_flow_api.g_varchar2_table(11) := '776E2D3C253D20706B672E76657273696F6E20253E2E637373220D0A0909097D2C0D0A090909706C73716C3A207B0D0A090909097372633A2022736F75726365732F706C7567696E2D736F757263652E73716C222C0D0A09090909646573743A20227365';
wwv_flow_api.g_varchar2_table(12) := '727665722F706C7567696E2D736F757263652D3C253D20706B672E76657273696F6E20253E2E73716C222C0D0A090909096F7074696F6E733A207B0D0A090909090970726F636573733A2066756E6374696F6E287372632C2066696C657061746829207B';
wwv_flow_api.g_varchar2_table(13) := '0D0A09090909090972657475726E207372632E7265706C616365280D0A090909090909092F785C2E785C2E782F672C0D0A090909090909096772756E742E74656D706C6174652E70726F6365737328223C253D20706B672E76657273696F6E20253E2229';
wwv_flow_api.g_varchar2_table(14) := '0D0A09090909090909293B0D0A09090909097D0D0A090909097D0D0A0909097D2C0D0A0909096C6963656E73653A207B0D0A090909097372633A20224C4943454E53452E747874222C0D0A09090909646573743A20227365727665722F4C4943454E5345';
wwv_flow_api.g_varchar2_table(15) := '2E747874220D0A0909097D0D0A09097D2C0D0A0909636F6E6361743A207B0D0A0909096F7074696F6E733A207B0D0A0909090962616E6E65723A20223C253D2062616E6E657220253E222C0D0A09090909737472697042616E6E6572733A2066616C7365';
wwv_flow_api.g_varchar2_table(16) := '2C0D0A0909090970726F636573733A2066756E6374696F6E287372632C2066696C657061746829207B0D0A090909090972657475726E20225C6E22202B0D0A090909090909222F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(17) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D5C6E22202B0D0A090909090909222F2F20536F757263653A2022202B2066';
wwv_flow_api.g_varchar2_table(18) := '696C6570617468202B20225C6E5C6E22202B0D0A0909090909097372632E7265706C616365280D0A090909090909092F785C2E785C2E782F672C0D0A090909090909096772756E742E74656D706C6174652E70726F6365737328223C253D20706B672E76';
wwv_flow_api.g_varchar2_table(19) := '657273696F6E20253E22290D0A090909090909293B0D0A090909097D2C0D0A0909097D2C0D0A090909646973743A207B0D0A090909097372633A205B0D0A0909090909226C69627261726965732F737461636B6F766572666C6F772D70616765646F776E';
wwv_flow_api.g_varchar2_table(20) := '2F4D61726B646F776E2E436F6E7665727465722E6A73222C0D0A0909090909226C69627261726965732F737461636B6F766572666C6F772D70616765646F776E2F4D61726B646F776E2E53616E6974697A65722E6A73222C0D0A090909090922736F7572';
wwv_flow_api.g_varchar2_table(21) := '6365732F6D61726B646F776E2E656469746F722D666F722D617065782E6A73222C0D0A0909090909226C69627261726965732F70616765646F776E2D65787472612D706C7567696E732F4D61726B646F776E2E45787472612E6A73222C0D0A0909090909';
wwv_flow_api.g_varchar2_table(22) := '22736F75726365732F6D61726B646F776E2E617065782D706C7567696E2D6C6F6769632E6A73220D0A090909095D2C0D0A09090909646573743A20227365727665722F6D61726B646F776E2D3C253D20706B672E76657273696F6E20253E2E6A73220D0A';
wwv_flow_api.g_varchar2_table(23) := '0909097D2C0D0A09097D2C0D0A090975676C6966793A207B0D0A0909096F7074696F6E733A207B0D0A0909090962616E6E65723A20223C253D2062616E6E657220253E220D0A0909097D2C0D0A090909646973743A207B0D0A090909097372633A20223C';
wwv_flow_api.g_varchar2_table(24) := '253D20636F6E6361742E646973742E6465737420253E222C0D0A09090909646573743A20227365727665722F6D61726B646F776E2D3C253D20706B672E76657273696F6E20253E2E6D696E2E6A73220D0A0909097D2C0D0A09097D2C0D0A090977617463';
wwv_flow_api.g_varchar2_table(25) := '683A207B0D0A09090966696C65733A205B0D0A09090909224772756E7466696C652E6A73222C0D0A090909092261706578706C7567696E2E6A736F6E222C0D0A0909090922736F75726365732F2A222C0D0A09090909224C4943454E53452E747874220D';
wwv_flow_api.g_varchar2_table(26) := '0A0909095D2C0D0A0909097461736B733A205B226A7368696E74222C22636C65616E222C22636F7079222C22636F6E636174222C2275676C696679225D0D0A09097D0D0A097D293B0D0A096772756E742E6C6F61644E706D5461736B7328226772756E74';
wwv_flow_api.g_varchar2_table(27) := '2D636F6E747269622D6A7368696E7422293B0D0A096772756E742E6C6F61644E706D5461736B7328226772756E742D636F6E747269622D636C65616E22293B0D0A096772756E742E6C6F61644E706D5461736B7328226772756E742D636F6E747269622D';
wwv_flow_api.g_varchar2_table(28) := '636F707922293B0D0A096772756E742E6C6F61644E706D5461736B7328226772756E742D636F6E747269622D636F6E63617422293B0D0A096772756E742E6C6F61644E706D5461736B7328226772756E742D636F6E747269622D75676C69667922293B0D';
wwv_flow_api.g_varchar2_table(29) := '0A096772756E742E6C6F61644E706D5461736B7328226772756E742D636F6E747269622D776174636822293B0D0A096772756E742E6C6F61644E706D5461736B7328226772756E742D6E6F7469667922293B0D0A096772756E742E726567697374657254';
wwv_flow_api.g_varchar2_table(30) := '61736B282264656661756C74222C205B226A7368696E74222C22636C65616E222C22636F7079222C22636F6E636174222C2275676C696679225D293B0D0A7D3B0D0A';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(12375901481901981)
,p_file_name=>'Gruntfile.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8495301496113725)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(451149699928606615)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(451149813663606617)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(451149896388606618)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(451150020773606619)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(451150161825606620)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(451150218944606620)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
end;
/
prompt --application/shared_components/security/authorizations/管理権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(8252429646650346)
,p_name=>unistr('\7BA1\7406\6A29\9650')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return APEX_ACL.HAS_USER_ROLE ( p_role_static_id => ''ADMINISTRATOR'');'
,p_error_message=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\7BA1\7406\8005\3067\306F\3042\308A\307E\305B\3093')
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/コントリビューション権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(8252788352650347)
,p_name=>unistr('\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30B7\30E7\30F3\6A29\9650')
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>unistr('\7BA1\7406\8005,\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF')
,p_attribute_02=>'A'
,p_error_message=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\3067\306F\3042\308A\307E\305B\3093')
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/リーダー権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(8253037665650347)
,p_name=>unistr('\30EA\30FC\30C0\30FC\6A29\9650')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>unistr('\30A2\30AF\30BB\30B9\6A29\3092\4ED8\4E0E\3055\308C\3066\3044\306A\3044\304B\3001\30A2\30AB\30A6\30F3\30C8\304C\30ED\30C3\30AF\3055\308C\3066\3044\308B\305F\3081\3001\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\8868\793A\306F\8A31\53EF\3055\308C\307E\305B\3093\3002\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\7BA1\7406\8005\306B\9023\7D61\3057\3066\304F\3060\3055\3044\3002')
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/管理者
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(8252042729650345)
,p_static_id=>'ADMINISTRATOR'
,p_name=>unistr('\7BA1\7406\8005')
,p_description=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\7BA1\7406\8005\306B\5272\308A\5F53\3066\3089\308C\305F\30ED\30FC\30EB\3002')
);
end;
/
prompt --application/shared_components/security/app_access_control/コントリビュータ
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(8252199634650345)
,p_static_id=>'CONTRIBUTOR'
,p_name=>unistr('\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF')
,p_description=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306B\5272\308A\5F53\3066\3089\308C\305F\30ED\30FC\30EB\3002')
);
end;
/
prompt --application/shared_components/security/app_access_control/リーダー
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(8252342340650346)
,p_static_id=>'READER'
,p_name=>unistr('\30EA\30FC\30C0\30FC')
,p_description=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30EA\30FC\30C0\30FC\306B\5272\308A\5F53\3066\3089\308C\305F\30ED\30FC\30EB\3002')
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(451228993085823161)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\521D\671F\5316')
,p_process_sql_clob=>'tcw_util.initialize_search_items;'
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(451660125425058535)
,p_name=>'AI_BREADCRUMB_NAME'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(311058866096610112)
,p_name=>'AI_CONTAINS'
,p_protection_level=>'I'
,p_item_comment=>unistr('Oracle Text\3067\306Econtains\306B\6307\5B9A\3059\308B\6761\4EF6\3092\4FDD\5B58\3059\308B\3002')
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(21976981449229868)
,p_name=>'AI_DOMAIN_NAME'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(134811924484149919)
,p_name=>'AI_FAQ_NEW_BY_DAY'
,p_protection_level=>'I'
,p_required_patch=>wwv_flow_api.id(134150351595605495)
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(134679290450568547)
,p_name=>'AI_FAQ_NEW_BY_WEEK'
,p_protection_level=>'I'
,p_required_patch=>wwv_flow_api.id(134150242132604042)
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(134805113198157341)
,p_name=>'AI_FA_NEW_BY_DAY'
,p_protection_level=>'I'
,p_required_patch=>wwv_flow_api.id(134150351595605495)
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(452426575258300980)
,p_name=>'AI_FA_NEW_BY_WEEK'
,p_protection_level=>'I'
,p_required_patch=>wwv_flow_api.id(134150351595605495)
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(170055419736297328)
,p_name=>'AI_IN_DEMO'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(21957838771021062)
,p_name=>'AI_STRIP_DOMAIN'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(395783700256277364)
,p_name=>'IN_CONSULTING'
,p_protection_level=>'I'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('2018/10/30 - ynakakos\3000\65B0\898F\4F5C\6210'),
unistr('TCW_CONSUL_USER\306B\30A8\30F3\30C8\30EA\304C\3042\308B\3001\3064\307E\308A\30B3\30F3\30B5\30EB\30C6\30A3\30F3\30B0\90E8\9580\3067\3042\308C\3070\3001\FF11\3001\305D\308C\4EE5\5916\306F\FF10\3068\3059\308B\3002')))
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(451662286917117493)
,p_name=>'MY_OPEN_REMARKS'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(451714754384295036)
,p_name=>'MY_OWN_DOCUMENTS'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(481912346422236381)
,p_name=>'OPEN_FEEDBACK_COUNT'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(405827716915443627)
,p_name=>'P0_KEYWORD'
,p_protection_level=>'N'
,p_item_comment=>unistr('\6B74\53F2\7684\306A\4E8B\60C5\3067\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30A2\30A4\30C6\30E0\306A\306E\306BP0_\3068\30D7\30EC\30D5\30A3\30C3\30AF\30B9\304C\4ED8\3044\3066\3044\308B\3002')
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(395762596984297304)
,p_computation_sequence=>10
,p_computation_item=>'IN_CONSULTING'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from tcw_consul_user where upper(u_email) = :APP_USER'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(134679684815585497)
,p_computation_sequence=>10
,p_computation_item=>'AI_FAQ_NEW_BY_WEEK'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from tcw_faqs where classification in (''P'',''C'') and last_update_date between systimestamp - interval ''7'' day and systimestamp;'
,p_required_patch=>wwv_flow_api.id(134150242132604042)
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(134805559798165656)
,p_computation_sequence=>10
,p_computation_item=>'AI_FAQ_NEW_BY_DAY'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from tcw_faqs where classification in (''P'',''C'') and last_update_date between systimestamp - interval ''1'' day and systimestamp;'
,p_required_patch=>wwv_flow_api.id(134150242132604042)
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(134806812717169580)
,p_computation_sequence=>10
,p_computation_item=>'AI_FA_NEW_BY_DAY'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from fal_alerts where updatedate between sysdate - interval ''1'' day and sysdate;'
,p_required_patch=>wwv_flow_api.id(134150351595605495)
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(451667971234337397)
,p_computation_sequence=>10
,p_computation_item=>'MY_OWN_DOCUMENTS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_c0 number;',
'begin',
'  select count(*) into l_c0 from tcw_documents ',
'    where opl_code > 0 and upd_username = :APP_USER ',
'    or link_num in ',
'    (select link_num from tcw_doc_acls where user_name = :APP_USER);',
'  return l_c0;',
'end;'))
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(451677904705114249)
,p_computation_sequence=>10
,p_computation_item=>'MY_OPEN_REMARKS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) from tcw_documents l join tcw_doc_remarks r on l.link_num = r.link_num ',
'where r.is_closed = ''N'' and',
'(l.link_num in (select link_num from tcw_doc_acls where user_name = :APP_USER)',
'   or l.upd_username = :APP_USER)'))
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(452437398780320798)
,p_computation_sequence=>10
,p_computation_item=>'AI_FA_NEW_BY_WEEK'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from fal_alerts where updatedate between sysdate - interval ''7'' day and sysdate;'
,p_required_patch=>wwv_flow_api.id(134150351595605495)
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(21958046975026142)
,p_computation_sequence=>10
,p_computation_item=>'AI_STRIP_DOMAIN'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'(.*)&DOMAIN_NAME.'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(21977485152233898)
,p_computation_sequence=>10
,p_computation_item=>'AI_DOMAIN_NAME'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'&DOMAIN_NAME.'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(170058865678316021)
,p_computation_sequence=>10
,p_computation_item=>'AI_IN_DEMO'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'N'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(395762356423294857)
,p_computation_sequence=>10
,p_computation_item=>'IN_CONSULTING'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from tcw_consul_user where upper(u_email) = :APP_USER'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(481912654258239976)
,p_computation_sequence=>10
,p_computation_item=>'OPEN_FEEDBACK_COUNT'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from apex_team_feedback where feedback_status <> 4;'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_api.create_app_setting(
 p_id=>wwv_flow_api.id(8251856751650344)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ALL_USERS'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_api.id(8251538045650342)
,p_comments=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\30EA\30B9\30C8\306B\5B58\5728\3057\306A\3044\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306B\63D0\4F9B\3055\308C\305F\30C7\30D5\30A9\30EB\30C8\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB')
);
wwv_flow_api.create_app_setting(
 p_id=>wwv_flow_api.id(8299588037675793)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_api.id(8299291135675792)
);
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
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(8267170038650378)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(8274803072650389)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_api.id(8274803072650389)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8275106513650389)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9')
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(8304736264675802)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_api.id(8304736264675802)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8305031060675802)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\826F\3044')
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8305451804675803)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\3069\3061\3089\3068\3082\3044\3048\306A\3044')
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8305829214675804)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\60AA\3044')
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(8314970311675823)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(8314970311675823)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8315288456675823)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30A2\30AF\30B7\30E7\30F3\306A\3057')
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8315618233675823)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\78BA\8A8D\6E08')
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8316009039675824)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\30AA\30FC\30D7\30F3')
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8316473527675824)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\30AF\30ED\30FC\30BA')
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_content_type_aliases
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(454330769552951238)
,p_lov_name=>'LIST_CONTENT_TYPE_ALIASES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select content_type_alias as d,',
'       content_type as r',
'from tcw_content_types'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_classifications
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(478652033851733583)
,p_lov_name=>'LIST_OF_CLASSIFICATIONS'
,p_lov_query=>'.'||wwv_flow_api.id(478652033851733583)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(478652312319733603)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\4F5C\696D\4E2D')
,p_lov_return_value=>'W'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(478652738919733612)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\793E\5916\516C\958B\53EF')
,p_lov_return_value=>'P'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(478653180003733612)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\793E\5185\306E\307F')
,p_lov_return_value=>'C'
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_conf_name
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(451600092601027666)
,p_lov_name=>'LIST_OF_CONF_NAME'
,p_lov_query=>'.'||wwv_flow_api.id(451600092601027666)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(451600528121027675)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\516C\958B\8CC7\6599 (PUBLIC)')
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(451601300354027683)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\793E\5185\9650\5B9A (CONFIDENTIAL - INTERNAL USE ONLY)')
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(387822530038227561)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Consulting Only'
,p_lov_return_value=>'5'
,p_lov_disp_cond_type=>'SQL_EXPRESSION'
,p_lov_disp_cond=>'nvl(:IN_CONSULTING, 0) = 1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(451602143946027684)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>unistr('\30D7\30E9\30A4\30D9\30FC\30C8')
,p_lov_return_value=>'6'
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_conf_name_disp
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(389470743285795739)
,p_lov_name=>'LIST_OF_CONF_NAME_DISP'
,p_lov_query=>'.'||wwv_flow_api.id(389470743285795739)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(389471098636795844)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\516C\958B\8CC7\6599 (PUBLIC)')
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(389471910972795855)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\793E\5185\9650\5B9A (CONFIDENTIAL - INTERNAL USE ONLY)')
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(389472625877795857)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Consulting Only'
,p_lov_return_value=>'5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(389473072647795861)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>unistr('\30D7\30E9\30A4\30D9\30FC\30C8')
,p_lov_return_value=>'6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(165678378734627644)
,p_lov_disp_sequence=>16
,p_lov_disp_value=>unistr('\524A\9664\6E08\307F')
,p_lov_return_value=>'0'
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_documents
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(455268915880261597)
,p_lov_name=>'LIST_OF_DOCUMENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select obj_name || '' - '' || u.user_name as d,',
'       link_num as r',
'  from tcw_documents d join tcw_user_names u on d.upd_username = u.user_name',
' where opl_code between 1 and 5',
' order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_email
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(454853154971255983)
,p_lov_name=>'LIST_OF_EMAIL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case',
'         when last_name is null then user_name',
'         else last_name || '' '' || first_name || '' <'' || lower(user_name) || ''>''',
'       end as d,',
'       user_name as r',
'  from tcw_user_names',
' order by 2'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_link_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(451603328004027690)
,p_lov_name=>'LIST_OF_LINK_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select link_type_name as d,',
'       link_type_id as r',
'  from tcw_link_types',
' order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(8337290346696015)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(8337290346696015)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8337655834696015)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/my_documents
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(451732706023422872)
,p_lov_name=>'MY_DOCUMENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select link_num || '':'' || obj_name as d,',
'       link_num as r',
'from tcw_documents',
'where ',
' (upd_username = :APP_USER',
'  or',
'  link_num in (select link_num from tcw_doc_acls where user_name = :APP_USER)',
' )',
'  and opl_code != 0',
'order by link_num desc;',
''))
);
end;
/
prompt --application/shared_components/user_interface/lovs/reson_violate
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(161615829386238189)
,p_lov_name=>'RESON_VIOLATE'
,p_lov_query=>'.'||wwv_flow_api.id(161615829386238189)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(161616111576238274)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Consultant Only'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(161616476685238283)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Strictly Confidential'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(161616866047238283)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Over 100 docs in 1 day'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(161617285726238284)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Malicious Download'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(161617643689238284)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Access Blocked Until'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(258854558420310205)
,p_group_name=>unistr('\305D\306E\4ED6')
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(258851339093278569)
,p_group_name=>unistr('\30C7\30FC\30BF\4FEE\6B63')
,p_group_desc=>unistr('\30C7\30FC\30BF\3092\4FEE\6B63\3059\308B\30B7\30E7\30FC\30C8\30AB\30C3\30C8\6A5F\80FD')
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(258848669354256797)
,p_group_name=>unistr('\4E3B\8981\6A5F\80FD')
,p_group_desc=>unistr('\30D5\30A1\30A4\30EB\306E\767B\9332\3001\4FEE\6B63\3001\524A\9664\306B\95A2\3059\308B\6A5F\80FD')
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(258850202867268354)
,p_group_name=>unistr('\5229\7528\72B6\6CC1')
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(258847645115242583)
,p_group_name=>unistr('\7BA1\7406')
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(258852281100286956)
,p_group_name=>unistr('\88DC\52A9\6A5F\80FD')
,p_group_desc=>unistr('\4E3B\8981\6A5F\80FD\3092\88DC\52A9\3059\308B')
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
 p_id=>wwv_flow_api.id(451202856644607181)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(8289716789650426)
,p_short_name=>unistr('\7BA1\7406')
,p_link=>'f?p=&APP_ID.:10000:&SESSION.'
,p_page_id=>10000
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(8475425502189993)
,p_parent_id=>wwv_flow_api.id(8289716789650426)
,p_short_name=>unistr('\30E1\30FC\30EB\30C6\30F3\30D7\30EC\30FC\30C8\306E\7DE8\96C6')
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15586339659473760)
,p_short_name=>unistr('\30DD\30FC\30BF\30EB\4E00\89A7')
,p_link=>'f?p=&APP_ID.:41:&SESSION.'
,p_page_id=>41
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(157484910840296128)
,p_short_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\9055\53CD')
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(176271402299538284)
,p_short_name=>unistr('\671F\9593\30EC\30DD\30FC\30C8')
,p_link=>'f?p=&APP_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(409745322284335224)
,p_parent_id=>0
,p_short_name=>unistr('\8CC7\6599\306E\524A\9664')
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(451674946595083697)
,p_parent_id=>0
,p_short_name=>unistr('\79C1\306E\4FEE\6B63\4F9D\983C')
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(452393387146954226)
,p_parent_id=>0
,p_short_name=>'&AI_BREADCRUMB_NAME.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(452665066749788680)
,p_parent_id=>0
,p_short_name=>unistr('\8A73\7D30\60C5\5831')
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(452698591169805280)
,p_parent_id=>0
,p_short_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(452698842122807938)
,p_parent_id=>0
,p_short_name=>unistr('\691C\7D22\30EF\30FC\30C9\5C65\6B74')
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(454662742820369073)
,p_parent_id=>0
,p_short_name=>unistr('\30D7\30ED\30D5\30A1\30A4\30EB')
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(454864435924365687)
,p_short_name=>unistr('\7D71\8A08\60C5\5831')
,p_link=>'f?p=&APP_ID.:1:&SESSION.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(451150453418606649)
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
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
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
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
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
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
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
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10635894499252780)
,p_page_template_id=>wwv_flow_api.id(451150453418606649)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10636426696252784)
,p_page_template_id=>wwv_flow_api.id(451150453418606649)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10636880428252785)
,p_page_template_id=>wwv_flow_api.id(451150453418606649)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10637407813252785)
,p_page_template_id=>wwv_flow_api.id(451150453418606649)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10637935768252786)
,p_page_template_id=>wwv_flow_api.id(451150453418606649)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10638364560252787)
,p_page_template_id=>wwv_flow_api.id(451150453418606649)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10638908358252788)
,p_page_template_id=>wwv_flow_api.id(451150453418606649)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10639396627252788)
,p_page_template_id=>wwv_flow_api.id(451150453418606649)
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
 p_id=>wwv_flow_api.id(451151315760606708)
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
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
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
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
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
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10644529654252815)
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10645022206252816)
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10645467097252816)
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10645981955252817)
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10646461553252818)
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10647007461252819)
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10647488561252820)
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10648004385252821)
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10648492039252821)
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
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
 p_id=>wwv_flow_api.id(451152362382606710)
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
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container" role="main">#BODY#</div>',
'    </div>',
'  </div>',
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
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10650752149252826)
,p_page_template_id=>wwv_flow_api.id(451152362382606710)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10651184540252826)
,p_page_template_id=>wwv_flow_api.id(451152362382606710)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(451152629665606711)
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
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
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
'      <footer class="t-Footer" role="contentinfo">',
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
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
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
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10655632570252838)
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10656076457252840)
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10656607563252841)
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10657091497252842)
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10657553499252842)
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10658099437252843)
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10658603798252844)
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10659067913252844)
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10659560587252845)
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
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
 p_id=>wwv_flow_api.id(451153607567606717)
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
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
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
'      <footer class="t-Footer" role="contentinfo">',
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
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
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
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10663879874252853)
,p_page_template_id=>wwv_flow_api.id(451153607567606717)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10664362208252854)
,p_page_template_id=>wwv_flow_api.id(451153607567606717)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10664937040252855)
,p_page_template_id=>wwv_flow_api.id(451153607567606717)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10665414882252856)
,p_page_template_id=>wwv_flow_api.id(451153607567606717)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10665863224252857)
,p_page_template_id=>wwv_flow_api.id(451153607567606717)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10666390947252859)
,p_page_template_id=>wwv_flow_api.id(451153607567606717)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10666894376252859)
,p_page_template_id=>wwv_flow_api.id(451153607567606717)
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
 p_id=>wwv_flow_api.id(451154463867606719)
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
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
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
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10669564116252865)
,p_page_template_id=>wwv_flow_api.id(451154463867606719)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10670072291252865)
,p_page_template_id=>wwv_flow_api.id(451154463867606719)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10670622832252866)
,p_page_template_id=>wwv_flow_api.id(451154463867606719)
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
 p_id=>wwv_flow_api.id(451154964181606740)
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
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
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
'      <footer class="t-Footer" role="contentinfo">',
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
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
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
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10675601167252875)
,p_page_template_id=>wwv_flow_api.id(451154964181606740)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10676090583252877)
,p_page_template_id=>wwv_flow_api.id(451154964181606740)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10676581432252877)
,p_page_template_id=>wwv_flow_api.id(451154964181606740)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10677114765252878)
,p_page_template_id=>wwv_flow_api.id(451154964181606740)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10677549974252878)
,p_page_template_id=>wwv_flow_api.id(451154964181606740)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10678051442252879)
,p_page_template_id=>wwv_flow_api.id(451154964181606740)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10678601293252880)
,p_page_template_id=>wwv_flow_api.id(451154964181606740)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10679074869252880)
,p_page_template_id=>wwv_flow_api.id(451154964181606740)
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
 p_id=>wwv_flow_api.id(451155874492606742)
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
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
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
'      <footer class="t-Footer" role="contentinfo">',
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
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
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
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10683441195252888)
,p_page_template_id=>wwv_flow_api.id(451155874492606742)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10683857234252889)
,p_page_template_id=>wwv_flow_api.id(451155874492606742)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10684390650252890)
,p_page_template_id=>wwv_flow_api.id(451155874492606742)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10684912516252891)
,p_page_template_id=>wwv_flow_api.id(451155874492606742)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10685349998252892)
,p_page_template_id=>wwv_flow_api.id(451155874492606742)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10685921394252892)
,p_page_template_id=>wwv_flow_api.id(451155874492606742)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10686378260252894)
,p_page_template_id=>wwv_flow_api.id(451155874492606742)
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
 p_id=>wwv_flow_api.id(451156598567606744)
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
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
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
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10689115319252901)
,p_page_template_id=>wwv_flow_api.id(451156598567606744)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10689626257252902)
,p_page_template_id=>wwv_flow_api.id(451156598567606744)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10690103746252902)
,p_page_template_id=>wwv_flow_api.id(451156598567606744)
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
 p_id=>wwv_flow_api.id(451191635058606944)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
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
 p_id=>wwv_flow_api.id(451191692389606954)
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
 p_id=>wwv_flow_api.id(451191880808606955)
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
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10785773283253145)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
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
 p_id=>wwv_flow_api.id(10786268868253154)
,p_plug_template_id=>wwv_flow_api.id(10785773283253145)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(451157184130606749)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
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
 p_id=>wwv_flow_api.id(10692332788252928)
,p_plug_template_id=>wwv_flow_api.id(451157184130606749)
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
 p_id=>wwv_flow_api.id(451158897956606790)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
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
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(451159048407606793)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
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
 p_id=>wwv_flow_api.id(10743561558253053)
,p_plug_template_id=>wwv_flow_api.id(451159048407606793)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(451159874159606797)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
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
 p_id=>wwv_flow_api.id(10701013408252953)
,p_plug_template_id=>wwv_flow_api.id(451159874159606797)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10701469410252954)
,p_plug_template_id=>wwv_flow_api.id(451159874159606797)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(451160122166606798)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
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
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
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
 p_id=>wwv_flow_api.id(10708263465252974)
,p_plug_template_id=>wwv_flow_api.id(451160122166606798)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10708777168252974)
,p_plug_template_id=>wwv_flow_api.id(451160122166606798)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(451163538186606812)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
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
 p_id=>wwv_flow_api.id(10703089933252956)
,p_plug_template_id=>wwv_flow_api.id(451163538186606812)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10703551054252957)
,p_plug_template_id=>wwv_flow_api.id(451163538186606812)
,p_name=>'Sub Regions'
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
 p_id=>wwv_flow_api.id(451164365751606812)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
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
 p_id=>wwv_flow_api.id(10724866655253012)
,p_plug_template_id=>wwv_flow_api.id(451164365751606812)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10725435244253013)
,p_plug_template_id=>wwv_flow_api.id(451164365751606812)
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
 p_id=>wwv_flow_api.id(451166498655606816)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
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
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(451167479579606819)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
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
 p_id=>wwv_flow_api.id(10749466214253067)
,p_plug_template_id=>wwv_flow_api.id(451167479579606819)
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
 p_id=>wwv_flow_api.id(451168469368606821)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
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
 p_id=>wwv_flow_api.id(451168723210606821)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
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
 p_id=>wwv_flow_api.id(10755291842253078)
,p_plug_template_id=>wwv_flow_api.id(451168723210606821)
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
 p_id=>wwv_flow_api.id(451168985450606821)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
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
 p_id=>wwv_flow_api.id(10756907786253082)
,p_plug_template_id=>wwv_flow_api.id(451168985450606821)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10757361475253083)
,p_plug_template_id=>wwv_flow_api.id(451168985450606821)
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
 p_id=>wwv_flow_api.id(451172129243606832)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
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
 p_id=>wwv_flow_api.id(10776459411253124)
,p_plug_template_id=>wwv_flow_api.id(451172129243606832)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10776960910253124)
,p_plug_template_id=>wwv_flow_api.id(451172129243606832)
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
 p_id=>wwv_flow_api.id(451173378455606832)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
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
 p_id=>wwv_flow_api.id(451173744480606833)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
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
 p_id=>wwv_flow_api.id(10783843504253139)
,p_plug_template_id=>wwv_flow_api.id(451173744480606833)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10844613053253351)
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
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(451182371856606877)
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
 p_id=>wwv_flow_api.id(451184048679606900)
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
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(451186438532606906)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
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
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(451186905897606910)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
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
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(451187020660606912)
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
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(451187628904606912)
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
 p_id=>wwv_flow_api.id(451188450634606919)
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
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(451189638206606921)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_preset_template_options=>'t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(451189729278606923)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa''});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(451189871193606923)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(451190609058606924)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10895191018253511)
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
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
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
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/hashtags
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(311067745437415751)
,p_row_template_name=>'Hashtags'
,p_internal_name=>'HASHTAGS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a onclick=''apex.submit({ set:{"#ITEM_NAME#":"##HASHTAG#"}, showWait:true });''>##HASHTAG#(#COUNT#)</a>&nbsp;',
''))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="#COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_hashtags">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
' </div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>',
''))
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
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(451174370423606837)
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
 p_id=>wwv_flow_api.id(451174433492606849)
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
 p_id=>wwv_flow_api.id(451176109739606860)
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
 p_id=>wwv_flow_api.id(451178475038606863)
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
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(451178859609606863)
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
 p_id=>wwv_flow_api.id(451178892326606865)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" aria-label="#REGION_TITLE#">'))
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
 p_id=>wwv_flow_api.id(451178892326606865)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(451180245295606868)
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
 p_id=>wwv_flow_api.id(451181261966606870)
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
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(451182122937606870)
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
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10901718348253545)
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
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10902025366253548)
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
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(451191140171606930)
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
 p_id=>wwv_flow_api.id(451191223520606938)
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
 p_id=>wwv_flow_api.id(451191310691606938)
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
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(451191400021606938)
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
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
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
 p_id=>wwv_flow_api.id(451191506571606940)
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
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(451192287083606957)
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
 p_id=>wwv_flow_api.id(451192439676606987)
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
 p_id=>wwv_flow_api.id(451192304241606966)
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
 p_id=>wwv_flow_api.id(451193014703607023)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(451155874492606742)
,p_default_dialog_template=>wwv_flow_api.id(451154463867606719)
,p_error_template=>wwv_flow_api.id(451152362382606710)
,p_printer_friendly_template=>wwv_flow_api.id(451155874492606742)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(451152362382606710)
,p_default_button_template=>wwv_flow_api.id(451191692389606954)
,p_default_region_template=>wwv_flow_api.id(451168985450606821)
,p_default_chart_template=>wwv_flow_api.id(451168985450606821)
,p_default_form_template=>wwv_flow_api.id(451168985450606821)
,p_default_reportr_template=>wwv_flow_api.id(451168985450606821)
,p_default_tabform_template=>wwv_flow_api.id(451168985450606821)
,p_default_wizard_template=>wwv_flow_api.id(451168985450606821)
,p_default_menur_template=>wwv_flow_api.id(451173378455606832)
,p_default_listr_template=>wwv_flow_api.id(451168985450606821)
,p_default_irr_template=>wwv_flow_api.id(451168469368606821)
,p_default_report_template=>wwv_flow_api.id(451178892326606865)
,p_default_label_template=>wwv_flow_api.id(451191223520606938)
,p_default_menu_template=>wwv_flow_api.id(451192287083606957)
,p_default_calendar_template=>wwv_flow_api.id(451192304241606966)
,p_default_list_template=>wwv_flow_api.id(451187628904606912)
,p_default_nav_list_template=>wwv_flow_api.id(451190609058606924)
,p_default_top_nav_list_temp=>wwv_flow_api.id(451190609058606924)
,p_default_side_nav_list_temp=>wwv_flow_api.id(451189638206606921)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(451163538186606812)
,p_default_dialogr_template=>wwv_flow_api.id(451158897956606790)
,p_default_option_label=>wwv_flow_api.id(451191223520606938)
,p_default_required_label=>wwv_flow_api.id(451191400021606938)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(451186905897606910)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.3/')
,p_files_version=>62
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
 p_id=>wwv_flow_api.id(10427984046252271)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(10428383998252273)
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
 p_id=>wwv_flow_api.id(10428785402252274)
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
 p_id=>wwv_flow_api.id(10429202405252274)
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
 p_id=>wwv_flow_api.id(10429549310252275)
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
 p_id=>wwv_flow_api.id(10532397721252506)
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
 p_id=>wwv_flow_api.id(10532817525252508)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10533195853252509)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10533579990252510)
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
 p_id=>wwv_flow_api.id(10533959093252511)
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
 p_id=>wwv_flow_api.id(10534422798252511)
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
 p_id=>wwv_flow_api.id(10534747474252512)
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
 p_id=>wwv_flow_api.id(10535213437252513)
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
 p_id=>wwv_flow_api.id(10535598933252514)
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
 p_id=>wwv_flow_api.id(10535974365252515)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10536412042252516)
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
 p_id=>wwv_flow_api.id(10536815769252517)
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
 p_id=>wwv_flow_api.id(10537222969252518)
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
 p_id=>wwv_flow_api.id(10537547545252519)
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
 p_id=>wwv_flow_api.id(10537963514252519)
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
 p_id=>wwv_flow_api.id(10538442625252520)
,p_theme_id=>42
,p_name=>'PRESERVE_LABEL_SPACING'
,p_display_name=>'Preserve Label Spacing'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_help_text=>'Preserves the label space and enables use of the Label Column Span property.'
,p_null_text=>'Yes'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10538837475252520)
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
 p_id=>wwv_flow_api.id(10539221906252521)
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
 p_id=>wwv_flow_api.id(10539596183252522)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10540034541252522)
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
 p_id=>wwv_flow_api.id(10540352448252523)
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
 p_id=>wwv_flow_api.id(10540817864252524)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10541161085252524)
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
 p_id=>wwv_flow_api.id(10541567069252525)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10542007741252525)
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
 p_id=>wwv_flow_api.id(10542407912252526)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10542673216252526)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10543133977252527)
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
 p_id=>wwv_flow_api.id(10543491712252528)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10543882634252529)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10544293043252529)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10544710019252530)
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
 p_id=>wwv_flow_api.id(10545135898252530)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10545513342252531)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10545847026252532)
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
 p_id=>wwv_flow_api.id(10546281533252534)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10546714901252535)
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
 p_id=>wwv_flow_api.id(10547119189252536)
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
 p_id=>wwv_flow_api.id(10547527943252537)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10547937374252537)
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
 p_id=>wwv_flow_api.id(10548249433252538)
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
 p_id=>wwv_flow_api.id(10548732692252539)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10549132012252539)
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
 p_id=>wwv_flow_api.id(10549540535252540)
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
 p_id=>wwv_flow_api.id(10549941610252541)
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
 p_id=>wwv_flow_api.id(10550305396252541)
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
 p_id=>wwv_flow_api.id(10550669417252542)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10551073593252542)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10551472846252543)
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
 p_id=>wwv_flow_api.id(10551874020252543)
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
 p_id=>wwv_flow_api.id(10552287913252544)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10552709590252545)
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
 p_id=>wwv_flow_api.id(10553053560252545)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10553484945252546)
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
 p_id=>wwv_flow_api.id(10553918901252547)
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
 p_id=>wwv_flow_api.id(10554317356252547)
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
 p_id=>wwv_flow_api.id(10554691492252548)
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
 p_id=>wwv_flow_api.id(10555054596252548)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10555462725252549)
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
 p_id=>wwv_flow_api.id(10555936820252549)
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
 p_id=>wwv_flow_api.id(10556300170252552)
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
 p_id=>wwv_flow_api.id(10556712018252552)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10557082645252554)
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
 p_id=>wwv_flow_api.id(10557464317252554)
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
 p_id=>wwv_flow_api.id(10557885801252555)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10558308982252556)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10558742070252557)
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
 p_id=>wwv_flow_api.id(10559092538252558)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10559515217252558)
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
 p_id=>wwv_flow_api.id(10559882612252559)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10560292943252560)
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
 p_id=>wwv_flow_api.id(10560645391252561)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10561108576252562)
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
 p_id=>wwv_flow_api.id(10561450282252562)
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
 p_id=>wwv_flow_api.id(10561872077252563)
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
 p_id=>wwv_flow_api.id(10562305711252564)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10562723403252565)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10563067619252565)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10563495308252566)
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
 p_id=>wwv_flow_api.id(10563940850252566)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10564337422252567)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10564725067252568)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10585475459252622)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(10536815769252517)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10586152338252626)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(10555462725252549)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10586907956252627)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(10536815769252517)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10587635470252629)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(10555462725252549)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10588287549252631)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(10536815769252517)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10588971018252632)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(10555462725252549)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10589661921252633)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(10536815769252517)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10590364390252634)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(10555462725252549)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10591054181252635)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(10537963514252519)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10591804896252636)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(10555936820252549)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10592521506252638)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(10537963514252519)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10593215301252639)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(10555936820252549)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10593885969252640)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(10537963514252519)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10594625025252642)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(10555936820252549)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10595305755252643)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(10537963514252519)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10595945354252644)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(10555936820252549)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10596741520252648)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(10539221906252521)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10597438830252651)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(10556300170252552)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10598112495252652)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(10539221906252521)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10598772628252653)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(10556300170252552)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10599487690252654)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(10539221906252521)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10600200563252655)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(10556300170252552)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10600907149252656)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(10539221906252521)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10601551431252657)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(10556300170252552)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10602339347252659)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(10540034541252522)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10602987285252661)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(10557082645252554)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10603680955252662)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(10540034541252522)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10604435887252663)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(10557082645252554)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10605106915252664)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(10540034541252522)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10605748112252665)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(10557082645252554)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10606503209252668)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(10540034541252522)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10607216133252669)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(10557082645252554)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10607940167252670)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(10533579990252510)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10608603104252672)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(10535974365252515)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10609283998252674)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(10534422798252511)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10610036586252675)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(10534747474252512)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10610680171252676)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(10533959093252511)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10611397953252677)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(10535213437252513)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10612064606252681)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(10535598933252514)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10612791828252682)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(10535598933252514)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10613519089252685)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(10533959093252511)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10614171314252686)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(10534422798252511)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10614895375252687)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(10534747474252512)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10615634697252689)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(10535213437252513)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10616303572252691)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(10532397721252506)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10616997485252692)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(10532397721252506)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10617684411252694)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(10532397721252506)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10618343764252695)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(10535974365252515)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10619069328252697)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(10535598933252514)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10619762885252698)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(10533579990252510)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10620491805252699)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(10536412042252516)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10621242717252700)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(10535974365252515)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10621901289252702)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(10533579990252510)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10622630339252703)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(10535974365252515)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10623265170252704)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(10554691492252548)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10623994899252705)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(10553484945252546)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10624651625252706)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(10554317356252547)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10625373004252707)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(10553053560252545)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10626069789252710)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(10553053560252545)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10626791846252711)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(10553918901252547)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10627517274252713)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(10553484945252546)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10628228282252714)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(10537222969252518)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10628882877252716)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(10537547545252519)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10629569690252717)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(10539596183252522)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10630286462252718)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(10539596183252522)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10630972663252720)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(10538837475252520)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10631383829252721)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10632108746252722)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(10563067619252565)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10639889949252795)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(451150453418606649)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10648974152252822)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(451151315760606708)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10660110649252846)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(451152629665606711)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10667347462252860)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(451153607567606717)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10671083056252867)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(451154463867606719)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10679634776252881)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(451154964181606740)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10686936481252896)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(451155874492606742)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10690620579252903)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(451156598567606744)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10704117194252958)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451163538186606812)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10709275763252975)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10726185891253015)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(10549941610252541)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10726854494253017)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(10550305396252541)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10738896356253044)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451166498655606816)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10744405150253055)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451159048407606793)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(10552709590252545)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10745132551253056)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451159048407606793)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(10552709590252545)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10750016052253067)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(451167479579606819)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10757850803253084)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10781007155253132)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451173378455606832)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10786831817253160)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10785773283253145)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10787196492253160)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10785773283253145)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(10551073593252542)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10787562728253161)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10785773283253145)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(10551073593252542)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10788014713253162)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10785773283253145)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(10551073593252542)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10788433850253163)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10785773283253145)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(10551073593252542)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10788769361253164)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10785773283253145)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10789208061253165)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10785773283253145)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10790501683253192)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10790913552253193)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10791631373253194)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10801851142253219)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(10543133977252527)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10802591277253220)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(10543133977252527)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10803316928253223)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10803710087253224)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10820829781253268)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(10543133977252527)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10821521346253269)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(10543133977252527)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10829695936253298)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451189729278606923)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10830960650253304)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451189638206606921)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10831655284253305)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451189638206606921)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10832353165253307)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451189638206606921)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10833093297253308)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451189638206606921)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10841883976253344)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(451187020660606912)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10845084416253356)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10844613053253351)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(10544710019252530)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10845479680253356)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10844613053253351)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(10542007741252525)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10845900665253357)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10844613053253351)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(10544710019252530)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10846286024253359)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10844613053253351)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(10542007741252525)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10846723092253360)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10844613053253351)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(10542007741252525)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10848268059253386)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(10564725067252568)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10848647491253387)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10849402506253390)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(10564725067252568)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10859732372253418)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(10561872077252563)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10860383238253420)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(10561872077252563)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10861124130253422)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(10564725067252568)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10861542603253424)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10875026779253456)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451178475038606863)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(10561872077252563)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10875658768253457)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451178475038606863)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(10561872077252563)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10895662420253516)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10896135344253518)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10896506085253519)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10896924482253520)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10897299390253520)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10897685453253521)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(10561872077252563)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10898096239253522)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(10561872077252563)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10898449495253522)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(10564337422252567)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10898857518253523)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10899259435253524)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10899740858253525)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10900116593253525)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10900536103253526)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10895191018253511)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10903253976253591)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(10532817525252508)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10903983410253593)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(10532817525252508)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10906255706253604)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(10532817525252508)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10906948082253607)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(10532817525252508)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10907387881253608)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451154877959606734)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(451154463867606719)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451156989136606746)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(451156598567606744)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451157403752606783)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(10547119189252536)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451157540020606786)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451157744264606789)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(10546714901252535)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451157932296606789)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(10547527943252537)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451158027065606790)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(10546714901252535)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451158202176606790)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(10546281533252534)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451158301249606790)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(10547527943252537)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451158454127606790)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(10546714901252535)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451158578649606790)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(10547119189252536)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451158658808606790)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(10547527943252537)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451158718134606790)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(10547527943252537)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451158856159606790)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451157184130606749)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(10546281533252534)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451159294346606795)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451159048407606793)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451159485824606796)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451159048407606793)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451159670929606797)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451159048407606793)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(10551472846252543)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451159737266606797)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451159048407606793)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451160515319606800)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451160592984606800)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451160763327606807)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451160867162606807)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451161070960606808)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(10558742070252557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451161089939606808)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(10558742070252557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451161195235606808)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(10558742070252557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451161308092606808)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(10558742070252557)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451161465261606809)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451161573721606809)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451161780810606809)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451161835214606810)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451161916130606810)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451162004692606810)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451162175396606810)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451162335195606810)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(10547937374252537)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451162470615606810)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(10547937374252537)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451162603387606810)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(10548732692252539)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451162861412606810)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(10551874020252543)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451162916881606810)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451163071442606810)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451163181302606810)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(10551874020252543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451163209096606811)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(10548732692252539)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451163344645606811)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451163468567606812)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451160122166606798)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451163853032606812)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(451163538186606812)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451164078228606812)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(451163538186606812)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(10549132012252539)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451164158577606812)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(451163538186606812)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451164196720606812)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(451163538186606812)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(10549132012252539)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451164661105606814)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451164731834606814)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451164867936606814)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451164959323606814)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451165144316606814)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(10550669417252542)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451165271003606814)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(10550669417252542)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451165314601606814)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451165477509606815)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451165494016606815)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451165617077606815)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451165761820606815)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451165810027606815)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451165945104606815)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(10548732692252539)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451166057967606815)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451166184924606815)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451166230798606816)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451166306694606816)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(10548732692252539)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451166421843606816)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451164365751606812)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451166758521606816)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451166498655606816)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(10556712018252552)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451166880166606816)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451166498655606816)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(10556712018252552)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451166987406606816)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451166498655606816)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(10556712018252552)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451167133500606817)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451166498655606816)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(10549540535252540)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451167282048606817)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451166498655606816)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451167336056606819)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451166498655606816)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(10549540535252540)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451167604231606820)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(451167479579606819)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451167828064606820)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451167479579606819)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(10551073593252542)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451167978785606820)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451167479579606819)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(10551073593252542)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451168000085606820)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451167479579606819)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(10551073593252542)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451168105924606820)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451167479579606819)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451168236082606820)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451167479579606819)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451168357650606820)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451167479579606819)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451168523237606821)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451168469368606821)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451168618804606821)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451168469368606821)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451169233195606823)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451169388633606823)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451169469320606823)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451169565722606824)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(10548249433252538)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451169687343606824)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451169764101606824)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451169858094606824)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451169974525606824)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170017981606824)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170135567606824)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170196811606824)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170305509606824)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170405972606825)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170587242606825)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170617939606825)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170752567606825)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170868405606826)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451170898449606826)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171072341606826)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171150021606826)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(10545847026252532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171258235606826)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(10548732692252539)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171338841606826)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(10551874020252543)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171417542606831)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171574271606831)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171648930606831)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171740904606831)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(10551874020252543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171881818606831)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(10548732692252539)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451171911920606832)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451172081541606832)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(451168985450606821)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(10557464317252554)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451172463085606832)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451172129243606832)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451172602922606832)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451172129243606832)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(10555054596252548)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451172854453606832)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451172129243606832)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(10557885801252555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451173058046606832)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451172129243606832)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(10558308982252556)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451173100287606832)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451172129243606832)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(10558308982252556)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451173279454606832)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451172129243606832)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(10557885801252555)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451173429031606833)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(451173378455606832)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451173567592606833)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(451173378455606832)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(10556712018252552)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451173608906606833)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(451173378455606832)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(10556712018252552)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451174042345606833)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(451173744480606833)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(10552287913252544)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451174169152606833)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451173744480606833)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(10552287913252544)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451174221898606833)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(451173744480606833)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451174604482606850)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451174767130606851)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451174815200606851)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451174925336606851)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451175085043606851)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451175157609606859)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451175226638606859)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451175482590606859)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(10559882612252559)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451175538625606859)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(10559882612252559)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451175782234606860)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(10559882612252559)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451175821208606860)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451175987515606860)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(10559882612252559)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451176082861606860)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(451174433492606849)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(10559882612252559)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451176266688606861)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451176375858606861)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451176445345606861)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451176605831606861)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(10559515217252558)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451176787922606861)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(10559515217252558)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451176985481606861)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(10564725067252568)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451177025159606861)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451177128927606861)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(10564725067252568)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451177334704606861)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(10560292943252560)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451177452084606862)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(10560292943252560)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451177513787606862)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(10560292943252560)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451177697652606862)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(10561450282252562)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451177887847606862)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(10561450282252562)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451177971729606862)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(10564725067252568)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451178036765606862)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451178113593606862)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(10560292943252560)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451178241527606863)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451178293663606863)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451176109739606860)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451178626568606863)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451178475038606863)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(10561108576252562)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451178697380606863)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451178475038606863)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(10561108576252562)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451179125450606866)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451178892326606865)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(10559092538252558)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451179309511606866)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451178892326606865)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(10563495308252566)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451179402482606867)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(451178892326606865)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(10563495308252566)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451179573815606868)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(451178892326606865)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(10563495308252566)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451179699804606868)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451178892326606865)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(10563940850252566)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451179881768606868)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451178892326606865)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(10563940850252566)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451179911152606868)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451178892326606865)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(10559092538252558)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451179991980606868)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451178892326606865)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451180114048606868)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451178892326606865)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(10563495308252566)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451180424914606869)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(451180245295606868)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451180531249606869)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451180245295606868)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451180615344606869)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451180245295606868)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451180753175606869)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451180245295606868)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451180867543606869)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451180245295606868)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451180902588606870)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(451180245295606868)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451181052024606870)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(451180245295606868)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451181156428606870)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(451180245295606868)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451181299362606870)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(451181261966606870)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451181407022606870)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451181261966606870)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451181511477606870)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451181261966606870)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451181671720606870)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(451181261966606870)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451181764277606870)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(451181261966606870)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(10562723403252565)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451181827164606870)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(451181261966606870)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451181943686606870)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(451181261966606870)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451182077877606870)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(451181261966606870)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(10562305711252564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451182272701606873)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(451182122937606870)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(10564725067252568)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451182492133606891)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451182660092606891)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451182690334606896)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451182818017606896)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451182966863606896)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451182989397606896)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451183118433606896)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451183310546606899)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(10540817864252524)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451183485826606899)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(10540817864252524)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451183642163606899)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(10540817864252524)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451183746462606899)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451183827106606900)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(10540817864252524)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451183916288606900)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(451182371856606877)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(10540817864252524)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451184180485606900)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451184243582606901)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451184346887606901)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451184550262606901)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(10540352448252523)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451184684372606901)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(10540352448252523)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451184831937606901)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451184929179606902)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451185022049606902)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451185271248606905)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(10541161085252524)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451185337936606905)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(10541161085252524)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451185478365606905)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(10541161085252524)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451185688204606905)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(10542673216252526)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451185785985606905)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(10542673216252526)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451185843827606905)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451185919323606905)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451186029711606906)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(10541161085252524)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451186098586606906)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451186248745606906)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451186343556606906)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451184048679606900)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451186566894606909)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(451186438532606906)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451186611464606909)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451186438532606906)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451186786022606910)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451186438532606906)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451186864442606910)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451186438532606906)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451187206501606912)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451187020660606912)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(10543882634252529)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451187359911606912)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451187020660606912)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(10543882634252529)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451187480193606912)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451187020660606912)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(10543882634252529)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451187497700606912)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451187020660606912)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451187756242606915)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451187628904606912)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451187872392606915)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451187628904606912)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451187925775606915)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451187628904606912)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451188086819606915)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451187628904606912)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451188222845606919)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451187628904606912)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(10542407912252526)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451188371967606919)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451187628904606912)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(10542407912252526)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451188506351606920)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451188612366606920)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451188774914606920)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451188873675606920)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451188916862606920)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451189126553606920)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(10545135898252530)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451189278978606921)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451189362546606921)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451189471935606921)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451189504396606921)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451189988013606924)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(451189871193606923)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(10544293043252529)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451190088283606924)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451189871193606923)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(10542673216252526)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451190109347606924)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451189871193606923)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(10542673216252526)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451190284640606924)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451189871193606923)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(10545135898252530)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451190301340606924)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(451189871193606923)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451190448303606924)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(451189871193606923)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(10545513342252531)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451190538205606924)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(451189871193606923)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(10545135898252530)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451190751656606925)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(451190609058606924)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451190854322606925)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(451190609058606924)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451190951298606925)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(451190609058606924)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451191019138606927)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(451190609058606924)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451192019499606955)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(10533195853252509)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(451192092165606955)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(10533195853252509)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(8251538045650342)
,p_build_option_name=>unistr('\6A5F\80FD: \30A2\30AF\30BB\30B9\5236\5FA1')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>unistr('\30ED\30FC\30EB\30FB\30D9\30FC\30B9\30FB\30E6\30FC\30B6\30FC\8A8D\8A3C\3092\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\7D44\307F\8FBC\307F\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30ED\30FC\30EB\3078\306E\30E6\30FC\30B6\30FC\540D\30DE\30C3\30D4\30F3\30B0\3092\7BA1\7406\3057\307E\3059\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(8299291135675792)
,p_build_option_name=>unistr('\6A5F\80FD: \30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>unistr('\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\304C\4E00\822C\7684\306A\30B3\30E1\30F3\30C8\3092\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\7BA1\7406\8005\304A\3088\3073\958B\767A\8005\306B\9001\4FE1\3059\308B\305F\3081\306E\30E1\30AB\30CB\30BA\30E0\3092\63D0\4F9B\3057\307E\3059\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(22151712062981425)
,p_build_option_name=>unistr('Seminar&FAQ\30BF\30B0\96C6\7D04')
,p_build_option_status=>'EXCLUDE'
,p_build_option_comment=>unistr('FAQ\3068Seminar\306E\53CC\65B9\3092\30A4\30F3\30B9\30C8\30FC\30EB\3057\305F\3068\304D\306F\542B\3081\308B\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(22229127853369601)
,p_build_option_name=>unistr('\6280\8853\30DD\30FC\30BF\30EB')
,p_build_option_status=>'EXCLUDE'
,p_build_option_comment=>unistr('\8CC7\6599\3068\3057\3066URL\3092\767B\9332\3057\305F\3068\304D\306B\30DD\30FC\30BF\30EB\3067\3042\308B\3001\3068\3044\3046\30D5\30E9\30B0\306E\4ED8\4E0E\3068\4E00\89A7\8868\793A\306E\6A5F\80FD\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(134150242132604042)
,p_build_option_name=>unistr('FAQ\9023\643A')
,p_build_option_status=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>unistr('\5225\9014\3001FAQ\3092\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3068\3057\3066\30A4\30F3\30B9\30C8\30FC\30EB\3057\305F\3068\304D\306F\542B\3081\308B\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(134150351595605495)
,p_build_option_name=>unistr('Field Alert\9023\643A')
,p_build_option_status=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>unistr('Field Alert\306F\975E\516C\958B\6A5F\80FD\3067\3042\308B\305F\3081\3001\30B9\30C6\30FC\30BF\30B9\306F\304B\306A\3089\305A\9664\5916\3068\3059\308B\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(134150804649607812)
,p_build_option_name=>unistr('Seminar\9023\643A')
,p_build_option_status=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>unistr('\5225\9014\3001Seminar\3092\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3068\3057\3066\30A4\30F3\30B9\30C8\30FC\30EB\3057\305F\3068\304D\306F\542B\3081\308B\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(134429047887752051)
,p_build_option_name=>unistr('Download Center\9023\643A')
,p_build_option_status=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>unistr('Download Center\306F\975E\516C\958B\6A5F\80FD\3067\3042\308B\305F\3081\3001\30B9\30C6\30FC\30BF\30B9\306F\304B\306A\3089\305A\9664\5916\3068\3059\308B\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(134429592882756725)
,p_build_option_name=>unistr('\6A5F\80FD: \7BA1\7406')
,p_build_option_status=>'INCLUDE'
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
 p_id=>wwv_flow_api.id(459204781130329291)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
end;
/
prompt --application/shared_components/security/authentications/application_express_account
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(134415349495562937)
,p_name=>'Application Express Account'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(451202514147607094)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:LAUNCHER:&SESSION.:B_INIT:NO:5,RIR::'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(451150342632606620)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(451189638206606921)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--classic'
,p_include_legacy_javascript=>'18'
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(451202450923607091)
,p_nav_bar_list_template_id=>wwv_flow_api.id(451186905897606910)
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
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_comment=>unistr('Love APEX\3092\914D\7F6E\3059\308B\305F\3081\3060\3051\306B\4F7F\7528\3002P0_KEYWORD\3068\3044\3046\30A2\30A4\30C6\30E0\306F\3001\3053\3053\306B\306F\306A\304F\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30A2\30A4\30C6\30E0\3068\3057\3066\5B9A\7FA9\3055\308C\3066\3044\308B\3002')
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190607152211'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\7D71\8A08\60C5\5831')
,p_step_title=>unistr('&APP_NAME.: \7D71\8A08\60C5\5831')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258850202867268354)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190827155009'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454704090370567946)
,p_plug_name=>unistr('\30E6\30FC\30B6\30FC\5225\30D5\30A9\30ED\30EF\30FC\6570')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(454704227864567947)
,p_region_id=>wwv_flow_api.id(454704090370567946)
,p_chart_type=>'bar'
,p_height=>'500'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(454704298510567948)
,p_chart_id=>wwv_flow_api.id(454704227864567947)
,p_seq=>10
,p_name=>unistr('\30D5\30A9\30ED\30EF\30FC\6570')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_followers, ',
'       regexp_replace(username, :AI_STRIP_DOMAIN,''\1'') as username',
'from tcw_followers group by username order by 1 desc',
'fetch first :P1_TOP3 rows only'))
,p_ajax_items_to_submit=>'P1_TOP3'
,p_items_value_column_name=>'NUMBER_OF_FOLLOWERS'
,p_items_label_column_name=>'USERNAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454704575082567950)
,p_chart_id=>wwv_flow_api.id(454704227864567947)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454704413486567949)
,p_chart_id=>wwv_flow_api.id(454704227864567947)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454705112532567956)
,p_plug_name=>unistr('\66F4\65B0\901A\77E5\306E\8A2D\5B9A\3055\308C\305F\6587\66F8')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(454705236428567957)
,p_region_id=>wwv_flow_api.id(454705112532567956)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(454705353369567958)
,p_chart_id=>wwv_flow_api.id(454705236428567957)
,p_seq=>10
,p_name=>unistr('\901A\77E5\8A2D\5B9A\6570')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select count(*)\3000as number_of_notif, l.obj_name as title '),
'from tcw_doc_notifications n join tcw_documents l on n.link_num = l.link_num ',
'group by l.obj_name order by 1 desc ',
'fetch first :P1_TOP4 rows only'))
,p_ajax_items_to_submit=>'P1_TOP4'
,p_items_value_column_name=>'NUMBER_OF_NOTIF'
,p_items_label_column_name=>'TITLE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454705428486567959)
,p_chart_id=>wwv_flow_api.id(454705236428567957)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454705565826567960)
,p_chart_id=>wwv_flow_api.id(454705236428567957)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454705593215567961)
,p_plug_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\306E\591A\3044\6587\66F8')
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(454705741438567962)
,p_region_id=>wwv_flow_api.id(454705593215567961)
,p_chart_type=>'bar'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(454705859211567963)
,p_chart_id=>wwv_flow_api.id(454705741438567962)
,p_seq=>10
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6570(\76F4\8FD1)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_downloads, l.obj_name as title, l.link_num ',
'from tcw_download_history h join tcw_documents l on h.link_num = l.link_num ',
'where date_download > (sysdate - :P1_DAYS1) group by l.obj_name, l.link_num',
'order by 1 desc fetch first :P1_TOP1 rows only',
''))
,p_ajax_items_to_submit=>'P1_DAYS1,P1_TOP1'
,p_items_value_column_name=>'NUMBER_OF_DOWNLOADS'
,p_items_label_column_name=>'TITLE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17,RIR:IR_LINK_NUM:&LINK_NUM.'
,p_link_target_type=>'REDIRECT_PAGE'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P1_DAYS1'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(480958130067883550)
,p_chart_id=>wwv_flow_api.id(454705741438567962)
,p_seq=>20
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6570(\671F\9593)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_downloads, l.obj_name as title, l.link_num',
'from tcw_download_history h join tcw_documents l on h.link_num = l.link_num ',
'where date_download between :P1_PERIOD_START1 and :P1_PERIOD_END1',
'group by l.obj_name, l.link_num order by 1 desc ',
'fetch first :P1_TOP1 rows only',
''))
,p_ajax_items_to_submit=>'P1_PERIOD_START1,P1_PERIOD_END1,P1_TOP1'
,p_items_value_column_name=>'NUMBER_OF_DOWNLOADS'
,p_items_label_column_name=>'TITLE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17,RIR:IR_LINK_NUM:&LINK_NUM.'
,p_link_target_type=>'REDIRECT_PAGE'
,p_display_when_cond_type=>'ITEM_IS_NULL'
,p_display_when_condition=>'P1_DAYS1'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454706071074567965)
,p_chart_id=>wwv_flow_api.id(454705741438567962)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454705906249567964)
,p_chart_id=>wwv_flow_api.id(454705741438567962)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454706442398567969)
,p_plug_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\306E\591A\3044\8CC7\6599\4F5C\6210\8005')
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(454876224287532221)
,p_region_id=>wwv_flow_api.id(454706442398567969)
,p_chart_type=>'bar'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(454876309831532222)
,p_chart_id=>wwv_flow_api.id(454876224287532221)
,p_seq=>10
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6570(\76F4\8FD1)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_downloads, ',
'       regexp_replace(username, :AI_STRIP_DOMAIN,''\1'') as username',
'from',
' (',
'  select 1 as cnt, ',
'  case ',
'  when h.last_updated_by is null then l.upd_username',
'  else h.last_updated_by',
'  end username',
'  from tcw_documents l join tcw_download_history h on l.link_num = h.link_num',
'  where h.date_download > (sysdate - :P1_DAYS2)',
'  ) t',
' group by username order by 1 desc ',
'fetch first :P1_TOP2 rows only',
''))
,p_ajax_items_to_submit=>'P1_DAYS2'
,p_items_value_column_name=>'NUMBER_OF_DOWNLOADS'
,p_items_label_column_name=>'USERNAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17,RIR:IR_LAST_UPDATED_BY:&USERNAME.&DOMAIN_NAME.'
,p_link_target_type=>'REDIRECT_PAGE'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P1_DAYS2'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(480960018518883569)
,p_chart_id=>wwv_flow_api.id(454876224287532221)
,p_seq=>20
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6570(\671F\9593)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_downloads,',
'       regexp_replace(username, :AI_STRIP_DOMAIN,''\1'') as username',
'from',
' (',
'  select 1 as cnt, ',
'  case ',
'  when h.last_updated_by is null then l.upd_username',
'  else h.last_updated_by',
'  end username',
'  from tcw_documents l join tcw_download_history h on l.link_num = h.link_num',
'  where h.date_download between :P1_PERIOD_START2 and :P1_PERIOD_END2',
'  ) t',
' group by username order by 1 desc ',
'fetch first :P1_TOP2 rows only',
''))
,p_ajax_items_to_submit=>'P1_PERIOD_START2,P1_PERIOD_END2,P1_TOP2'
,p_items_value_column_name=>'NUMBER_OF_DOWNLOADS'
,p_items_label_column_name=>'USERNAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17,RIR:IR_LAST_UPDATED_BY:&USERNAME.&DOMAIN_NAME.'
,p_link_target_type=>'REDIRECT_PAGE'
,p_display_when_cond_type=>'ITEM_IS_NULL'
,p_display_when_condition=>'P1_DAYS2'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454876418161532223)
,p_chart_id=>wwv_flow_api.id(454876224287532221)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454876552878532224)
,p_chart_id=>wwv_flow_api.id(454876224287532221)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454863989805365680)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454878332061532242)
,p_plug_name=>unistr('\65E5\6B21\30C0\30A6\30F3\30ED\30FC\30C9\6570')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(454878444611532243)
,p_region_id=>wwv_flow_api.id(454878332061532242)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(454878559282532244)
,p_chart_id=>wwv_flow_api.id(454878444611532243)
,p_seq=>10
,p_name=>unistr('\6587\66F8\6570')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(link_num) as cnt, trunc(date_download) as ddate',
'from TCW_DOWNLOAD_HISTORY ',
'where date_download > (sysdate - :P1_DAYS3)',
'group by trunc(date_download)'))
,p_ajax_items_to_submit=>'P1_DAYS3'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'DDATE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454878768810532246)
,p_chart_id=>wwv_flow_api.id(454878444611532243)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454878617694532245)
,p_chart_id=>wwv_flow_api.id(454878444611532243)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454879145819532250)
,p_plug_name=>unistr('\65E5\6B21\691C\7D22\6570')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(454899335723532252)
,p_region_id=>wwv_flow_api.id(454879145819532250)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(454899410171532253)
,p_chart_id=>wwv_flow_api.id(454899335723532252)
,p_seq=>10
,p_name=>unistr('\691C\7D22\6570')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(distinct username) as cnt, trunc(date_query) as ddate',
' from TCW_QUERY_HISTORY where term_position = 1',
'  and date_query > (sysdate - :P1_DAYS4)',
'group by trunc(date_query);'))
,p_ajax_items_to_submit=>'P1_DAYS4'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'DDATE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454899647853532255)
,p_chart_id=>wwv_flow_api.id(454899335723532252)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454899554307532254)
,p_chart_id=>wwv_flow_api.id(454899335723532252)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454900015967532259)
,p_plug_name=>unistr('\65E5\6B21\306E\5229\7528\8005\6570(\91CD\8907\7121\3057)')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(454900244840532261)
,p_region_id=>wwv_flow_api.id(454900015967532259)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(454900346260532262)
,p_chart_id=>wwv_flow_api.id(454900244840532261)
,p_seq=>10
,p_name=>unistr('\5229\7528\8005\6570')
,p_data_source_type=>'SQL'
,p_data_source=>'select count(distinct apex_user) as cnt, trunc(view_date) as ddate from apex_workspace_activity_log group by trunc(view_date);'
,p_ajax_items_to_submit=>'P1_DAYS2'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'DDATE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454900582805532264)
,p_chart_id=>wwv_flow_api.id(454900244840532261)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(454900410083532263)
,p_chart_id=>wwv_flow_api.id(454900244840532261)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(170144243755911511)
,p_name=>'P1_TOP3'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(454704090370567946)
,p_item_default=>'10'
,p_prompt=>unistr('\8868\793A\6570')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(170144608836911514)
,p_name=>'P1_TOP4'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(454705112532567956)
,p_item_default=>'10'
,p_prompt=>unistr('\8868\793A\6570')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454706164920567966)
,p_name=>'P1_DAYS1'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(454705593215567961)
,p_item_default=>'7'
,p_prompt=>unistr('\671F\9593')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\76F4\8FD17\65E5;7,\76F4\8FD130\65E5;30,\76F4\8FD190\65E5;90')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454706511154567970)
,p_name=>'P1_DAYS2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(454706442398567969)
,p_item_default=>'7'
,p_prompt=>unistr('\671F\9593')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\76F4\8FD17\65E5;7,\76F4\8FD130\65E5;30,\76F4\8FD190\65E5;90')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454878880477532247)
,p_name=>'P1_DAYS3'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(454878332061532242)
,p_item_default=>'7'
,p_prompt=>unistr('\671F\9593')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\76F4\8FD130\65E5;30,\76F4\8FD190\65E5;90,\76F4\8FD1180\65E5;180,\904E\53BB1\5E74\9593;365')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454879210369532251)
,p_name=>'P1_DAYS4'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(454879145819532250)
,p_item_default=>'7'
,p_prompt=>unistr('\671F\9593')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\76F4\8FD130\65E5;30,\76F4\8FD190\65E5;90,\76F4\8FD1180\65E5;180,\904E\53BB1\5E74\9593;365')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480957960515883548)
,p_name=>'P1_PERIOD_START1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(454705593215567961)
,p_prompt=>unistr('\671F\9593\958B\59CB')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480958085289883549)
,p_name=>'P1_PERIOD_END1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(454705593215567961)
,p_prompt=>unistr('\671F\9593\7D42\4E86')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'NONE'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480958986778883558)
,p_name=>'P1_TOP1'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(454705593215567961)
,p_item_default=>'10'
,p_prompt=>unistr('\8868\793A\6570')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480959717617883566)
,p_name=>'P1_TOP2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(454706442398567969)
,p_item_default=>'10'
,p_prompt=>unistr('\8868\793A\6570')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480959794265883567)
,p_name=>'P1_PERIOD_START2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(454706442398567969)
,p_prompt=>unistr('\671F\9593\958B\59CB')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(480959913199883568)
,p_name=>'P1_PERIOD_END2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(454706442398567969)
,p_prompt=>unistr('\671F\9593\7D42\4E86')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(454706212241567967)
,p_name=>'Refresh Chart 1-1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(454706383026567968)
,p_event_id=>wwv_flow_api.id(454706212241567967)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454705593215567961)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(454876623591532225)
,p_name=>unistr('\671F\9593\5909\66F42')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(454876752911532226)
,p_event_id=>wwv_flow_api.id(454876623591532225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454706442398567969)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(454878937259532248)
,p_name=>unistr('\671F\9593\5909\66F4\FF13')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(454878991230532249)
,p_event_id=>wwv_flow_api.id(454878937259532248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454878332061532242)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(454899712584532256)
,p_name=>unistr('\671F\9593\5909\66F4\FF14')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(454899789187532257)
,p_event_id=>wwv_flow_api.id(454899712584532256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454879145819532250)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(480958544494883554)
,p_name=>'Refresh Chart 1-2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PERIOD_START1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(480958642875883555)
,p_event_id=>wwv_flow_api.id(480958544494883554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454705593215567961)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(480958765935883556)
,p_name=>'Refresh Chart 1-3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PERIOD_END1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(480958880454883557)
,p_event_id=>wwv_flow_api.id(480958765935883556)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454705593215567961)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(480959031035883559)
,p_name=>'Show Period'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS1'
,p_condition_element=>'P1_DAYS1'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(480959147410883560)
,p_event_id=>wwv_flow_api.id(480959031035883559)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_PERIOD_START1,P1_PERIOD_END1'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(480959266879883561)
,p_name=>'Hide Period'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS1'
,p_condition_element=>'P1_DAYS1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(480959325113883562)
,p_event_id=>wwv_flow_api.id(480959266879883561)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_PERIOD_START1,P1_PERIOD_END1'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(480959410987883563)
,p_name=>'Refresh Chart 1-4'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_TOP1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(480959520740883564)
,p_event_id=>wwv_flow_api.id(480959410987883563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454705593215567961)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(480960117946883570)
,p_name=>'Refresh Chart 2-4'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_TOP2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(482543332579584521)
,p_event_id=>wwv_flow_api.id(480960117946883570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454706442398567969)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(482543409696584522)
,p_name=>'Refresh Chart 2-1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PERIOD_START2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(482543545406584523)
,p_event_id=>wwv_flow_api.id(482543409696584522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454706442398567969)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(482543596577584524)
,p_name=>'Refresh Chart 2-2'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PERIOD_END2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(482543692048584525)
,p_event_id=>wwv_flow_api.id(482543596577584524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454706442398567969)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(482543822502584526)
,p_name=>'Show Period 2'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS2'
,p_condition_element=>'P1_DAYS2'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(482543890226584527)
,p_event_id=>wwv_flow_api.id(482543822502584526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_PERIOD_START2,P1_PERIOD_END2'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(482544085643584528)
,p_name=>'Hide Period 2'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS2'
,p_condition_element=>'P1_DAYS2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(482544147795584529)
,p_event_id=>wwv_flow_api.id(482544085643584528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_PERIOD_START2,P1_PERIOD_END2'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(170144393384911512)
,p_name=>'Refresh Chart 3'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_TOP3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(170144450012911513)
,p_event_id=>wwv_flow_api.id(170144393384911512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454704090370567946)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(170144719537911515)
,p_name=>'Refresh Chart 4'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_TOP4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(170144774738911516)
,p_event_id=>wwv_flow_api.id(170144719537911515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(454705112532567956)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\8CC7\6599\306E\767B\9332\7DE8\96C6')
,p_step_title=>'&APP_NAME.: &AI_BREADCRUMB_NAME.'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(258848669354256797)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(451155874492606742)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190828181734'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(409515082667595143)
,p_plug_name=>unistr('\95A2\9023\30EA\30F3\30AF\306E\7DE8\96C6')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>'select doc_id, link_type, link_url, note from tcw_doc_links where doc_id = :P2_LINK_NUM'
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P2_LINK_NUM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_LINK_NUM'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(409515225055595145)
,p_name=>'DOC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOC_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P2_LINK_NUM'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(409515317539595146)
,p_name=>'LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_TYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\30EA\30F3\30AF\5148')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(451603328004027690)
,p_lov_display_extra=>false
,p_lov_display_null=>true
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(409515401844595147)
,p_name=>'LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_URL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'URL'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(409515542017595148)
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
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(409515662391595149)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(409515695680595150)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(451571771737923347)
,p_name=>'NOTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Note'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(409515166910595144)
,p_internal_uid=>21730678199144824
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.initActions = function( actions ) {',
'        actions.hide("show-download-dialog");',
'        actions.hide("chart-view");',
'    }',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(409748258537600873)
,p_interactive_grid_id=>wwv_flow_api.id(409515166910595144)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(409748303618600875)
,p_report_id=>wwv_flow_api.id(409748258537600873)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(409763450128290158)
,p_view_id=>wwv_flow_api.id(409748303618600875)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(409515542017595148)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(409763905813290185)
,p_view_id=>wwv_flow_api.id(409748303618600875)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(409515662391595149)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(409768813384600894)
,p_view_id=>wwv_flow_api.id(409748303618600875)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(409515225055595145)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(409769249209600914)
,p_view_id=>wwv_flow_api.id(409748303618600875)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(409515317539595146)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>120
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(409769769717600919)
,p_view_id=>wwv_flow_api.id(409748303618600875)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(409515401844595147)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(453662950579317379)
,p_view_id=>wwv_flow_api.id(409748303618600875)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(451571771737923347)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(451570073549923330)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(451572963323923359)
,p_plug_name=>unistr('\95A2\9023\30EA\30F3\30AF\306E\7DE8\96C6')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\95A2\9023\30EA\30F3\30AF\306E\7DE8\96C6\306F\8CC7\6599\3092\4E00\65E6\767B\9332\3057\305F\5F8C\306B\5B9F\65BD\3057\3066\304F\3060\3055\3044\3002')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P2_LINK_NUM'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(457184926603526572)
,p_plug_name=>unistr('\8CC7\6599\306E\767B\9332\7DE8\96C6')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452298313828695355)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_api.id(457184926603526572)
,p_button_name=>'B_ABSTRACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_button_image_alt=>unistr('\6982\8981\306E\307F\66F4\65B0')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22:P22_LINK_NUM:&P2_LINK_NUM.'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452296706457695350)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(457184926603526572)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P2_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452297168688695353)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(457184926603526572)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\30AD\30E3\30F3\30BB\30EB')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452297566914695354)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(457184926603526572)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\767B\9332')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452297917798695354)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(457184926603526572)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(''本当に削除しますか？'',''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452298776972695356)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(457184926603526572)
,p_button_name=>'B_ACL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\7DE8\96C6\6A29\9650\306E\5272\5F53')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_LINK_NUM:&P2_LINK_NUM.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from tcw_documents where link_num = :P2_LINK_NUM and reg_username = :APP_USER',
'union',
'select 1 from tcw_documents where link_num = :P2_LINK_NUM and upd_username = :APP_USER',
'union',
'select 1 from tcw_doc_acls where link_num = :P2_LINK_NUM and user_name = :APP_USER'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(452326100758695424)
,p_branch_name=>'Go To Page 3 - CREATE'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_LINK_NUM:&P2_LINK_NUM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(452297566914695354)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(452325321320695420)
,p_branch_name=>'Go To Page 3 - SAVE'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_LINK_NUM:&P2_LINK_NUM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(452296706457695350)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(452325698481695423)
,p_branch_name=>'Go To Page 8 - DELETE'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_LINK_NUM:&P2_LINK_NUM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(452297917798695354)
,p_branch_sequence=>21
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10714729196972682)
,p_name=>'P2_IS_PORTAL'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30DD\30FC\30BF\30EB\3067\3059\304B\FF1F')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select is_portal from tcw_documents',
'where link_num = :P2_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(22229127853369601)
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\306F\3044')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3044\3044\3048')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10715661289972691)
,p_name=>'P2_IS_PROTECTED'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_item_default=>'N'
,p_prompt=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\7981\6B62')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select is_protected from tcw_documents',
'where link_num = :P2_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_display_when=>'tcw_util.get_preference(''ADVANCED_MODE'', ''N'') = ''Y'''
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(451191400021606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10715769050972692)
,p_name=>'P2_IS_AUTHOR'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_item_default=>'Y'
,p_prompt=>unistr('\4F5C\6210\8005\3067\3059\304B\FF1F')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select is_author from tcw_documents',
'where link_num = :P2_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_display_when=>'tcw_util.get_preference(''ADVANCED_MODE'', ''N'') = ''Y'''
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(451191400021606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452299122857695357)
,p_name=>'P2_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_use_cache_before_default=>'NO'
,p_source=>'LINK_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452309497677695361)
,p_name=>'P2_REG_DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>unistr('\767B\9332\65E5')
,p_format_mask=>'YYYY-MM-DD'
,p_source=>'select reg_date from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(451191400021606938)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>unistr('\6700\521D\306B\8CC7\6599\3092\767B\9332\3057\305F\65E5\4ED8\3084\3001\8CC7\6599\304C\6709\52B9\306B\306A\308B\65E5\4ED8\3092\6307\5B9A\3057\307E\3059\3002\66F4\65B0\65E5\6642\306F\81EA\52D5\3067\66F4\65B0\3055\308C\307E\3059\3002')
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452309930943695361)
,p_name=>'P2_OBJ_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_prompt=>unistr('\30BF\30A4\30C8\30EB')
,p_source=>'select obj_name from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>250
,p_field_template=>wwv_flow_api.id(451191400021606938)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\30EC\30DD\30FC\30C8\4E0A\306F\3001\30D5\30A1\30A4\30EB\306E\30C0\30A6\30F3\30ED\30FC\30C9\30EA\30F3\30AF\3001\307E\305F\306F\3001\30D5\30A1\30A4\30EB\306E\30A2\30C3\30D7\30ED\30C9\304C\306A\3044\5834\5408\306F\3001\6307\5B9A\3057\305FURL\3078\306E\30EA\30F3\30AF\306E\3069\3061\3089\304B\306B\306A\308A\307E\3059\3002')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452310388180695362)
,p_name=>'P2_OBJ_VERSION'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_item_default=>'1.0'
,p_prompt=>unistr('\30D0\30FC\30B8\30E7\30F3')
,p_source=>'select obj_version from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>250
,p_field_template=>wwv_flow_api.id(451191400021606938)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\30D0\30FC\30B8\30E7\30F3\3092\5909\66F4\3057\305F\3068\304D\306E\307F\3001\8CFC\8AAD\8005\306B\66F4\65B0\901A\77E5\306E\30E1\30FC\30EB\304C\9001\4ED8\3055\308C\307E\3059\3002\307E\305F\3001\30D0\30FC\30B8\30E7\30F3\3092\5909\66F4\3057\305F\3068\304D\306F\3001\4EE5\524D\306B\30A2\30C3\30D7\30ED\30FC\30C9\3055\308C\305F\8CC7\6599\3092\30A2\30FC\30AB\30A4\30D6\3057\307E\3059\3002'),
unistr('\30D0\30FC\30B8\30E7\30F3\306F\6570\5024\3001\6587\5B57\5217\3001\3069\3061\3089\3067\3082\304B\307E\3044\307E\305B\3093\3002'),
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452311195627695366)
,p_name=>'P2_PREV_OBJ_VERSION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_source=>'select obj_version from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452312080078695368)
,p_name=>'P2_LINK_OBJECT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30D5\30A1\30A4\30EB')
,p_source=>'LINK_OBJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>unistr('\30A2\30C3\30D7\30ED\30FC\30C9\3059\308B\30D5\30A1\30A4\30EB\3092\6307\5B9A\3057\3066\304F\3060\3055\3044\3002')
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'CONTENT_TYPE'
,p_attribute_03=>'FILE_NAME'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452312807536695371)
,p_name=>'P2_LINK_URL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_prompt=>unistr('\767B\9332\3059\308BURL')
,p_source=>'select link_url from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>300
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\4E0A\306E\9805\76EE\3067\3042\308B<b>\30D5\30A1\30A4\30EB\3092\9078\629E</b>\3067\30D5\30A1\30A4\30EB\3092\9078\3093\3067\30D5\30A1\30A4\30EB\3092\30A2\30C3\30D7\30ED\30FC\30C9\3059\308B\5834\5408\306F\3001\30EA\30F3\30AF\306E\767B\9332\306F\3001\3053\306E<b>\767B\9332\3059\308BURL</b>\3067\306F\306A\304F\3001\30DA\30FC\30B8\4E0B\90E8\306B\3042\308B<b>\95A2\9023\30EA\30F3\30AF</b>\3068\3057\3066\767B\9332\3057\3066\304F\3060\3055\3044\3002\4E00\89A7\30DA\30FC\30B8\306E\30BF\30A4\30C8\30EB\306B\4ED8\304F\30EA\30F3\30AF\306F\3001\30D5\30A1\30A4\30EB\304C\30A2\30C3\30D7\30ED\30FC\30C9\3055\308C\3066\3044\308C\3070\3001\30D5\30A1\30A4\30EB\306E\30C0\30A6\30F3\30ED\30FC\30C9\30EA\30F3\30AF\306B\306A\308A\307E\3059\3002')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'URL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452313202407695371)
,p_name=>'P2_OPL_CODE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_u varchar2(80);',
'begin',
'  select u_email into l_u from tcw_consul_user where upper(u_email) = :APP_USER;',
'  return 5;',
'exception',
'  when no_data_found then',
'  return 3;',
'  when others then',
'  return 3;',
'end;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>unistr('\516C\958B\30EC\30D9\30EB')
,p_source=>'select opl_code from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST_OF_CONF_NAME'
,p_lov=>'.'||wwv_flow_api.id(451600092601027666)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(451191400021606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452313616296695372)
,p_name=>'P2_ABSTRACT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_prompt=>unistr('\6982\8981')
,p_source=>'select abstract from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452314481008695375)
,p_name=>'P2_ANNOUNCE_FLAG'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_item_default=>'1'
,p_prompt=>unistr('\65B0\7740\60C5\5831\306B...')
,p_source=>'select announce_flag from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\63B2\8F09\3059\308B;1,\63B2\8F09\3057\306A\3044;0')
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452314839582695375)
,p_name=>'P2_CHECKSUM'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(457184926603526572)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_util.get_hash(apex_t_varchar2(',
'  to_char(reg_date, ''YYYY-MM-DD''),',
'  obj_name, obj_version, link_url, opl_code,',
'  abstract, announce_flag, is_portal)) as checksum',
'from tcw_documents',
'where link_num = :P2_LINK_NUM;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(451570207345923332)
,p_validation_name=>'Verify Version'
,p_validation_sequence=>20
,p_validation=>'select 1 from tcw_doc_archives where link_num = :P2_LINK_NUM and obj_version = :P2_OBJ_VERSION'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('\904E\53BB\306B\4F7F\7528\6E08\307F\306E\30D0\30FC\30B8\30E7\30F3\304C\4F7F\308F\308C\3066\3044\308B\3088\3046\3067\3059\3002\5909\66F4\3057\3066\304F\3060\3055\3044\3002')
,p_validation_condition=>':P2_PREV_OBJ_VERSION <> :P2_OBJ_VERSION'
,p_validation_condition_type=>'SQL_EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(452296706457695350)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8524788481625890)
,p_name=>unistr('\6982\8981\66F4\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(457184926603526572)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8524886281625891)
,p_event_id=>wwv_flow_api.id(8524788481625890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10714884837972683)
,p_name=>unistr('URL\3042\308A')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_LINK_URL'
,p_condition_element=>'P2_LINK_URL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_required_patch=>wwv_flow_api.id(22229127853369601)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10714938440972684)
,p_event_id=>wwv_flow_api.id(10714884837972683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_IS_PORTAL'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10715006302972685)
,p_event_id=>wwv_flow_api.id(10714884837972683)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_IS_PORTAL'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10715830656972693)
,p_name=>'Update Protected'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_IS_PROTECTED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10715951415972694)
,p_event_id=>wwv_flow_api.id(10715830656972693)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update tcw_documents set is_protected = :P2_IS_PROTECTED ',
'where link_num = :P2_LINK_NUM'))
,p_attribute_02=>'P2_LINK_NUM,P2_IS_PROTECTED'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10716054129972695)
,p_name=>'Update Author'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_IS_AUTHOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10716138378972696)
,p_event_id=>wwv_flow_api.id(10716054129972695)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update tcw_documents set is_author = :P2_IS_AUTHOR where link_num = :P2_LINK_NUM'
,p_attribute_02=>'P2_LINK_NUM,P2_IS_AUTHOR'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452323610469695409)
,p_process_sequence=>120
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TCW_DOC_DATA'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P2_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(451570353828923333)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\73FE\5728\306E\30D0\30FC\30B8\30E7\30F3\3092\9000\907F')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Archive previous version.',
'begin',
'    if :P2_PREV_OBJ_VERSION <> :P2_OBJ_VERSION then',
'      insert into tcw_doc_archives(link_num, obj_version, obj_name, opl_code, file_name, content_type, owner, link_object)',
'      select l.link_num, nvl(l.obj_version, ''INITIAL_VERSION''), l.obj_name, l.opl_code, d.file_name, d.content_type, l.upd_username, d.link_object',
'      from tcw_documents l join tcw_doc_data d on l.link_num = d.link_num where l.link_num = :P2_LINK_NUM;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452296706457695350)
,p_process_when=>'P2_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452322832875695407)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\4E3B\30AD\30FC\306E\53D6\5F97')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P2_LINK_NUM is null then',
'      -- create holes in the document id',
'      -- to prevent malicious sequencial downloads',
'      for i in 1..dbms_random.value(1,10) loop',
'        :P2_LINK_NUM := TCW_DOCUMENTS_SEQ.nextval;',
'      end loop;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452297566914695354)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452320425448695393)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\8CC7\6599\3092\65B0\898F\767B\9332')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into tcw_documents(link_num, reg_date, upd_date,',
'                       opl_code, obj_name, obj_version, link_url, announce_flag,',
'                       reg_username, upd_username, abstract, is_portal)',
'  values(:P2_LINK_NUM, to_date(:P2_REG_DATE,''YYYY-MM-DD''), sysdate, ',
'         :P2_OPL_CODE, :P2_OBJ_NAME, :P2_OBJ_VERSION, :P2_LINK_URL, :P2_ANNOUNCE_FLAG,',
'         :APP_USER, :APP_USER, :P2_ABSTRACT, nvl2(:P2_LINK_URL,:P2_IS_PORTAL,''N''));',
'  tcw_util.save_hashtags(:P2_LINK_NUM,:P2_ABSTRACT);',
'end;',
'  '))
,p_process_error_message=>unistr('\8CC7\6599\306E\65B0\898F\767B\9332\306B\5931\6557\3002')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452297566914695354)
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452320860460695397)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\8CC7\6599\3092\66F4\65B0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_checksum varchar2(200);',
'begin',
'  l_checksum := apex_util.get_hash(apex_t_varchar2(:P2_REG_DATE, :P2_OBJ_NAME, ',
'       :P2_OBJ_VERSION, :P2_LINK_URL, :P2_OPL_CODE, :P2_ABSTRACT,',
'       :P2_ANNOUNCE_FLAG, :P2_IS_PORTAL));',
'  if (:P2_CHECKSUM <> l_checksum) then',
'    if :P2_PREV_OBJ_VERSION <> :P2_OBJ_VERSION then',
'       update tcw_documents set upd_date = sysdate where link_num = :P2_LINK_NUM;',
'    end if;',
'    update tcw_documents set reg_date = to_date(:P2_REG_DATE,''YYYY-MM-DD''),',
'                        upd_username  = :APP_USER,',
'                        opl_code      = :P2_OPL_CODE,',
'                        obj_name      = :P2_OBJ_NAME,',
'                        obj_version   = :P2_OBJ_VERSION,',
'                        link_url      = :P2_LINK_URL,',
'                        announce_flag = :P2_ANNOUNCE_FLAG,',
'                        abstract      = :P2_ABSTRACT,',
'                        is_portal     = nvl2(:P2_LINK_URL,:P2_IS_PORTAL,''N'')',
'    where link_num = :P2_LINK_NUM;',
'    tcw_util.save_hashtags(:P2_LINK_NUM,:P2_ABSTRACT);',
'  end if;',
'end;'))
,p_process_error_message=>unistr('\8CC7\6599\306E\66F4\65B0\306B\5931\6557\3002')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452296706457695350)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452324841941695418)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\8CC7\6599\306E\66F4\65B0\3092\901A\77E5')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- send notification.',
'    if :P2_OPL_CODE < 6 then',
'      if :P2_PREV_OBJ_VERSION <> :P2_OBJ_VERSION then',
'        etp_util.notify_update(p_doc_id => :P2_LINK_NUM);',
'        -- do not push the emails here.',
'        -- apex_mail.push_queue;',
'      end if;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452296706457695350)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454703542562567940)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\8CC7\6599\306E\65B0\898F\4F5C\6210\3092\901A\77E5')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- send notification.',
'    if :P2_OPL_CODE < 6 then',
'      etp_util.notify_update(p_doc_id => :P2_LINK_NUM, p_template => ''EMAILCREATE'');',
'    end if;',
'    -- do not push the emails here.',
'    -- apex_mail.push_queue;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452297566914695354)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452323202564695408)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TCW_DOC_DATA - CREATE'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P2_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_error_message=>unistr('\8CC7\6599\306E\65B0\898F\30A2\30C3\30D7\30ED\30FC\30C9\306B\5931\6557\3057\307E\3057\305F\3002')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452297566914695354)
,p_process_when=>'P2_LINK_OBJECT'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>unistr('\8CC7\6599\3092\65B0\898F\306B\30A2\30C3\30D7\30ED\30FC\30C9\3057\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(256291080433614254)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\767B\9332\30D5\30A1\30A4\30EB\7121\3057\30A8\30E9\30FC\56DE\907F')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_link_num tcw_doc_data.link_num%type;',
'begin',
'  select link_num into l_link_num from tcw_doc_data',
'  where link_num = :P2_LINK_NUM;',
'  /* do nothing */',
'exception',
'  when no_data_found then',
'    insert into tcw_doc_data(link_num) values(:P2_LINK_NUM);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452296706457695350)
,p_process_when=>'P2_LINK_OBJECT'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452321655098695399)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TCW_DOC_DATA - SAVE'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P2_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_error_message=>unistr('\8CC7\6599\306E\30A2\30C3\30D7\30ED\30FC\30C9\3068\66F4\65B0\306B\5931\6557\3057\307E\3057\305F\3002')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452296706457695350)
,p_process_when=>'P2_LINK_OBJECT'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>unistr('\8CC7\6599\3092\30A2\30C3\30D7\30ED\30FC\30C9\3057\3001\904E\53BB\306E\8CC7\6599\3092\66F4\65B0\3057\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452321257173695398)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\8CC7\6599\3092\524A\9664')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update tcw_documents set opl_code = 0, upd_date = sysdate, upd_username = :APP_USER',
'  where link_num = :P2_LINK_NUM;',
'  delete from tcw_doc_acls where link_num = :P2_LINK_NUM and user_name = :APP_USER;',
'  delete from tcw_doc_notifications where link_num = :P2_LINK_NUM;',
'end;',
'',
'  '))
,p_process_error_message=>unistr('\6587\66F8&P2_LINK_NUM.\306E\524A\9664\306B\5931\6557\3057\307E\3057\305F\3002')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452297917798695354)
,p_process_success_message=>unistr('\6587\66F8&P2_LINK_NUM.\3092\524A\9664\3057\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(409515855652595151)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(409515082667595143)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\95A2\9023\30EA\30F3\30AF - Save Interactive Grid Data')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452324005512695410)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30BF\30A4\30C8\30EB\3092\65B0\898F\767B\9332\306B\3059\308B')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('  :AI_BREADCRUMB_NAME := ''\8CC7\6599\306E\65B0\898F\767B\9332'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P2_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452324475475695417)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30BF\30A4\30C8\30EB\3092\66F4\65B0\524A\9664\306B\3059\308B')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('  :AI_BREADCRUMB_NAME := ''\8CC7\6599\306E\66F4\65B0/\524A\9664'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P2_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\8CC7\6599\306E\8A73\7D30\60C5\5831')
,p_alias=>'DETAIL'
,p_step_title=>unistr('&APP_NAME.: \6587\66F8&P3_LINK_NUM.\8A73\7D30')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(258848669354256797)
,p_step_template=>wwv_flow_api.id(451155874492606742)
,p_page_template_options=>'#DEFAULT#'
,p_deep_linking=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190828150521'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7517779447691015)
,p_plug_name=>unistr('\8CC7\6599\8A73\7D30 ')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'TCW_DOCUMENTS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(451572527995923355)
,p_name=>unistr('\95A2\9023\30EA\30F3\30AF')
,p_parent_plug_id=>wwv_flow_api.id(7517779447691015)
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.link_type_name as link_type_name,',
'       l.link_url as link_url,',
'       l.note     as note',
'from tcw_doc_links l join tcw_link_types t on l.link_type = t.link_type_id',
'where l.doc_id = :P3_LINK_NUM order by t.link_type_name',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(451572646478923356)
,p_query_column_id=>1
,p_column_alias=>'LINK_TYPE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30EA\30F3\30AF\7A2E\5225')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<a href="#LINK_URL#" target="_blank">#LINK_TYPE_NAME#</a>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(451572749752923357)
,p_query_column_id=>2
,p_column_alias=>'LINK_URL'
,p_column_display_sequence=>2
,p_column_heading=>'URL'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(451572873537923358)
,p_query_column_id=>3
,p_column_alias=>'NOTE'
,p_column_display_sequence=>3
,p_column_heading=>unistr('\8FFD\52A0\8AAC\660E')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(451570595417923336)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(467518910656385110)
,p_plug_name=>unistr('\901A\77E5\8A2D\5B9A')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(514039646421408057)
,p_name=>unistr('\4FEE\6B63\4F9D\983C\4E00\89A7')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TCW_REMARK_ID as ACTIONS,',
'"REMARK_TEXT" as COMMENT_TEXT,',
'"AUTHOR" as USER_NAME,',
'to_char(date_of_remark at local, ''YYYY-MM-DD HH24:MI'') || '' - '' || ',
'to_char(date_closed at local, ''YYYY-MM-DD HH24:MI'') as comment_date,',
'case is_closed',
'when ''Y'' then',
unistr('  ''\6E08'''),
'else',
unistr('  ''\672A'''),
'end USER_ICON,',
'null as ATTRIBUTE_1,',
'null as ATTRIBUTE_2,',
'null as ATTRIBUTE_3,',
'null as ATTRIBUTE_4',
'from "TCW_DOC_REMARKS"',
'where link_num = :P3_LINK_NUM',
'order by date_of_remark desc',
''))
,p_query_row_template=>wwv_flow_api.id(451178475038606863)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452351974013700951)
,p_query_column_id=>1
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>4
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,18:P18_TCW_REMARK_ID:#ACTIONS#'
,p_column_linktext=>'<span class="t-Icon fa&#x20;fa-pencil"></span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452352360363700954)
,p_query_column_id=>2
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452352689304700955)
,p_query_column_id=>3
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452353110300700956)
,p_query_column_id=>4
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452353501200700957)
,p_query_column_id=>5
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>5
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452353932209700958)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452354379903700959)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>7
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452354788643700959)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>8
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452355099767700960)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>9
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452340611600700917)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_CLIP_DETAIL_URL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_button_image_alt=>unistr('\30AF\30EA\30C3\30D7\30DC\30FC\30C9\306B\30B3\30D4\30FC')
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-clipboard'
,p_button_cattributes=>'data-clipboard-source=&P3_DETAIL_URL.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452340996582700918)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_CLIP_DOWNLOAD_URL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_button_image_alt=>unistr('\30AF\30EA\30C3\30D7\30DC\30FC\30C9\306B\30B3\30D4\30FC')
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-clipboard'
,p_button_cattributes=>'data-clipboard-source=&P3_DOWNLOAD_URL.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(460305681784221630)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(467518910656385110)
,p_button_name=>'B_DOWNLOAD_HISTORY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74\3092\53C2\7167')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17,RIR:IR_LINK_NUM:&P3_LINK_NUM.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452341411371700918)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_DOWNLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_button_image_alt=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP:DOWNLOAD_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-download'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(460305821787221632)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(467518910656385110)
,p_button_name=>'B_DOC_LIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('&P3_NAME_TO_FOLLOW.\3055\3093\306E\8CC7\6599\4E00\89A7')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.:5:&DEBUG.:RP,5,RIR:P0_KEYWORD:@&P3_OWNER_EMAIL.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8523170409625874)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_OPEN_LINK_URL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_button_image_alt=>unistr('\958B\304F')
,p_button_position=>'BODY'
,p_button_redirect_url=>'javascript:window.open(''&P3_LINK_URL!RAW.'');'
,p_button_condition=>'select 1 from tcw_documents where link_num = :P3_LINK_NUM and LINK_URL is not null;'
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-external-link'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(451570407410923334)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_VERSION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\5909\66F4\5C65\6B74\306E\78BA\8A8D')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:P23_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>'select 1 from tcw_doc_archives where link_num = :P3_LINK_NUM'
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454899945941532258)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_FILE_NAME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_button_image_alt=>unistr('\30D5\30A1\30A4\30EB\540D\306E\66F4\65B0')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:P7_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  lc number;',
'begin',
'  select 1 into lc from tcw_doc_data where link_num = :P3_LINK_NUM;',
'  if APEX_ACL.HAS_USER_ROLE(p_role_static_id => ''ADMINISTRATOR'') then',
'    return true;',
'  end if;',
'  select 1 into lc from tcw_documents where link_num = :P3_LINK_NUM and upd_username = :APP_USER;',
'  return true;',
'exception',
'  when no_data_found then',
'    return false;',
'end;'))
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452340194170700915)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_UPDATE_ABST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_button_image_alt=>unistr('\6982\8981\306E\307F\4FEE\6B63')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22:P22_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  lc number;',
'begin',
'  select 1 into lc from tcw_doc_data where link_num = :P3_LINK_NUM;',
'  if APEX_ACL.HAS_USER_ROLE(p_role_static_id => ''ADMINISTRATOR'') then',
'    return true;',
'  end if;',
'  select 1 into lc from tcw_documents where link_num = :P3_LINK_NUM and upd_username = :APP_USER;',
'  return true;',
'exception',
'  when no_data_found then',
'    return false;',
'end;'))
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(451571381248923343)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\4E00\89A7\306B\623B\308B')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10715330613972688)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_UPDATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from tcw_documents where link_num = :P3_LINK_NUM and reg_username = :APP_USER',
'union',
'select 1 from tcw_documents where link_num = :P3_LINK_NUM and upd_username = :APP_USER',
'union',
'select 1 from tcw_doc_acls where link_num = :P3_LINK_NUM and user_name = :APP_USER'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452355574525700961)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(514039646421408057)
,p_button_name=>'ADD_REMARK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\4FEE\6B63\4F9D\983C\306E\767B\9332')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(451573139581923361)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_api.id(7517779447691015)
,p_button_name=>'B_ACL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\7DE8\96C6\6A29\9650\306E\5272\5F53')
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  lc number;',
'begin',
'  select 1 into lc from tcw_doc_data where link_num = :P3_LINK_NUM;',
'  if APEX_ACL.HAS_USER_ROLE(p_role_static_id => ''ADMINISTRATOR'') then',
'    return true;',
'  end if;',
'  select 1 into lc from tcw_documents where link_num = :P3_LINK_NUM and upd_username = :APP_USER;',
'  return true;',
'exception',
'  when no_data_found then',
'    return false;',
'end;'))
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8406263336862173)
,p_name=>'P3_LINK_URL'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_item_source_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\767B\9332URL')
,p_source=>'LINK_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>2
,p_display_when=>'select 1 from tcw_documents where link_num = :P3_LINK_NUM and LINK_URL is not null;'
,p_display_when_type=>'EXISTS'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8406700756862178)
,p_name=>'P3_ABSTRACT'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_item_source_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\6982\8981/\30AD\30FC\30EF\30FC\30C9')
,p_source=>'ABSTRACT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8407028871862181)
,p_name=>'P3_LINK_NUM'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_item_source_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>'Document ID'
,p_source=>'LINK_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8407121460862182)
,p_name=>'P3_OPL_CODE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_query_only=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_item_source_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\516C\958B\30EC\30D9\30EB')
,p_source=>'OPL_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST_OF_CONF_NAME_DISP'
,p_lov=>'.'||wwv_flow_api.id(389470743285795739)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8407213522862183)
,p_name=>'P3_OBJ_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_item_source_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\30BF\30A4\30C8\30EB')
,p_source=>'OBJ_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8407362853862184)
,p_name=>'P3_OBJ_VERSION'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_item_source_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\30D0\30FC\30B8\30E7\30F3')
,p_source=>'OBJ_VERSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8407446396862185)
,p_name=>'P3_UPD_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_query_only=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_item_source_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\66F4\65B0\8005')
,p_source=>'UPD_USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST_OF_EMAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case',
'         when last_name is null then user_name',
'         else last_name || '' '' || first_name || '' <'' || lower(user_name) || ''>''',
'       end as d,',
'       user_name as r',
'  from tcw_user_names',
' order by 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8407732184862188)
,p_name=>'P3_DETAIL_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\8A73\7D30\30DA\30FC\30B8URL')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>52
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'URL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8407978470862190)
,p_name=>'P3_DOWNLOAD_URL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9URL')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>52
,p_tag_attributes=>'readonly="readonly"'
,p_display_when=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'URL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8408188560862192)
,p_name=>'P3_CONTENT_TYPE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\30FB\30BF\30A4\30D7')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.description from tcw_documents l join (tcw_doc_data d join tcw_content_types t on d.content_type = t.content_type)',
'on l.link_num = d.link_num',
'where l.link_num = :P3_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8408197044862193)
,p_name=>'P3_FILE_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\540D')
,p_source=>'select file_name from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8408346295862194)
,p_name=>'P3_OBJ_SIZE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\30B5\30A4\30BA')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  case ',
'  when dbms_lob.getlength(link_object) > (1024*1024) then',
'    round(dbms_lob.getlength(link_object)/(1024*1024),1) || '' MB''',
'  when dbms_lob.getlength(link_object) > 1024 then',
'    round(dbms_lob.getlength(link_object)/1024,1) || '' KB''',
'  else',
'    dbms_lob.getlength(link_object) || '' B''',
'  end obj_size',
'from tcw_doc_data where link_num = :P3_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8408448662862195)
,p_name=>'P3_ZIP_LIST'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\5185\5BB9')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  fl apex_zip.t_files;',
'  bl blob;',
'  l_fl varchar2(4000);',
'begin',
'  select link_object into bl from tcw_doc_data where link_num = :P3_LINK_NUM;',
'  fl := apex_zip.get_files(bl, true, ''JA16SJIS'');',
'  for i in 1..fl.count',
'  loop',
'    l_fl := l_fl || chr(10) || fl(i);',
'  end loop;',
'  return l_fl;',
'exception',
'  when VALUE_ERROR then',
unistr('    return ''\6CA2\5C71\3042\3063\3066\3001\8868\793A\3067\304D\307E\305B\3093\3002'';'),
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cHeight=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from tcw_documents l join (tcw_doc_data d join tcw_content_types t on d.content_type = t.content_type)',
'on l.link_num = d.link_num',
'where l.link_num = :P3_LINK_NUM and t.content_type_alias = ''ZIP'''))
,p_display_when_type=>'EXISTS'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10715182164972686)
,p_name=>'P3_UPD_DATE'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(7517779447691015)
,p_item_source_plug_id=>wwv_flow_api.id(7517779447691015)
,p_prompt=>unistr('\6700\7D42\66F4\65B0\65E5')
,p_format_mask=>'YYYY/MM/DD HH24:MI'
,p_source=>'UPD_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152985726128802438)
,p_name=>'P3_DOC_ALIAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(467518910656385110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452351266086700945)
,p_name=>'P3_NOTIFY_UPDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(467518910656385110)
,p_prompt=>unistr('\3053\306E\8CC7\6599\304C\66F4\65B0\3055\308C\305F\969B\306B\3001\30E1\30FC\30EB\306B\3066\901A\77E5\3057\307E\3059\304B\FF1F')
,p_source=>'select notify_update from tcw_doc_notifications where link_num = :P3_LINK_NUM and username = :APP_USER'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:\306F\3044;Y')
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('\3044\3044\3048')
,p_lov_null_value=>'N'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452355977234700961)
,p_name=>'P3_REMARK'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(514039646421408057)
,p_prompt=>unistr('\4FEE\6B63\5185\5BB9')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(451191310691606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(460305215754221626)
,p_name=>'P3_NAME_TO_FOLLOW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(467518910656385110)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case',
'         when u.last_name is null then regexp_replace(l.upd_username, :AI_STRIP_DOMAIN,''\1'')',
'         else u.last_name || '' '' || u.first_name',
'       end as d',
'  from tcw_documents l left outer join tcw_user_names u ',
'    on l.upd_username = u.user_name',
'where l.link_num = :P3_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(460305298815221627)
,p_name=>'P3_FOLLOW'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(467518910656385110)
,p_prompt=>unistr('&P3_NAME_TO_FOLLOW.\3055\3093\306E\6295\7A3F\3092\30D5\30A9\30ED\30FC\3057\307E\3059\304B\FF1F')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Y'' from tcw_followers where follower = :APP_USER ',
'and username = (select upd_username from tcw_documents where link_num = :P3_LINK_NUM)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:\306F\3044;Y')
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('\3044\3044\3048')
,p_lov_null_value=>'N'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(460305782779221631)
,p_name=>'P3_OWNER_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(467518910656385110)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select regexp_replace(upd_username, :AI_STRIP_DOMAIN,''\1'') as username',
'from tcw_documents',
'where link_num = :P3_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(8407871206862189)
,p_computation_sequence=>10
,p_computation_item=>'P3_DETAIL_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'''&DOCUMENT_DIRECT_PATH.'' || :P3_DOC_ALIAS'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(8408007319862191)
,p_computation_sequence=>20
,p_computation_item=>'P3_DOWNLOAD_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation=>'''&DOWNLOAD_DIRECT_PATH.'' || :P3_DOC_ALIAS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(452361137009700972)
,p_name=>'Copy To Clipboard'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(452340996582700918)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(452357045524700964)
,p_name=>'Clip Detail URL'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(452340611600700917)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(452357965087700967)
,p_name=>'Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NOTIFY_UPDATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(452358425723700968)
,p_event_id=>wwv_flow_api.id(452357965087700967)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P3_NOTIFY_UPDATE = ''Y'' then',
'    update tcw_doc_notifications set notify_update = ''Y''',
'    where link_num = :P3_LINK_NUM and username = :APP_USER;',
'    if sql%rowcount = 0 then',
'      insert into tcw_doc_notifications(link_num, username, notify_update)',
'      values(:P3_LINK_NUM, :APP_USER, ''Y'');',
'    end if;',
'  else',
'    update tcw_doc_notifications set notify_update = ''N''',
'    where link_num = :P3_LINK_NUM and username = :APP_USER;',
'  end if;',
'end;'))
,p_attribute_02=>'P3_NOTIFY_UPDATE,P3_LINK_NUM'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(452360191217700971)
,p_name=>'Refresh'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(514039646421408057)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(452360761453700972)
,p_event_id=>wwv_flow_api.id(452360191217700971)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(460305467767221628)
,p_name=>'Follow'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_FOLLOW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(460305561948221629)
,p_event_id=>wwv_flow_api.id(460305467767221628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_email tcw_documents.upd_username%type;',
'begin',
'  select upd_username into l_email from tcw_documents where link_num = :P3_LINK_NUM;',
'  delete from tcw_followers where username = l_email and follower = :APP_USER;',
'  if :P3_FOLLOW = ''Y'' then',
'    insert into tcw_followers(username, follower) values(l_email, :APP_USER);',
'  end if;',
'end;'))
,p_attribute_02=>'P3_FOLLOW,P3_LINK_NUM'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8523366198625876)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\30AF\30ED\30FC\30BA\FF11')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(7517779447691015)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8523490886625877)
,p_event_id=>wwv_flow_api.id(8523366198625876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8408740377862198)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\4FEE\6B63\4F9D\983C\306E\767B\9332')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (:P3_LINK_NUM is not null) then',
' insert into tcw_doc_remarks(link_num, remark_text, author, date_of_remark) values(:P3_LINK_NUM, :P3_REMARK, :APP_USER, systimestamp);',
'end if;',
':P3_REMARK := '''';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452355574525700961)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8407580060862186)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30A8\30A4\30EA\30A2\30B9\306E\53D6\5F97')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- get alias from id, P3_LINK_NUM is number',
'declare',
'  l_alias_name tcw_documents.alias_name%type;',
'begin',
'  :P3_DOC_ALIAS := :P3_LINK_NUM;',
'  select alias_name into l_alias_name from tcw_documents',
'  where link_num = :P3_LINK_NUM;',
'  if l_alias_name is not null then',
'    :P3_DOC_ALIAS := upper(l_alias_name);',
'  end if;',
'exception',
'  when no_data_found then',
'    null; -- no alias assigned',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P3_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NUMERIC'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8407651437862187)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30A8\30A4\30EA\30A2\30B9\306E\89E3\6C7A')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- check document alias',
'declare',
'  l_link_num tcw_documents.link_num%type;',
'begin',
'  :P3_DOC_ALIAS := upper(:P3_LINK_NUM);',
'  select link_num into l_link_num from tcw_documents',
'  where upper(alias_name) = :P3_DOC_ALIAS;',
'  if l_link_num is not null then',
'    :P3_LINK_NUM := l_link_num; -- use actual link_num',
'  end if;',
'exception',
'  when no_data_found then',
'    null;  -- nothing found, so it must be LINK_NUM',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P3_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NOT_NUMERIC'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7517841843691016)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(7517779447691015)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0\8CC7\6599\306E\8A73\7D30\60C5\5831')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\500B\4EBA\306E\30D7\30ED\30D5\30A1\30A4\30EB')
,p_step_title=>unistr('&APP_NAME.: \30D7\30ED\30D5\30A1\30A4\30EB')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258847645115242583)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190725105127'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454662452187369061)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454701704670567922)
,p_plug_name=>unistr('\66F4\65B0\901A\77E5\3092\8A2D\5B9A\3057\305F\6587\66F8')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n.link_num link_num,',
'       d.obj_name obj_name,',
'       case when u.last_name is null then',
'         d.upd_username',
'       else',
'         u.last_name || '' '' || u.first_name || '' <'' || lower(d.upd_username) || ''>''',
'       end user_name',
'from tcw_documents d join tcw_doc_notifications n',
'     on d.link_num = n.link_num',
'     left outer join tcw_user_names u',
'     on d.upd_username = u.user_name',
'where d.opl_code > 0 ',
'  and n.username = :APP_USER and n.notify_update = ''Y''',
unistr('\3000')))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(176276821847540947)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>168030879114926638
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176276902233540948)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Doc#'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176276974920540949)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176277235027540951)
,p_db_column_name=>'USER_NAME'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>unistr('\6700\7D42\66F4\65B0\8005')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(13858896015446337)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'56130'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_NUM:OBJ_NAME:USER_NAME'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454702631985567931)
,p_plug_name=>unistr('\30D5\30A9\30ED\30FC\4E2D\306E\5229\7528\8005')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select id, username, follower from tcw_followers where follower = :APP_USER'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(454702830967567933)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(454702927660567934)
,p_name=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(454853154971255983)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(454703074200567935)
,p_name=>'FOLLOWER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOWER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(454703129811567936)
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
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(454703249694567937)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(454703350838567938)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(454702730620567932)
,p_internal_uid=>66918241909117612
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
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
 p_id=>wwv_flow_api.id(454776690938230831)
,p_interactive_grid_id=>wwv_flow_api.id(454702730620567932)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(454776845752230832)
,p_report_id=>wwv_flow_api.id(454776690938230831)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(454777340042230840)
,p_view_id=>wwv_flow_api.id(454776845752230832)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(454702830967567933)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(454777868427230848)
,p_view_id=>wwv_flow_api.id(454776845752230832)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(454702927660567934)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>600
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(454778296552230851)
,p_view_id=>wwv_flow_api.id(454776845752230832)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(454703074200567935)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(454779582721234056)
,p_view_id=>wwv_flow_api.id(454776845752230832)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(454703129811567936)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(454780071549234065)
,p_view_id=>wwv_flow_api.id(454776845752230832)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(454703249694567937)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(454703639893567941)
,p_plug_name=>unistr('\30D7\30ED\30D5\30A1\30A4\30EB')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(482556557007584553)
,p_plug_name=>unistr('\79C1\3092\30D5\30A9\30ED\30FC\3057\3066\3044\308B\4EBA')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select follower from tcw_followers where username = :APP_USER'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(482556599346584554)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>94772110635134234
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(482556755929584555)
,p_db_column_name=>'FOLLOWER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(454853154971255983)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(484058999365206824)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'962746'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FOLLOWER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(482556829068584556)
,p_plug_name=>unistr('\66F4\65B0\901A\77E5\304C\8A2D\5B9A\3055\308C\3066\3044\308B\79C1\306E\6587\66F8')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n.link_num link_num,',
'       d.obj_name obj_name,',
'       case when u.last_name is null',
'       then',
'         n.username',
'       else',
'         u.last_name || '' '' || u.first_name || '' <'' || lower(u.user_name) || ''>''',
'       end user_name',
'from tcw_doc_notifications n join tcw_documents d',
'     on n.link_num = d.link_num',
'     left outer join tcw_user_names u',
'     on n.username = u.user_name',
'where d.opl_code > 0',
'  and d.upd_username = :APP_USER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(482556962637584557)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>94772473926134237
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(482557138869584559)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Doc#'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(482557192785584560)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176276300277540942)
,p_db_column_name=>'USER_NAME'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>unistr('\8A2D\5B9A\8005')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(484062875499244679)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'962784'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_NUM:OBJ_NAME:USER_NAME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(454703929286567944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(454703639893567941)
,p_button_name=>'B_UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(482557417457584562)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(454703639893567941)
,p_button_name=>'B_MY_DOWNLOAD_HISTORY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\79C1\306E\8CC7\6599\306E\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17:IR_LAST_UPDATED_BY:&APP_USER.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(176275501124540934)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(454703639893567941)
,p_button_name=>'B_MY_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\671F\9593\30EC\30DD\30FC\30C8')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10715497320972690)
,p_name=>'P4_ADVANCED_MODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_item_default=>'N'
,p_prompt=>unistr('\9AD8\5EA6\306A\8A2D\5B9A\306E\8868\793A')
,p_source=>'tcw_util.get_preference(''ADVANCED_MODE'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\3059\308B')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3057\306A\3044')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(130536446248278343)
,p_name=>'P4_CARE_NEWARRAIVAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_item_default=>'Y'
,p_prompt=>unistr('\65B0\7740\30D5\30E9\30B0\306E\6271\3044')
,p_source=>'tcw_util.get_preference(''CARE_NEWARRAIVAL'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(134150804649607812)
,p_help_text=>unistr('\691C\7D22\6761\4EF6\304C\5168\304F\7121\3044\3068\304D\5834\5408\FF08\901A\5E38\306F\63A5\7D9A\76F4\5F8C\306E\8868\793A\FF09\3001\76F4\8FD1\4E00\30F6\6708\306B\767B\9332\3055\308C\305F\65B0\7740\4E00\89A7\306B\8868\793A\3092\3059\308B\30D5\30E9\30B0\304C\4ED8\3044\305F\6587\66F8\306E\307F\3092\4E00\89A7\3057\307E\3059\304C\3001\3053\306E\6307\5B9A\3092\300C\7121\8996\300D\3068\3059\308B\3068\3001\767B\9332\3055\308C\3066\3044\308B\3059\3079\3066\306E\6587\66F8\3092\8868\793A\3057\307E\3059\3002\6587\66F8\4E00\89A7\3092CSV\306B\3066\30C0\30A6\30F3\30ED\30FC\30C9\3059\308B\3068\3044\3063\305F\7279\5225\306A\7528\9014\3092\60F3\5B9A\3057\3066\304A\308A\3001\901A\5E38\306F\4E00\89A7\8868\793A\304C\9045\304F\306A\308B\305F\3081\300C\8003\616E\300D\306E\307E\307E\306B\3057\3066\304A\3044\3066\304F\3060\3055\3044\3002')
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\8003\616E')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\7121\8996')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152987609975802457)
,p_name=>'P4_SEMINAR_ZIMBRA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_item_default=>'N'
,p_prompt=>unistr(' \767B\9332\65B9\6CD5')
,p_source=>'tcw_util.get_preference(''SEMINAR_ZIMBRA'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(134150804649607812)
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>'Zimbra'
,p_attribute_04=>'N'
,p_attribute_05=>'VCS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(170144180878911510)
,p_name=>'P4_DEMO_MODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30C7\30E2\30FB\30E2\30FC\30C9')
,p_source=>'AI_IN_DEMO'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\30C7\30E2\3067\4F7F\7528\3067\304D\308B\3088\3046\3001\691C\7D22\7D50\679C\3092\516C\958B\8CC7\6599\306E\307F\306B\5236\9650\3057\307E\3059\3002\6052\4E45\7684\306A\8A2D\5B9A\3067\306F\306A\304F\3001\65B0\898F\30BB\30C3\30B7\30E7\30F3\304C\958B\59CB\3059\308B\305F\3073\306B\30C7\30E2\30FB\30E2\30FC\30C9\304C\300C\3044\3044\3048\300D\306B\623B\308A\307E\3059\3002')
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\306F\3044')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3044\3044\3048')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454703746686567942)
,p_name=>'P4_LAST_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_prompt=>unistr('\59D3')
,p_source=>'select last_name from tcw_user_names where user_name = :APP_USER'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(454703813623567943)
,p_name=>'P4_FIRST_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_prompt=>unistr('\540D')
,p_source=>'select first_name from tcw_user_names where user_name = :APP_USER'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(482554675461584534)
,p_name=>'P4_SHOW_DOCUMENTS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_item_default=>'Y'
,p_prompt=>unistr('\30C9\30AD\30E5\30E1\30F3\30C8\306E\8868\793A')
,p_source=>'tcw_util.get_preference(''SHOW_DOCUMENTS'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\3059\308B')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3057\306A\3044')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(482554689965584535)
,p_name=>'P4_SHOW_SEMINARS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_item_default=>'Y'
,p_prompt=>unistr('\30BB\30DF\30CA\30FC\306E\8868\793A')
,p_source=>'tcw_util.get_preference(''SHOW_SEMINARS'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(134150804649607812)
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\3059\308B')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3057\306A\3044')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(482554850676584536)
,p_name=>'P4_SHOW_FAQS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_item_default=>'Y'
,p_prompt=>unistr('FAQ\306E\8868\793A')
,p_source=>'tcw_util.get_preference(''SHOW_FAQS'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(134150242132604042)
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\3059\308B')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3057\306A\3044')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(482554919733584537)
,p_name=>'P4_SHOW_FIELDALERTS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_item_default=>'Y'
,p_prompt=>unistr('Field Alert\306E\8868\793A')
,p_source=>'tcw_util.get_preference(''SHOW_FIELDALERTS'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(134150351595605495)
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\3059\308B')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3057\306A\3044')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(482555128961584539)
,p_name=>'P4_SEMINAR_CLONO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(454703639893567941)
,p_item_default=>'Y'
,p_prompt=>unistr('\8868\793A\9806\5E8F')
,p_source=>'tcw_util.get_preference(''SEMINAR_CLONO'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(134150804649607812)
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\6642\9593\9806')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\767B\9332\9806')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454704065971567945)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30D7\30ED\30D5\30A1\30A4\30EB\306E\66F4\65B0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :APP_USER is not null then',
'  merge into tcw_user_names',
'  using',
'    (select :APP_USER as user_name,',
'     :P4_FIRST_NAME as first_name,',
'     :P4_LAST_NAME as last_name',
'    from dual) pref',
'  on (tcw_user_names.user_name = pref.user_name)',
'  when matched then',
'    update set first_name = pref.first_name,',
'               last_name  = pref.last_name',
'  when not matched then',
'    insert (user_name, first_name, last_name)',
'    values (pref.user_name, pref.first_name, pref.last_name);',
'  tcw_util.set_preference(''SHOW_DOCUMENTS'',:P4_SHOW_DOCUMENTS);',
'  tcw_util.set_preference(''SHOW_SEMINARS'',:P4_SHOW_SEMINARS);',
'  tcw_util.set_preference(''SHOW_FAQS'',:P4_SHOW_FAQS);',
'  tcw_util.set_preference(''SHOW_FIELDALERTS'',:P4_SHOW_FIELDALERTS);',
'  tcw_util.set_preference(''SEMINAR_CLONO'',:P4_SEMINAR_CLONO);',
'  tcw_util.set_preference(''SEMINAR_ZIMBRA'',:P4_SEMINAR_ZIMBRA);',
'  tcw_util.set_preference(''CARE_NEWARRAIVAL'',:P4_CARE_NEWARRAIVAL);',
'  tcw_util.set_preference(''ADVANCED_MODE'',:P4_ADVANCED_MODE);',
'  :AI_IN_DEMO := :P4_DEMO_MODE;',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(454703929286567944)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(454703432706567939)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(454702631985567931)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\30D5\30A9\30ED\30FC\4E2D\306E\5229\7528\8005 - \5BFE\8A71\30B0\30EA\30C3\30C9\30FB\30C7\30FC\30BF\306E\4FDD\5B58')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\691C\7D22\7D50\679C')
,p_alias=>'SEARCH'
,p_step_title=>unistr('&APP_NAME.: \691C\7D22\7D50\679C')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258848669354256797)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'p.tcw-Abstract {font-size:10px; font-color:glay;}',
'',
'div.tcw-confsquare {',
'  float:  left;',
'  width:  10px;',
'  height: 10px;',
'  margin: 2px;',
'  border: 1px solid rgba(0, 0, 0, .2);',
'}',
'',
'.orange {',
'    background: #ffa500;',
'}',
'',
'.blue {',
'    background: #0000ff;',
'}',
'',
'.green {',
'    background: #008000;',
'}',
'',
'.red {',
'    background: #ff0000',
'}',
'',
'.black {',
'    background: #000000',
'}'))
,p_step_template=>wwv_flow_api.id(451154964181606740)
,p_page_template_options=>'#DEFAULT#'
,p_deep_linking=>'Y'
,p_page_comment=>unistr('\3082\3063\3068\3082\30B3\30FC\30C9\304C\96C6\4E2D\3057\3066\3044\308B\30DA\30FC\30B8\3002\3053\3053\304C\4E00\756A\5927\4E8B\3067\96E3\89E3\3002')
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190828174240'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(450635019252516370)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(514350256085931596)
,p_name=>unistr('\30BF\30B0\4E00\89A7')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Document - \30BF\30B0\4E00\89A7 */'),
'with doc_own_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a',
'    on d.link_num = a.link_num',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or d.opl_code = 1)',
'  and (d.opl_code < 6 or d.upd_username = :APP_USER or a.user_name = :APP_USER)',
'  group by d.link_num    ',
')',
'select hashtag,',
'       count(*) as count,',
'       ''P5_KEYWORD'' as item_name',
'from tcw_hashtags',
'where hashtag like ''%'' || :P5_HASHTAG || ''%''',
'and link_num in (select link_num from doc_own_wv)',
'group by hashtag',
'order by 1 asc'))
,p_display_when_condition=>'select c001 from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'');'
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(311067745437415751)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_row_count_max=>1000
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307489102185529441)
,p_query_column_id=>1
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>1
,p_column_heading=>'Hashtag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307489178949529442)
,p_query_column_id=>2
,p_column_alias=>'COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307489221248529443)
,p_query_column_id=>3
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Item name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(514352795427931621)
,p_name=>unistr('\30BF\30B0\691C\7D22')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Document - \30BF\30B0\691C\7D22 */'),
'with tags_wv as (',
'  select c001 as tag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), owners_wv as (',
'  select c001 || :AI_DOMAIN_NAME as owner',
'  from apex_collections',
'  where collection_name = ''SEARCH_OWNERS''',
'), doc_tags_wv as (',
'  select link_num from tcw_hashtags',
'  where hashtag in (select tag from tags_wv)',
'  group by link_num having count(*) >= (select count(*) from tags_wv)',
'), doc_words_wv as (',
'  select l.link_num from tcw_documents l left outer join tcw_doc_data d',
'    on l.link_num = d.link_num',
'  where contains(d.link_object, :AI_CONTAINS) > 0',
'  or contains(l.obj_name, :AI_CONTAINS) > 0',
'  or contains(l.abstract, :AI_CONTAINS) > 0',
'  group by l.link_num',
'), doc_own_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a',
'    on d.link_num = a.link_num',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or d.opl_code = 1)',
'  and (d.opl_code < 6 or d.upd_username = :APP_USER or a.user_name = :APP_USER)',
'  group by d.link_num    ',
'), doc_acls_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a ',
'    on d.link_num = a.link_num ',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or d.opl_code = 1)',
'  and',
'  (',
'    (',
'      d.opl_code < 6 and',
'      (',
'        d.upd_username in (select owner from owners_wv)',
'        or a.user_name in (select owner from owners_wv)      ',
'      )',
'    )',
'    or',
'    (',
'      d.opl_code = 6 and',
'      (',
'        (',
'          d.upd_username in (select owner from owners_wv)',
'          and d.upd_username = :APP_USER',
'        )',
'        or',
'        (',
'          a.user_name in (select owner from owners_wv)',
'          and a.user_name = :APP_USER',
'        )',
'      )',
'    )',
'  )',
'  group by d.link_num',
')',
'select ''P5_KEYWORD'' as item_name,',
'  hashtag,',
'  count(*) as count',
'from tcw_hashtags s',
'where hashtag not in (select tag from tags_wv)',
'and s.link_num in',
'(',
'  select l.link_num from tcw_documents l',
'  where l.opl_code > 0 and l.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and',
'  (',
'    (',
'      case when :AI_CONTAINS is not null then',
'        (select v.link_num from doc_words_wv v where v.link_num = l.link_num)',
'      else',
'        l.link_num',
'      end',
'    ) = l.link_num',
'    and ',
'    (',
'      case when (select count(*) from tags_wv) > 0 then',
'        (select v.link_num from doc_tags_wv v where v.link_num = l.link_num)',
'      else',
'        l.link_num',
'      end',
'    ) = l.link_num',
'    and',
'    (',
'      case when (select count(*) from owners_wv) > 0 then',
'        (select v.link_num from doc_acls_wv v where v.link_num = l.link_num)',
'      else',
'        (select v.link_num from doc_own_wv v where v.link_num = l.link_num)    ',
'      end',
'    ) = l.link_num',
'  )',
')',
'group by hashtag order by 3 desc'))
,p_display_when_condition=>'select c001 from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'');'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(311067745437415751)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307488737814529438)
,p_query_column_id=>1
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Item name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307488823161529439)
,p_query_column_id=>2
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>2
,p_column_heading=>'Hashtag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307488996491529440)
,p_query_column_id=>3
,p_column_alias=>'COUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(514352993280931623)
,p_plug_name=>unistr('\30EA\30BB\30C3\30C8\30DC\30BF\30F3\914D\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451159874159606797)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select c001 from apex_collections where collection_name in (''SEARCH_WORDS'', ''SEARCH_HASHTAGS'', ''SEARCH_OWNERS'');'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(577798017767334230)
,p_name=>unistr('\691C\7D22\5358\8A9E\4E00\89A7')
,p_template=>wwv_flow_api.id(451159874159606797)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 from apex_collections ',
'where collection_name = ''SEARCH_WORDS'' group by c001 order by c001'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(451571287645923342)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\691C\7D22\5358\8A9E')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<i class="fa fa-times-circle" onclick=''apex.submit({ request:"REMOVE", set:{"P5_KEYWORD":"#C001#"}, showWait:true });''/>#C001#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(577798149215334231)
,p_name=>unistr('\691C\7D22\30BF\30B0\4E00\89A7')
,p_template=>wwv_flow_api.id(451158897956606790)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 from apex_collections ',
'where collection_name = ''SEARCH_HASHTAGS''',
'order by c001'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(451505162812865601)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30BF\30B0')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<i class="fa fa-times-circle" onclick=''apex.submit({ request:"REMOVE", set:{"P5_KEYWORD":"&#x23;#C001#"}, showWait:true });''/>&#x23;#C001#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(577798217556334232)
,p_name=>unistr('\691C\7D22\30AA\30FC\30CA\30FC\4E00\89A7')
,p_template=>wwv_flow_api.id(451158897956606790)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 from apex_collections ',
'where collection_name = ''SEARCH_OWNERS'' order by c001'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(451503788512865589)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\6240\6709\8005')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<i class="fa fa-times-circle" onclick=''apex.submit({ request:"REMOVE", set:{"P5_KEYWORD":"@#C001#"}, showWait:true });''/>@#C001#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(612586124760553838)
,p_plug_name=>unistr('\8CC7\6599\691C\7D22\7D50\679C')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Document - \691C\7D22\7D50\679C\4E00\89A7 */'),
'with tags_wv as (',
'  select c001 as tag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), owners_wv as (',
'  select c001 as owner',
'  from apex_collections',
'  where collection_name = ''SEARCH_OWNERS''',
'), doc_tags_wv as (',
'  select link_num from tcw_hashtags',
'  where hashtag in (select tag from tags_wv)',
'  group by link_num having count(*) >= (select count(*) from tags_wv)',
'), doc_words_wv as (',
'  select l.link_num from tcw_documents l left outer join tcw_doc_data d',
'    on l.link_num = d.link_num',
'  where contains(d.link_object, :AI_CONTAINS) > 0',
'  or contains(l.obj_name, :AI_CONTAINS) > 0',
'  or contains(l.abstract, :AI_CONTAINS) > 0',
'  group by l.link_num',
'), doc_own_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a',
'    on d.link_num = a.link_num',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (d.opl_code < 6 or d.upd_username = :APP_USER or a.user_name = :APP_USER)',
'  group by d.link_num    ',
'), doc_acls_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a ',
'    on d.link_num = a.link_num ',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and',
'  (',
'    (',
'      d.opl_code < 6 and',
'      (',
'        d.upd_username in (select owner from owners_wv)',
'        or a.user_name in (select owner from owners_wv)      ',
'      )',
'    )',
'    or',
'    (',
'      d.opl_code = 6 and',
'      (',
'        (',
'          d.upd_username in (select owner from owners_wv)',
'          and d.upd_username = :APP_USER',
'        )',
'        or',
'        (',
'          a.user_name in (select owner from owners_wv)',
'          and a.user_name = :APP_USER',
'        )',
'      )',
'    )',
'  )',
'  group by d.link_num',
')',
'select case',
'  when l.upd_username = :APP_USER or l.link_num in (select link_num from tcw_doc_acls where user_name = :APP_USER) then',
'       ''<a href="'' || ',
'       apex_page.get_url(p_page => 2, p_clear_cache => 2, p_items => ''P2_LINK_NUM'', p_values => l.link_num)',
'       || ''"><span class="t-Icon fa&#x20;fa-pencil"></a>''',
'       else ''''',
'  end rowop,',
'  l.link_num as link_num,',
'  case',
'  when l.opl_code = 1 then',
unistr('    ''<div class="tcw-confsquare orange" title="\516C\958B\8CC7\6599"/>'''),
'  when l.opl_code = 3 then',
unistr('    ''<div class="tcw-confsquare green"  title="\793E\5185\9650\5B9A"/>'''),
'  when l.opl_code = 5 then',
'    ''<div class="tcw-confsquare black"  title="Consulting Only"/>''',
'  when l.opl_code = 6 then',
unistr('    ''<div class="tcw-confsquare black"  title="\30D7\30E9\30A4\30D9\30FC\30C8"/>'''),
'  else to_char(l.opl_code)',
'  end opl_code_text,',
'  case',
'  when d.link_object is not null then',
'    ''<a href="'' || ''f?p='' || :APP_ID || '':DOWNLOAD:'' || :APP_SESSION || ''::NO::DOWNLOAD_LINK_NUM:'' || l.link_num || ''" title="'' || d.file_name || ''">'' || l.obj_name || ''</a><p class="tcw-Abstract">''||htf.escape_sc(substr(l.abstract,1,80))||''...</p>''',
'  when l.link_url is not null then',
'    ''<a href="'' || l.link_url || ''" title="'' || l.link_url || ''">'' || l.obj_name || ''</a><p class="tcw-Abstract">''||htf.escape_sc(substr(l.abstract,1,80))||''...</p>''',
'  else l.obj_name',
'  end title,',
'  case',
'  when u.last_name is null then',
'    ''<a href="'' || apex_page.get_url(p_page => 5, p_request => 5, p_items => ''P0_KEYWORD'',',
'    p_values=> ''@'' || regexp_replace(l.upd_username, :AI_STRIP_DOMAIN,''\1'')) ||''">''|| ',
'    translate(regexp_replace(l.upd_username, :AI_STRIP_DOMAIN,''\1''),''.'','' '') ||''</a>''',
'  else',
'    ''<a href="'' || apex_page.get_url(p_page => 5, p_request => 5, p_items => ''P0_KEYWORD'',',
'    p_values=> ''@'' || regexp_replace(l.upd_username, :AI_STRIP_DOMAIN,''\1'')) ||''">''|| ',
'    u.last_name || '' '' || u.first_name||''</a>''',
'  end owner,',
'  l.upd_date updated,      ',
'  t.content_type_alias type,',
'  k.link_names related_url,',
'  l.upd_username r_last_updated_by,',
'  l.opl_code     r_classification,',
'  l.obj_name     r_title',
'from tcw_documents l left outer join ',
'  (tcw_doc_data d left outer join tcw_content_types t',
'       on d.content_type = t.content_type)',
'       on l.link_num = d.link_num',
'    left outer join tcw_user_names u on l.upd_username = u.user_name',
'    left outer join tcw_doc_links_v k on l.link_num = k.link_num',
'where l.opl_code > 0 and l.in_consulting <= nvl(:IN_CONSULTING, 0)',
'and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or l.opl_code = 1)',
'and',
'(',
'  (',
'    case when (select count(*) from apex_collections ',
'             where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'')) = 0 ',
'               and tcw_util.get_preference(''CARE_NEWARRAIVAL'',''Y'') = ''Y''',
unistr('      \3000\3000\3000\3000\3000\3000\3000\3000\3000\3000\3000\3000\3000\3000then'),
'      (',
'        select x.link_num from tcw_documents x',
'        where x.upd_date > add_months(sysdate, -1) and x.announce_flag = 1 and x.link_num = l.link_num',
'      )',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and',
'  (',
'    case when :AI_CONTAINS is not null then',
'      (select v.link_num from doc_words_wv v where v.link_num = l.link_num)',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and ',
'  (',
'    case when (select count(*) from tags_wv) > 0 then',
'      (select v.link_num from doc_tags_wv v where v.link_num = l.link_num)',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and',
'  (',
'    case when (select count(*) from owners_wv) > 0 then',
'      (select v.link_num from doc_acls_wv v where v.link_num = l.link_num)',
'    else',
'      (select v.link_num from doc_own_wv v where v.link_num = l.link_num)',
'    end',
'  ) = l.link_num',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(616018866335778924)
,p_max_row_count=>'100000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:XLS'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>228234377624328604
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451573667032923366)
,p_db_column_name=>'ROWOP'
,p_display_order=>10
,p_column_identifier=>'M'
,p_column_label=>'-'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451573725117923367)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>30
,p_column_identifier=>'N'
,p_column_label=>'Detail'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451508352440865617)
,p_db_column_name=>'TITLE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451508719612865617)
,p_db_column_name=>'OWNER'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Owner'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451509186246865618)
,p_db_column_name=>'UPDATED'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY/MM/DD HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451549901231865622)
,p_db_column_name=>'TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Type'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451550304563865623)
,p_db_column_name=>'RELATED_URL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Links'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307488684506529437)
,p_db_column_name=>'OPL_CODE_TEXT'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'P'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(130536634868278344)
,p_db_column_name=>'R_LAST_UPDATED_BY'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>unistr('\6700\7D42\66F4\65B0\8005')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(130536732333278345)
,p_db_column_name=>'R_CLASSIFICATION'
,p_display_order=>110
,p_column_identifier=>'Q'
,p_column_label=>unistr('\516C\958B\30EC\30D9\30EB')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(130536751905278346)
,p_db_column_name=>'R_TITLE'
,p_display_order=>120
,p_column_identifier=>'R'
,p_column_label=>unistr('\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(616060826811959989)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'637662'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'ROWOP:OPL_CODE_TEXT:TITLE:OWNER:UPDATED:LINK_NUM:TYPE:RELATED_URL'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(451506585780865603)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(514352993280931623)
,p_button_name=>'B_INIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\691C\7D22\6761\4EF6\306E\30EA\30BB\30C3\30C8')
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(307488592008529436)
,p_name=>'P5_HASHTAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(514350256085931596)
,p_placeholder=>unistr('\30BF\30B0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(451191140171606930)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(451504402863865590)
,p_name=>'P5_KEYWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(450635019252516370)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Keyword'
,p_placeholder=>unistr('\5358\8A9E #\30BF\30B0 @\6240\6709\8005')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>80
,p_display_when=>'REMOVE'
,p_display_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_field_template=>wwv_flow_api.id(451191140171606930)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(451554077860865637)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\521D\671F\5316')
,p_process_sql_clob=>'tcw_util.initialize_search_items;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(451506585780865603)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(451553202422865636)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\524A\9664')
,p_process_sql_clob=>'tcw_util.remove_search_items(p_search_items => :P5_KEYWORD);'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'REMOVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(451553687494865637)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\8FFD\52A0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'tcw_util.add_search_items(p_search_items => :P5_KEYWORD,',
'                          p_username => :APP_USER);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'REMOVE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(451554419238865638)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('GET\6642\691C\7D22\6761\4EF6\521D\671F\5316 ')
,p_process_sql_clob=>'tcw_util.initialize_search_items;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_INIT MYDOC'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(405861537628782521)
,p_process_sequence=>20
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('GET\306B\3088\308B\691C\7D22\6761\4EF6\8A2D\5B9A')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'tcw_util.add_search_items(p_search_items => :P0_KEYWORD,',
'                          p_username => :APP_USER,',
'                          p_need_unescape => ''Y'');'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'5'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_comment=>unistr('P0_KEYWORD\306F\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30A2\30A4\30C6\30E0')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(451554869954865638)
,p_process_sequence=>30
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\81EA\5206\81EA\8EAB\306E\8CC7\6599')
,p_process_sql_clob=>'apex_collection.add_member(''SEARCH_OWNERS'', tcw_util.get_name_part(:APP_USER));'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MYDOC'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(451552804473865634)
,p_process_sequence=>40
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('GET\6642\5168\6587\691C\7D22\8A2D\5B9A')
,p_process_sql_clob=>':AI_CONTAINS := tcw_util.get_contains;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'1'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30D5\30A1\30A4\30EB\306E\30A2\30C3\30D7\30ED\30FC\30C9')
,p_step_title=>unistr('\30D5\30A1\30A4\30EB\306E\30A2\30C3\30D7\30ED\30FC\30C9')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258848669354256797)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612115720'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8531608459940956)
,p_plug_name=>unistr('\30D5\30A1\30A4\30EB\767B\9332')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'TCW_DOC_DATA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8535947568940973)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8531608459940956)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P6_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8534775096940968)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8531608459940956)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8536379348940974)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8531608459940956)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P6_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8535574285940970)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8531608459940956)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P6_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8536600242940974)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8531929097940958)
,p_name=>'P6_LINK_NUM'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8531608459940956)
,p_item_source_plug_id=>wwv_flow_api.id(8531608459940956)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Link Num'
,p_source=>'LINK_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8532359629940961)
,p_name=>'P6_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8531608459940956)
,p_item_source_plug_id=>wwv_flow_api.id(8531608459940956)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Name'
,p_source=>'FILE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>250
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8532792854940962)
,p_name=>'P6_CONTENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8531608459940956)
,p_item_source_plug_id=>wwv_flow_api.id(8531608459940956)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Content Type'
,p_source=>'CONTENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8533139954940964)
,p_name=>'P6_LINK_OBJECT'
,p_source_data_type=>'BLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8531608459940956)
,p_item_source_plug_id=>wwv_flow_api.id(8531608459940956)
,p_prompt=>'Link Object'
,p_source=>'LINK_OBJECT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'CONTENT_TYPE'
,p_attribute_03=>'FILE_NAME'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8537527043940980)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(8531608459940956)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\30D7\30ED\30BB\30B9\30FB\30D5\30A9\30FC\30E0\30D5\30A9\30FC\30E0\306E\4F5C\6210')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8537140270940977)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(8531608459940956)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0\30D5\30A9\30FC\30E0\306E\4F5C\6210')
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30D5\30A1\30A4\30EB\5C5E\6027\306E\4FEE\6B63')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A1\30A4\30EB\5C5E\6027\306E\4FEE\6B63')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258851339093278569)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612121534'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8350863797137076)
,p_plug_name=>unistr('\30D5\30A1\30A4\30EB\5C5E\6027\306E\4FEE\6B63')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'TCW_DOC_DATA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8353152831137136)
,p_plug_name=>unistr('\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451163538186606812)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8353574675137137)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8353152831137136)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\30AD\30E3\30F3\30BB\30EB')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8355586844137144)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8353152831137136)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P7_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8351110650137078)
,p_name=>'P7_LINK_NUM'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8350863797137076)
,p_item_source_plug_id=>wwv_flow_api.id(8350863797137076)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Link Num'
,p_source=>'LINK_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8351498072137128)
,p_name=>'P7_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8350863797137076)
,p_item_source_plug_id=>wwv_flow_api.id(8350863797137076)
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\540D')
,p_source=>'FILE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>250
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8351987803137130)
,p_name=>'P7_CONTENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8350863797137076)
,p_item_source_plug_id=>wwv_flow_api.id(8350863797137076)
,p_prompt=>unistr('\30B3\30F3\30C6\30F3\30C8\30FB\30BF\30A4\30D7')
,p_source=>'CONTENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8353679484137137)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8353574675137137)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8354488225137139)
,p_event_id=>wwv_flow_api.id(8353679484137137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8356753682137146)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(8350863797137076)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\30D7\30ED\30BB\30B9\30FB\30D5\30A9\30FC\30E0\30D5\30A9\30FC\30E0\306E\4F5C\6210')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8357156622137146)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8356393309137145)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(8350863797137076)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0 \30D5\30A1\30A4\30EB\5C5E\6027\306E\4FEE\6B63')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\8CC7\6599\524A\9664\306E\901A\77E5')
,p_step_title=>unistr('&APP_NAME.: \6587\66F8&P8_LINK_NUM.\524A\9664')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(258848669354256797)
,p_step_template=>wwv_flow_api.id(451155874492606742)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612103058'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(409514929898595142)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(414615435458185784)
,p_plug_name=>'Announce'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('htp.p(''DOC#'' || :P8_LINK_NUM || ''\304C\524A\9664\3055\308C\307E\3057\305F\3002'');'),
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(409752423214978156)
,p_name=>'P8_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(414615435458185784)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\53D7\4ED8')
,p_alias=>'DOWNLOAD'
,p_step_title=>unistr('&APP_NAME.: \30D5\30A1\30A4\30EB\30FB\30C0\30A6\30F3\30ED\30FC\30C9')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(258848669354256797)
,p_page_template_options=>'#DEFAULT#'
,p_deep_linking=>'Y'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'2018/10/30 - ynakakos',
unistr('\691C\7D22\6761\4EF6\5909\66F4\306E\3064\3044\3067\306B\3001Consulting Only (opl_code = 5)\306E\8CC7\6599\306F\3001\30B3\30F3\30B5\30EB\30BF\30F3\30C8\4EE5\5916\304C\30C0\30A6\30F3\30ED\30FC\30C9\3067\304D\306A\3044\3088\3046\306B\3059\308B\30ED\30B8\30C3\30AF\3092\8FFD\52A0\3057\305F\3002\305F\3060\3057\3001\73FE\5728\306F\30B3\30E1\30F3\30C8\30A2\30A6\30C8\3057\3066\7121\52B9\306B\3057\3066\3044\308B\3002')))
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190725115004'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(463578067730873171)
,p_plug_name=>unistr('\6587\66F8\306E\30C0\30A6\30F3\30ED\30FC\30C9')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452130433175356862)
,p_name=>'DOWNLOAD_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(463578067730873171)
,p_prompt=>unistr('\6587\66F8ID')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152985443460802436)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30A8\30A4\30EA\30A2\30B9\306E\89E3\6C7A')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- check document alias',
'declare',
'  l_act_link_num tcw_documents.link_num%type;',
'begin',
'  select link_num into l_act_link_num from tcw_documents',
'  where upper(alias_name) = upper(:DOWNLOAD_LINK_NUM);',
'  if l_act_link_num is not null then',
'    :DOWNLOAD_LINK_NUM := l_act_link_num; -- use actual link_num',
'  end if;',
'exception',
'  when no_data_found then',
'    null;  -- nothing find, so it must be LINK_NUM',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DOWNLOAD_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452130798420356863)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\6A29\9650\78BA\8A8D\3068\30C0\30A6\30F3\30ED\30FC\30C9')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_opl_code     tcw_documents.opl_code%type;',
'  l_is_protected tcw_documents.is_protected%type;',
'  l_is_owned     number;',
'  l_u_email      tcw_documents.upd_username%type;',
'  l_now          timestamp with local time zone;',
'  l_prevent      timestamp with local time zone;',
'begin',
'  -- Prevent too many downloads, it must be lower than 100 in a day.',
'  begin',
'    select username into l_u_email from tcw_download_history ',
'    where username = :APP_USER and date_download > (sysdate - 1) ',
'    group by username having count(*) > 100;',
'    -- reason code 2 - too many download',
'    tcw_util.log_download_violation(:DOWNLOAD_LINK_NUM, :APP_USER, systimestamp, 2);',
'    apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''BLOCKED''));',
'  exception',
'    when no_data_found then',
'      null; -- continue',
'  end;',
'  -- Prevent sequential downloads, exponential backoff',
'  begin',
'    select date_download into l_prevent from tcw_download_violations',
'    where username = :APP_USER and reason = 4 and date_download > systimestamp',
'    order by date_download desc',
'    fetch first 1 rows only;',
'    -- access must be blocked because reason 4 line exist in the future.',
'    select date_download into l_now from tcw_download_violations',
'    where username = :APP_USER and reason = 3',
'    order by date_download desc',
'    fetch first 1 rows only;',
'    -- extend the period to prevent download attempt',
'    tcw_util.log_download_violation(:DOWNLOAD_LINK_NUM, :APP_USER,',
'                                    l_prevent + (l_prevent - l_now), 4);',
'    apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''BLOCKED''));',
'  exception',
'    when no_data_found then',
'      null; -- no violation, continue',
'  end;',
'  -- Prevent sequential downloads.',
'  begin',
'    select opl_code, upd_username, is_protected ',
'      into l_opl_code, l_u_email, l_is_protected',
'    from tcw_documents l join tcw_doc_data d on l.link_num = d.link_num',
'    where l.link_num = :DOWNLOAD_LINK_NUM and l.opl_code > 0;',
'  exception',
'    when no_data_found then',
'      -- reason code 3 - malicious download',
'      l_now := systimestamp;',
'      tcw_util.log_download_violation(:DOWNLOAD_LINK_NUM, :APP_USER, l_now, 3);',
'      l_now := l_now + interval ''10'' second;',
'      tcw_util.log_download_violation(:DOWNLOAD_LINK_NUM, :APP_USER, l_now, 4);',
'      apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''BLOCKED''));',
'  end;',
'  -- check if someone trying to download any protected documents.',
'  select count(*) into l_is_owned from tcw_doc_acls',
'  where link_num = :DOWNLOAD_LINK_NUM and user_name = :APP_USER;',
'  if (l_opl_code = 4 and l_u_email <> :APP_USER) then',
'    -- Strictly Confidential, should not happen because SC should not be uploaded.',
'    tcw_util.log_download_violation(:DOWNLOAD_LINK_NUM, :APP_USER, systimestamp, 1);',
'    apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''BLOCKED''));',
'  elsif (l_opl_code = 5 and nvl(:IN_CONSULTING, 0) <> 1) then',
'    -- Consulting Only',
'    tcw_util.log_download_violation(:DOWNLOAD_LINK_NUM, :APP_USER, systimestamp, 0);',
'    apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''BLOCKED''));',
'  elsif (l_opl_code = 6 and l_is_protected = ''Y'' and',
'        not(l_u_email = :APP_USER or l_is_owned > 0)) then',
'    tcw_util.log_download_violation(:DOWNLOAD_LINK_NUM, :APP_USER, systimestamp, 1);',
'    apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''BLOCKED''));',
'  end if;',
'  -- download the requested document.',
'  tcw_util.log_download_history(:DOWNLOAD_LINK_NUM, :APP_USER, systimestamp);',
'  apex_util.redirect_url(',
'   p_url => apex_util.get_blob_file_src(''P6_LINK_OBJECT'', :DOWNLOAD_LINK_NUM)',
'  );',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DOWNLOAD_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6A29\9650\30A8\30E9\30FC')
,p_alias=>'BLOCKED'
,p_step_title=>unistr('&APP_NAME.: \30C0\30A6\30F3\30ED\30FC\30C9\30FB\30A8\30E9\30FC')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(258848669354256797)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190613185742'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(472682668338370417)
,p_plug_name=>'Error'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\4EE5\4E0B\306E\7406\7531\306B\3088\308A\30C0\30A6\30F3\30ED\30FC\30C9\3067\304D\307E\305B\3093\3002<br/>'),
'<ul>',
unistr('<li>\6307\5B9A\306E\8CC7\6599\306F\5B58\5728\3057\3066\3044\306A\3044\3002</li>'),
unistr('<li>\6307\5B9A\306E\8CC7\6599\306F\3059\3067\306B\524A\9664\3055\308C\3066\3044\308B\3002</li>'),
unistr('<li>\30C0\30A6\30F3\30ED\30FC\30C9\3059\308B\6A29\9650\304C\306A\3044\3002</li>'),
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152985365455802435)
,p_name=>'P10_BLOCKED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(472682668338370417)
,p_prompt=>unistr('\5236\9650\6642\523B')
,p_pre_element_text=>unistr('\4E0D\6B63\306A\30C0\30A6\30F3\30ED\30FC\30C9\8981\6C42\304C\691C\77E5\3055\308C\305F\305F\3081\3001\30C0\30A6\30F3\30ED\30FC\30C9\304C\5236\9650\3055\308C\307E\3059\3002')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(date_download,''YYYY-MM-DD HH24:MI:SS'') from tcw_download_violations',
'where username = :APP_USER and reason = 4 and date_download > systimestamp',
'order by date_download desc',
'fetch first 1 rows only;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select date_download from tcw_download_violations',
'where username = :APP_USER and reason = 4 and date_download > systimestamp',
'order by date_download desc',
'fetch first 1 rows only;'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\9055\53CD')
,p_alias=>'VIOLATION'
,p_step_title=>unistr('&APP_NAME.: \30C0\30A6\30F3\30ED\30FC\30C9\9055\53CD')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612141409'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(157484482311296117)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(157484975837296134)
,p_plug_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\9055\53CD')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select link_num, username, date_download, reason ',
'from tcw_download_violations',
'where reason > nvl(:IN_CONSULTING, 0);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(157485054148296134)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\9055\53CD')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>149239111415681825
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(157485485471296182)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'LINK_NUM'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(157485855548296197)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'USERNAME'
,p_column_html_expression=>'<a href="&PERSON_URL./@#USERNAME#" target="_blank">#USERNAME#</a>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(157486254833296199)
,p_db_column_name=>'DATE_DOWNLOAD'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'DATE_DOWNLOAD'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152984895483802430)
,p_db_column_name=>'REASON'
,p_display_order=>13
,p_column_identifier=>'D'
,p_column_label=>'Reason'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(161615829386238189)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(157500193736329150)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1492543'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_NUM:USERNAME:DATE_DOWNLOAD:REASON'
,p_sort_column_1=>'DATE_DOWNLOAD'
,p_sort_direction_1=>'DESC'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\671F\9593\30EC\30DD\30FC\30C8')
,p_step_title=>unistr('&APP_NAME.: \671F\9593\30EC\30DD\30FC\30C8')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612104104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176271031118538273)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176271554230538294)
,p_plug_name=>unistr('\671F\9593\30EC\30DD\30FC\30C8')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with docs_vw as (',
'  select link_num, obj_name, opl_code, reg_date, upd_date from tcw_documents',
'  where upd_username = :APP_USER and',
'  (',
'    reg_date between :P12_PERIOD_START and :P12_PERIOD_END',
'    or',
'    upd_date between :P12_PERIOD_START and :P12_PERIOD_END',
'  )',
'  and opl_code between 1 and 5 and is_author = ''Y''',
'), ref_vw as (',
'  select link_num, count(*) as ref_count from tcw_download_history ',
'  where last_updated_by = :APP_USER and date_download between :P12_PERIOD_START and :P12_PERIOD_END',
'  group by link_num',
'), upd_vw as (',
'  select link_num, count(*) as upd_count from tcw_doc_archives',
'  where created_by = :APP_USER and creation_date between :P12_PERIOD_START and :P12_PERIOD_END',
'  group by link_num',
'), tags_vw as (',
'  select link_num, listagg(hashtag,'','') within group (order by hashtag) tags',
'  from tcw_hashtags where link_num in (select link_num from docs_vw)',
'  group by link_num',
')',
'select d.link_num, d.obj_name, d.opl_code, d.reg_date, d.upd_date, r.ref_count, u.upd_count, t.tags, g.content_type_alias as type',
'from docs_vw d left outer join ref_vw r on d.link_num = r.link_num',
'               left outer join upd_vw u on d.link_num = u.link_num',
'               left outer join tags_vw t on d.link_num = t.link_num',
'               left outer join ',
'                (tcw_doc_data a left outer join tcw_content_types g',
'               on a.content_type = g.content_type)',
'               on d.link_num = a.link_num'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(176271675729538294)
,p_name=>unistr('\671F\9593\30EC\30DD\30FC\30C8')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>168025732996923985
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176274052266540920)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>'ID'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176272134176538333)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>unistr('\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176273459465540914)
,p_db_column_name=>'OPL_CODE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>unistr('\516C\958B\533A\5206')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(389470743285795739)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176273958799540919)
,p_db_column_name=>'REF_COUNT'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6570')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176273599208540915)
,p_db_column_name=>'UPD_DATE'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>unistr('\66F4\65B0\65E5')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176273701485540916)
,p_db_column_name=>'REG_DATE'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>unistr('\66F4\65B0\65E5')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176274217603540921)
,p_db_column_name=>'UPD_COUNT'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>unistr('\66F4\65B0\56DE\6570')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176274271221540922)
,p_db_column_name=>'TAGS'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>unistr('\30BF\30B0')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176276050892540940)
,p_db_column_name=>'TYPE'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>unistr('\5F62\5F0F')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(176272496223539314)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1680266'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'LINK_NUM:OBJ_NAME:OPL_CODE:REF_COUNT:REG_DATE:UPD_DATE::UPD_COUNT:TAGS:TYPE'
,p_sort_column_1=>'UPD_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176273300380540912)
,p_plug_name=>unistr('\671F\9593\6307\5B9A')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176274411758540923)
,p_plug_name=>unistr('\30B5\30DE\30EA\30FC')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176275548037540935)
,p_plug_name=>unistr('\30BF\30B0')
,p_parent_plug_id=>wwv_flow_api.id(176274411758540923)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with docs_vw as (',
'  select link_num, obj_name, opl_code, reg_date, upd_date from tcw_documents',
'  where upd_username = :APP_USER and ',
'  (',
'    reg_date between :P12_PERIOD_START and :P12_PERIOD_END',
'    or',
'    upd_date between :P12_PERIOD_START and :P12_PERIOD_END',
'  )',
'  and opl_code between 1 and 5',
')',
'select hashtag as label, count(*)/(select count(*) from docs_vw) as pct from tcw_hashtags where link_num in (select link_num from docs_vw)',
'group by hashtag order by pct desc',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(176275643974540936)
,p_region_id=>wwv_flow_api.id(176275548037540935)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(176275826231540937)
,p_chart_id=>wwv_flow_api.id(176275643974540936)
,p_seq=>10
,p_name=>unistr('\4EF6\6570')
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'PCT'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(176276026460540939)
,p_chart_id=>wwv_flow_api.id(176275643974540936)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_min=>0
,p_max=>1
,p_format_type=>'percent'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(176275843635540938)
,p_chart_id=>wwv_flow_api.id(176275643974540936)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(176273361541540913)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(176273300380540912)
,p_button_name=>'B_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\8A2D\5B9A')
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176273115768540910)
,p_name=>'P12_PERIOD_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(176273300380540912)
,p_prompt=>unistr('\958B\59CB')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176273163694540911)
,p_name=>'P12_PERIOD_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(176273300380540912)
,p_prompt=>unistr('\7D42\4E86')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176274505864540924)
,p_name=>'P12_TOTAL_DOCS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(176274411758540923)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\4F5C\6210\8CC7\6599\6570(\66F4\65B0\542B\3080)')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) from tcw_documents',
'where upd_username = :APP_USER and ',
'(',
'  reg_date between :P12_PERIOD_START and :P12_PERIOD_END',
'  or',
'  upd_date between :P12_PERIOD_START and :P12_PERIOD_END',
')',
'and opl_code between 1 and 5 and is_author = ''Y'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176274563176540925)
,p_name=>'P12_UPD_DOCS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(176274411758540923)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\66F4\65B0\3057\305F\56DE\6570')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with docs_vw as (',
'  select link_num, obj_name, opl_code, reg_date, upd_date from tcw_documents',
'  where upd_username = :APP_USER and',
'  (',
'    reg_date between :P12_PERIOD_START and :P12_PERIOD_END',
'    or',
'    upd_date between :P12_PERIOD_START and :P12_PERIOD_END',
'  )',
'  and opl_code between 1 and 5 and is_author = ''Y''',
')',
'select count(*) from tcw_doc_archives',
'where created_by = :APP_USER ',
'and creation_date between :P12_PERIOD_START and :P12_PERIOD_END',
'and opl_code between 1 and 5 and link_num in (select link_num from docs_vw)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176274651021540926)
,p_name=>'P12_TOTAL_DOWNLOADS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(176274411758540923)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\5EF6\3079\30C0\30A6\30F3\30ED\30FC\30C9\6570(\5F53\671F\8CC7\6599)')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with docs_vw as (',
'  select link_num, obj_name, opl_code, reg_date, upd_date from tcw_documents',
'  where upd_username = :APP_USER and ',
'  (',
'    reg_date between :P12_PERIOD_START and :P12_PERIOD_END',
'    or',
'    upd_date between :P12_PERIOD_START and :P12_PERIOD_END',
'  )',
'  and opl_code between 1 and 5 and is_author = ''Y''',
')',
'select count(*) as ref_count from tcw_download_history ',
'where last_updated_by = :APP_USER and date_download between :P12_PERIOD_START and :P12_PERIOD_END',
'and link_num in (select link_num from docs_vw)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176274749266540927)
,p_name=>'P12_ALL_DOWNLOADS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(176274411758540923)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\5EF6\3079\30C0\30A6\30F3\30ED\30FC\30C9\6570(\5168\8CC7\6599)')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with docs_vw as (',
'  select link_num, obj_name, opl_code, reg_date, upd_date from tcw_documents',
'  where upd_username = :APP_USER',
'  and opl_code between 1 and 5 and is_author = ''Y''',
')',
'select count(*) as ref_count from tcw_download_history ',
'where last_updated_by = :APP_USER and date_download between :P12_PERIOD_START and :P12_PERIOD_END',
'and link_num in (select link_num from docs_vw)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176274935482540928)
,p_name=>'P12_TOTAL_REFERRES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(176274411758540923)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\53C2\7167\8005\6570(\5F53\671F\8CC7\6599)')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with docs_vw as (',
'  select link_num, obj_name, opl_code, reg_date, upd_date from tcw_documents',
'  where upd_username = :APP_USER and ',
'  (',
'    reg_date between :P12_PERIOD_START and :P12_PERIOD_END',
'    or',
'    upd_date between :P12_PERIOD_START and :P12_PERIOD_END',
'  )',
'  and opl_code between 1 and 5 and is_author = ''Y''',
')',
'select count(distinct username) from tcw_download_history',
'where last_updated_by = :APP_USER and date_download between :P12_PERIOD_START and :P12_PERIOD_END',
'and link_num in (select link_num from docs_vw)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(176274994420540929)
,p_name=>'P12_ALL_REFERRES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(176274411758540923)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\53C2\7167\8005\6570(\5168\8CC7\6599)')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with docs_vw as (',
'  select link_num, obj_name, opl_code, reg_date, upd_date from tcw_documents',
'  where upd_username = :APP_USER',
'  and opl_code between 1 and 5 and is_author = ''Y''',
')',
'select count(distinct username) from tcw_download_history ',
'where last_updated_by = :APP_USER',
'and date_download between :P12_PERIOD_START and :P12_PERIOD_END',
'and link_num in (select link_num from docs_vw)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\8CC7\6599\7DE8\96C6\6A29\9650\306E\66F4\65B0')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\66F8&P13_LINK_NUM.\6A29\9650\5272\5F53')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258852281100286956)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'800'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612103802'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(472083963416091461)
,p_plug_name=>unistr('\8AAC\660E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\6587\66F8\306E\7DE8\96C6\6A29\9650\3092\4ED6\306E\30E6\30FC\30B6\30FC\306B\5272\308A\5F53\3066\307E\3059\3002\3053\306E\5272\5F53\4F5C\696D\306F\8A72\5F53\6587\66F8\306E\6700\7D42\306E\66F4\65B0\8005\306E\307F\304C\5B9F\65BD\3067\304D\308B\3088\3046\3001\5236\9650\3055\308C\3066\3044\307E\3059\3002\5225\306E\30E6\30FC\30B6\30FC\306B\3088\308B\6587\66F8\306E\66F4\65B0\304C\3042\308B\3068\6700\7D42\66F4\65B0\8005(=\6240\6709\8005)\304C\5909\308F\308B\305F\3081\3001\73FE\6642\70B9\306E\6240\6709\8005\306F\7DE8\96C6\6A29\9650\3092\5931\3044\3001\7DE8\96C6\6A29\9650\306F\5B8C\5168\306B\79FB\884C\3057\307E\3059\3002\7D99\7D9A\3057\3066\7DE8\96C6\6A29\9650\3092\4FDD\6301\3057\305F\3044\5834\5408\306F\3001\81EA\5206\81EA\8EAB\3092\3042\3089\304B\3058\3081\8FFD\52A0\3057\3066\304A\304D\307E\3059\3002')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(472651341690863101)
,p_plug_name=>'Update Document ACLs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LINK_NUM,',
'       USER_NAME,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       LAST_UPDATED_BY,',
'       LAST_UPDATE_DATE',
'  from TCW_DOC_ACLS',
'where link_num = :P13_LINK_NUM'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P13_LINK_NUM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(472652372945863131)
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
 p_id=>wwv_flow_api.id(472652906603863137)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(472653509063863152)
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
 p_id=>wwv_flow_api.id(472654112822863158)
,p_name=>'LINK_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_NUM'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ID#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P13_LINK_NUM'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(472654679714863162)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>80
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(472655266018863163)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(472655933906863165)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Creation Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(472656545909863166)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(472657131951863166)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Update Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(472651838827863110)
,p_internal_uid=>84867350116412790
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(472652162358863118)
,p_interactive_grid_id=>wwv_flow_api.id(472651838827863110)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(472652256536863120)
,p_report_id=>wwv_flow_api.id(472652162358863118)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(472653272049863144)
,p_view_id=>wwv_flow_api.id(472652256536863120)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(472652906603863137)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(472653888934863153)
,p_view_id=>wwv_flow_api.id(472652256536863120)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(472653509063863152)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(472654473162863161)
,p_view_id=>wwv_flow_api.id(472652256536863120)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(472654112822863158)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(472655127424863163)
,p_view_id=>wwv_flow_api.id(472652256536863120)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(472654679714863162)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(472655729253863164)
,p_view_id=>wwv_flow_api.id(472652256536863120)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(472655266018863163)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(472656305244863165)
,p_view_id=>wwv_flow_api.id(472652256536863120)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(472655933906863165)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(472656880710863166)
,p_view_id=>wwv_flow_api.id(472652256536863120)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(472656545909863166)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(472657493771863167)
,p_view_id=>wwv_flow_api.id(472652256536863120)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(472657131951863166)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452148018807417581)
,p_name=>'P13_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(472651341690863101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452148468804417582)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(472651341690863101)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30E1\30FC\30EB\30C6\30F3\30D7\30EC\30FC\30C8\306E\4FEE\6B63')
,p_step_title=>unistr('\30E1\30FC\30EB\30C6\30F3\30D7\30EC\30FC\30C8\306E\4FEE\6B63')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258847645115242583)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190611172609'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8475002634189987)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8475655810190202)
,p_plug_name=>unistr('\30D5\30A9\30FC\30E0\306E\4F5C\6210')
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ETP_TEMPLATES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8480638606190248)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8475655810190202)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\4FDD\5B58')
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P14_ETP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8479407768190236)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8475655810190202)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\30AD\30E3\30F3\30BB\30EB')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8481393493190249)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8475898316190202)
,p_name=>'P14_ETP_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8475655810190202)
,p_item_source_plug_id=>wwv_flow_api.id(8475655810190202)
,p_prompt=>unistr('\30C6\30F3\30D7\30EC\30FC\30C8ID')
,p_source=>'ETP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select etp_id d, etp_id r',
'from etp_templates'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('- \30C6\30F3\30D7\30EC\30FC\30C8\306E\9078\629E -')
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8476302628190224)
,p_name=>'P14_SUBJECT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8475655810190202)
,p_item_source_plug_id=>wwv_flow_api.id(8475655810190202)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subject'
,p_source=>'SUBJECT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191400021606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8476777329190226)
,p_name=>'P14_BODY_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8475655810190202)
,p_item_source_plug_id=>wwv_flow_api.id(8475655810190202)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body Text'
,p_source=>'BODY_TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8477189582190227)
,p_name=>'P14_BODY_HTML'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8475655810190202)
,p_item_source_plug_id=>wwv_flow_api.id(8475655810190202)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Body Html'
,p_source=>'BODY_HTML'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8477513913190228)
,p_name=>'P14_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8475655810190202)
,p_item_source_plug_id=>wwv_flow_api.id(8475655810190202)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>800
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8492252735190261)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(8475655810190202)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\30D7\30ED\30BB\30B9\30FB\30D5\30A9\30FC\30E0\30D5\30A9\30FC\30E0\306E\4F5C\6210')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8491874472190256)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(8475655810190202)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0\30D5\30A9\30FC\30E0\306E\4F5C\6210')
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\79C1\306E\4FEE\6B63\4F9D\983C')
,p_step_title=>unistr('&APP_NAME.: \308F\305F\3057\306E\4FEE\6B63\4F9D\983C')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258852281100286956)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612103307'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(152986038264802441)
,p_plug_name=>unistr('\79C1\304C\767B\9332\3057\305F\4FEE\6B63\4F9D\983C')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.link_num, l.obj_name, r.remark_text, r.is_closed, r.date_closed, r.last_update_date from tcw_documents l join tcw_doc_remarks r on l.link_num = r.link_num ',
'where r.author = :APP_USER',
'order by l.link_num, r.date_of_remark'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(152986117256802442)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>144740174524188133
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152986148297802443)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Doc#'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152986255901802444)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\6587\66F8\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152986391194802445)
,p_db_column_name=>'REMARK_TEXT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\4F9D\983C\5185\5BB9')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152986487075802446)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\6700\7D42\66F4\65B0')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152986584169802447)
,p_db_column_name=>'IS_CLOSED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('\5BFE\5FDC\6E08\307F')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152986713985802448)
,p_db_column_name=>'DATE_CLOSED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('\5BFE\5FDC\65E5')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(163727895662449591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1554820'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'LINK_NUM:OBJ_NAME:REMARK_TEXT:IS_CLOSED:DATE_CLOSED:LAST_UPDATE_DATE:'
,p_sort_column_1=>'LAST_UPDATE_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(152986743375802449)
,p_plug_name=>unistr('\30BB\30EC\30AF\30BF')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(471609237597757594)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(472301471834924698)
,p_plug_name=>unistr('\79C1\306E\8CC7\6599\3078\306E\4FEE\6B63\4F9D\983C')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.link_num, l.obj_name, r.remark_text, r.is_closed, r.date_closed, r.last_update_date from tcw_documents l join tcw_doc_remarks r on l.link_num = r.link_num ',
'where l.link_num in (select link_num from tcw_doc_acls where user_name = :APP_USER)',
'   or upd_username = :APP_USER',
'order by l.link_num, r.date_of_remark'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(472301557820924698)
,p_name=>'My Remarks'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>84517069109474378
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451673342004083695)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Doc#'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451673746914083696)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>unistr('\6587\66F8\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451671735153083693)
,p_db_column_name=>'REMARK_TEXT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>unistr('\4F9D\983C\5185\5BB9')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451672135204083694)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>unistr('\6700\7D42\66F4\65B0')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451672559651083694)
,p_db_column_name=>'IS_CLOSED'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>unistr('\5BFE\5FDC\6E08\307F')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(451672950099083694)
,p_db_column_name=>'DATE_CLOSED'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>unistr('\5BFE\5FDC\65E5')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(472309620094925321)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'638896'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'LINK_NUM:OBJ_NAME:REMARK_TEXT:IS_CLOSED:DATE_CLOSED:LAST_UPDATE_DATE:'
,p_sort_column_1=>'LAST_UPDATE_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_step_title=>unistr('&APP_NAME.: \30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258850202867268354)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612141523'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(451570729456923337)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(481480704361011280)
,p_plug_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select h.link_num, h.username, h.date_download, l.obj_name, ',
'  case',
'  when h.last_updated_by is null then l.upd_username',
'  else h.last_updated_by',
'  end last_updated_by',
'from tcw_documents l join tcw_download_history h on l.link_num = h.link_num',
' and l.in_consulting <= nvl(:IN_CONSULTING, 0)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(481480759420011280)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>93696270708560960
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452158032071450081)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_allow_highlighting=>'N'
,p_allow_computations=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452157195277450075)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>11
,p_column_identifier=>'D'
,p_column_label=>unistr('\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452158400218450081)
,p_db_column_name=>'USERNAME'
,p_display_order=>31
,p_column_identifier=>'B'
,p_column_label=>unistr('\53C2\7167\8005')
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="&PERSON_URL./@#USERNAME#" target="_blank">#USERNAME#</a>',
''))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(480955554139883524)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>41
,p_column_identifier=>'F'
,p_column_label=>unistr('\6700\7D42\66F4\65B0\8005')
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="&PERSON_URL./@#LAST_UPDATED_BY#" target="_blank">#LAST_UPDATED_BY#</a>',
''))
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452158874598450082)
,p_db_column_name=>'DATE_DOWNLOAD'
,p_display_order=>51
,p_column_identifier=>'C'
,p_column_label=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\65E5')
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(481485943756021543)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'643747'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_NUM:OBJ_NAME:USERNAME:LAST_UPDATED_BY:DATE_DOWNLOAD:'
,p_sort_column_1=>'DATE_DOWNLOAD'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\4FEE\6B63\4F9D\983C\306E\767B\9332\4FEE\6B63')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\66F8&P18_LINK_NUM.\4FEE\6B63\7DE8\96C6')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258852281100286956)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612101651'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8498676079269671)
,p_plug_name=>unistr('\4FEE\6B63\4F9D\983C')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'TCW_DOC_REMARKS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8503399064269686)
,p_plug_name=>unistr('\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451163538186606812)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8503830034269687)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8503399064269686)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\30AD\30E3\30F3\30BB\30EB')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8505441411269693)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8503399064269686)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P18_TCW_REMARK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8505821200269694)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8503399064269686)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P18_TCW_REMARK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8498931599269672)
,p_name=>'P18_TCW_REMARK_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8498676079269671)
,p_item_source_plug_id=>wwv_flow_api.id(8498676079269671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tcw Remark Id'
,p_source=>'TCW_REMARK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8499342621269673)
,p_name=>'P18_LINK_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8498676079269671)
,p_item_source_plug_id=>wwv_flow_api.id(8498676079269671)
,p_source=>'LINK_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8499729512269673)
,p_name=>'P18_REMARK_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8498676079269671)
,p_item_source_plug_id=>wwv_flow_api.id(8498676079269671)
,p_prompt=>unistr('\4FEE\6B63\5185\5BB9')
,p_source=>'REMARK_TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8500169362269674)
,p_name=>'P18_AUTHOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8498676079269671)
,p_item_source_plug_id=>wwv_flow_api.id(8498676079269671)
,p_prompt=>unistr('\66F4\65B0\8005')
,p_source=>'AUTHOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8500559629269674)
,p_name=>'P18_DATE_OF_REMARK'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8498676079269671)
,p_item_source_plug_id=>wwv_flow_api.id(8498676079269671)
,p_source=>'DATE_OF_REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8501259621269680)
,p_name=>'P18_IS_CLOSED'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8498676079269671)
,p_item_source_plug_id=>wwv_flow_api.id(8498676079269671)
,p_prompt=>unistr('\5BFE\5FDC\6E08\307F')
,p_source=>'IS_CLOSED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(451191400021606938)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8501036649269677)
,p_validation_name=>'P18_DATE_OF_REMARK must be timestamp'
,p_validation_sequence=>40
,p_validation=>'P18_DATE_OF_REMARK'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>unistr('#LABEL#\306F\6709\52B9\306A\30BF\30A4\30E0\30B9\30BF\30F3\30D7\3067\3042\308B\5FC5\8981\304C\3042\308A\307E\3059\3002')
,p_associated_item=>wwv_flow_api.id(8500559629269674)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8503992441269687)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8503830034269687)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8504772627269690)
,p_event_id=>wwv_flow_api.id(8503992441269687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8507016325269697)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(8498676079269671)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\30D7\30ED\30BB\30B9\30FB\30D5\30A9\30FC\30E0\30D5\30A9\30FC\30E0\306E\4F5C\6210')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8507411562269698)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8506691937269696)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(8498676079269671)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0\30D5\30A9\30FC\30E0\306E\4F5C\6210')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\691C\7D22\30EF\30FC\30C9\5C65\6B74')
,p_step_title=>unistr('&APP_NAME.: \691C\7D22\30EF\30FC\30C9\5C65\6B74')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258850202867268354)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612103414'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(451570840033923338)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(481958266573947587)
,p_plug_name=>unistr('\691C\7D22\5358\8A9E\5C65\6B74')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from tcw_query_history'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(481958389092947587)
,p_name=>unistr('\691C\7D22\5358\8A9E\5C65\6B74')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>94173900381497267
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452172884295454013)
,p_db_column_name=>'QUERY_TERM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Query Term'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452173216255454013)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452173640828454013)
,p_db_column_name=>'DATE_QUERY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Date Query'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452174018439454014)
,p_db_column_name=>'QUERY_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Query Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452174426181454014)
,p_db_column_name=>'TERM_POSITION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Term Position'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(481960702871948132)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'643903'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'QUERY_TERM:USERNAME:DATE_QUERY:TERM_POSITION:QUERY_TYPE:'
,p_sort_column_1=>'DATE_QUERY'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'TERM_POSITION'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\6240\6709\8005\306B\3088\308B\691C\7D22')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6240\6709\8005\306B\3088\308B\691C\7D22')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(451154463867606719)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612103824'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(535215786763267252)
,p_plug_name=>'Owner Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\6700\7D42\66F4\65B0\8005\3067\3042\308B\304B\3001\307E\305F\306F\3001\7DE8\96C6\6A29\9650\3092\6301\3063\3066\3044\308B\6587\66F8\3092\4E00\89A7\3057\307E\3059\3002')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(451543588094901082)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(535215786763267252)
,p_button_name=>'B_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\691C\7D22')
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(451544878522901089)
,p_branch_name=>'Go To Search Result'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(451543923029901083)
,p_name=>'P20_OWNER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(535215786763267252)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\6587\66F8\306E\6240\6709\8005')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with search_usernames_wv as',
'(',
'  select upd_username as user_name from tcw_documents',
'  where opl_code > 0',
'  group by upd_username',
'  union',
'  select user_name from tcw_doc_acls',
'  where link_num in',
'  (',
'    select link_num from tcw_documents',
'    where opl_code > 0',
'  )',
'  group by user_name',
')',
'select case',
'       when u.last_name is null then',
'          v.user_name',
'       else',
'          u.last_name || '' '' || u.first_name || '','' || v.user_name',
'       end d,',
'       v.user_name r',
'from search_usernames_wv v left outer join tcw_user_names u on v.user_name = u.user_name',
'order by r'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(451191400021606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(451544288900901085)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  apex_collection.add_member(''SEARCH_OWNERS'', tcw_util.get_name_part(:P20_OWNER));',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\5916\90E8\30B5\30A4\30C8\3078\306E\30EA\30C0\30A4\30EC\30AF\30C8')
,p_step_title=>unistr('&APP_NAME.: \5916\90E8\30B5\30A4\30C8\3078\306E\30EA\30C0\30A4\30EC\30AF\30C8')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_deep_linking=>'Y'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>unistr('\30D5\30A1\30A4\30EB\306E\4EE3\308F\308A\306BURL\3092\767B\9332\3057\305F\5834\5408\3001\305D\3053\3092\53C2\7167\3059\308B\306E\306B\4E00\6BB5\968E\7F6E\3044\3066\3001\30A2\30AF\30BB\30B9\5C65\6B74\3092\3068\308B\3053\3068\3092\76EE\7684\3068\3057\3066\4F5C\6210\3057\305F\304C\3001\4F7F\308F\308C\3066\3044\306A\3044\3002')
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612103524'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(523033920827894770)
,p_plug_name=>'Item Holder'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452177839315471928)
,p_name=>'REDIRECT_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(523033920827894770)
,p_prompt=>'Link Num'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452178213781471930)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Redirect'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_link_type tcw_documents.link_type%type;',
'  l_link_url  tcw_documents.link_url%type;',
'begin',
'  begin',
'    select link_type, link_url into l_link_type, l_link_url from tcw_documents',
'    where link_num = :REDIRECT_LINK_NUM;',
'  exception',
'    when no_data_found then',
'      -- go back to home page if no URL is registered.',
'      apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''SEARCH''));',
'  end;',
'  -- log the request and redirect to actual download page if user is valid.',
'  tcw_util.log_download_history(:REDIRECT_LINK_NUM, :APP_USER, systimestamp);',
'  apex_util.redirect_url(p_url => l_link_url);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\6982\8981\306E\66F4\65B0')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\66F8&P22_LINK_NUM.\6982\8981\66F4\65B0')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258851339093278569)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612142441'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7514679823690984)
,p_plug_name=>unistr('\6982\8981\306E\66F4\65B0')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'TCW_DOCUMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>unistr('\30CF\30C3\30B7\30E5\30BF\30B0\3092\6982\8981\306B\8A18\8F09\3057\3066\8A8D\8B58\3055\305B\308B\3088\3046\306B\3057\305F\306E\3067\3059\304C\3001\6982\8981\3092\66F4\65B0\3059\308B\969B\306B\8CC7\6599\306E\60C5\5831\3092\5168\66F4\65B0\3059\308B\6C17\306B\306A\3089\306A\3044\306E\3067\3001\3053\306E\753B\9762\3092\4F5C\3063\3066\3044\307E\3059\3002\610F\56F3\3057\305F\3088\3046\306B\30CF\30C3\30B7\30E5\30BF\30B0\304C\8A8D\8B58\3055\308C\3066\3044\308B\304B\78BA\8A8D\3059\308B\305F\3081\3067\3082\3042\308A\307E\3059\3002\3053\3053\3067\306E\6982\8981\306E\66F4\65B0\306F\3001\6587\66F8\306E\66F4\65B0\65E5\3084\4ED6\306E\30C7\30FC\30BF\306B\5F71\97FF\3092\4E0E\3048\307E\305B\3093\3002')
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(511504383198172019)
,p_name=>unistr('\8A8D\8B58\6E08\307F\30CF\30C3\30B7\30E5\30BF\30B0')
,p_parent_plug_id=>wwv_flow_api.id(7514679823690984)
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select hashtag from tcw_hashtags where link_num = :P22_LINK_NUM order by 1'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(452161171286471921)
,p_query_column_id=>1
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30CF\30C3\30B7\30E5\30BF\30B0')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452163621402471926)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7514679823690984)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(452164032391471926)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7514679823690984)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P22_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7516316955691001)
,p_name=>'P22_LINK_NUM'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7514679823690984)
,p_item_source_plug_id=>wwv_flow_api.id(7514679823690984)
,p_source=>'LINK_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7517486049691012)
,p_name=>'P22_ABSTRACT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(7514679823690984)
,p_item_source_plug_id=>wwv_flow_api.id(7514679823690984)
,p_prompt=>unistr('\6982\8981')
,p_source=>'ABSTRACT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(452166299626471930)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(452163621402471926)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(452166871881471931)
,p_event_id=>wwv_flow_api.id(452166299626471930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7516208368691000)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(7514679823690984)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452164032391471926)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452164296545471927)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Hashtag'
,p_process_sql_clob=>'tcw_util.save_hashtags(:P22_LINK_NUM, :P22_ABSTRACT);'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(452164032391471926)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452165585903471929)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(452165927884471929)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7514761448690985)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(7514679823690984)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0\6982\8981\306E\66F4\65B0')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30D0\30FC\30B8\30E7\30F3\5C65\6B74')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\66F8&P23_LINK_NUM.\5909\66F4\5C65\6B74')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612103624'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(452654615541572314)
,p_plug_name=>'Version History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select link_num, obj_version, obj_name, file_name, content_type, owner, sys.dbms_lob.getlength(link_object) as download from tcw_doc_archives where link_num = :P23_LINK_NUM'
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(452654745731572314)
,p_name=>'Version History'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>64870257020121994
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452655120008572371)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Doc#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452655394717572377)
,p_db_column_name=>'OBJ_VERSION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\30D0\30FC\30B8\30E7\30F3')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452655888505572378)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452656229481572378)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\30D5\30A1\30A4\30EB\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452656621159572379)
,p_db_column_name=>'CONTENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\30D5\30A1\30A4\30EB\5F62\5F0F')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(454330769552951238)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452657088643572380)
,p_db_column_name=>'OWNER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('\6700\7D42\66F4\65B0\8ECA')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(452657430631572380)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>unistr('DOWNLOAD:TCW_DOC_ARCHIVES:LINK_OBJECT:LINK_NUM:OBJ_VERSION:CONTENT_TYPE:FILE_NAME:CREATION_DATE::attachment:\30C0\30A6\30F3\30ED\30FC\30C9:')
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(409743659084263319)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'219592'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_NUM:OBJ_VERSION:OBJ_NAME:FILE_NAME:CONTENT_TYPE:OWNER:DOWNLOAD'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(451570586892923335)
,p_name=>'P23_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(452654615541572314)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\958B\59CB\30DA\30FC\30B8')
,p_alias=>'LAUNCHER'
,p_step_title=>unistr('&APP_NAME.: : \30DB\30FC\30E0')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'p.tcw-Abstract {font-size:10px; font-color:glay;}',
'',
'div.tcw-confsquare {',
'  float:  left;',
'  width:  10px;',
'  height: 10px;',
'  margin: 2px;',
'  border: 1px solid rgba(0, 0, 0, .2);',
'}',
'',
'.orange {',
'    background: #ffa500;',
'}',
'',
'.blue {',
'    background: #0000ff;',
'}',
'',
'.green {',
'    background: #008000;',
'}',
'',
'.red {',
'    background: #ff0000',
'}',
'',
'.black {',
'    background: #000000',
'}'))
,p_step_template=>wwv_flow_api.id(451154964181606740)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_deep_linking=>'Y'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'2018/10/30 - ynakakos',
unistr('Consulting Only\306E\8CC7\6599\304C\307F\3093\306A\306B\30EA\30B9\30C8\3055\308C\3066\3044\305F\306E\3067\3001\30EA\30B9\30C8\3055\308C\306A\3044\3088\3046\691C\7D22\6761\4EF6\3092\8FFD\52A0\3057\305F\3002')))
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190828160808'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(10716218037972697)
,p_name=>unistr('\30BF\30B0\691C\7D22')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Launcher - \30BF\30B0\691C\7D22 (Documents\306E\307F) */'),
'with tags_wv as (',
'  select c001 as tag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), owners_wv as (',
'  select c001 || :AI_DOMAIN_NAME as owner',
'  from apex_collections',
'  where collection_name = ''SEARCH_OWNERS''',
'), doc_tags_wv as (',
'  select link_num from tcw_hashtags',
'  where hashtag in (select tag from tags_wv)',
'  group by link_num having count(*) >= (select count(*) from tags_wv)',
'), doc_words_wv as (',
'  select l.link_num from tcw_documents l left outer join tcw_doc_data d',
'    on l.link_num = d.link_num',
'  where contains(d.link_object, :AI_CONTAINS) > 0',
'  or contains(l.obj_name, :AI_CONTAINS) > 0',
'  or contains(l.abstract, :AI_CONTAINS) > 0',
'  group by l.link_num',
'), doc_own_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a',
'    on d.link_num = a.link_num',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or d.opl_code = 1)',
'  and (d.opl_code < 6 or d.upd_username = :APP_USER or a.user_name = :APP_USER)',
'  group by d.link_num    ',
')',
'select ''P40_SEARCH'' as item_name,',
'  hashtag,',
'  count(*) as count',
'from',
'(',
'  select hashtag from tcw_hashtags',
'  where tcw_util.get_preference(''SHOW_DOCUMENTS'',''Y'') = ''Y''',
'  and link_num in',
'  (',
'    select l.link_num from tcw_documents l',
'    where l.opl_code > 0 and l.in_consulting <= nvl(:IN_CONSULTING, 0)',
'    and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or l.opl_code = 1)',
'    and',
'    (',
'      (',
'        case when :AI_CONTAINS is not null then',
'          (select v.link_num from doc_words_wv v where v.link_num = l.link_num)',
'        else',
'          l.link_num',
'        end',
'      ) = l.link_num',
'      and ',
'      (',
'        case when (select count(*) from tags_wv) > 0 then',
'          (select v.link_num from doc_tags_wv v where v.link_num = l.link_num)',
'        else',
'          l.link_num',
'        end',
'      ) = l.link_num',
'      and',
'      (',
'        select v.link_num from doc_own_wv v where v.link_num = l.link_num',
'      ) = l.link_num',
'    )',
'  )',
') tg',
'where hashtag not in (select tag from tags_wv)',
'group by hashtag order by 3 desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from apex_collections where ',
'collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(311067745437415751)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>-wwv_flow_api.id(22151712062981425)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10716347481972698)
,p_query_column_id=>1
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Item name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10716492712972699)
,p_query_column_id=>2
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>2
,p_column_heading=>'Hashtag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10716590781972700)
,p_query_column_id=>3
,p_column_alias=>'COUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(10716627367972701)
,p_name=>unistr('\30BF\30B0\4E00\89A7')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Launcher - \30BF\30B0\4E00\89A7 (Documents\306E\307F) */'),
'with doc_own_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a',
'    on d.link_num = a.link_num',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or d.opl_code = 1)',
'  and',
'    (d.opl_code < 6 or d.upd_username = :APP_USER or a.user_name = :APP_USER)',
'  group by d.link_num    ',
')',
'select hashtag,',
'       count(*) as count,',
'       ''P40_SEARCH'' as item_name',
'from',
'(',
'  select hashtag as hashtag from tcw_hashtags',
'  where hashtag like ''%'' || :P40_TAG || ''%''',
'    and tcw_util.get_preference(''SHOW_DOCUMENTS'',''Y'') = ''Y''',
'    and link_num in (select link_num from doc_own_wv)',
') u',
'group by hashtag',
'order by 1 asc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from apex_collections where ',
'collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')'))
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(311067745437415751)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>-wwv_flow_api.id(22151712062981425)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10716837060972703)
,p_query_column_id=>1
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>1
,p_column_heading=>'Hashtag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10716985022972704)
,p_query_column_id=>2
,p_column_alias=>'COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10717081468972705)
,p_query_column_id=>3
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Item name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(130537360848278352)
,p_name=>unistr('\793E\5185\30BB\30DF\30CA\30FC')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Launcher - \6761\4EF6\3042\308A\30BB\30DF\30CA\30FC\958B\59CB\6642\9593\30BD\30FC\30C8 */'),
'with tags_wv as (',
'  select c001 as tag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), sem_tags_wv as (',
'  select seminar_id from tcw_seminar_tags',
'  where tag in (select tag from tags_wv)',
'  group by seminar_id having count(*) >= (select count(*) from tags_wv)',
'), sem_words_wv as (',
'  select seminar_id from tcw_seminars ',
unistr('\3000\3000\3000\3000where contains(title, :AI_CONTAINS) > 0 or contains(abstract,:AI_CONTAINS) > 0'),
')',
'select s.seminar_id as SEMINAR_ID,',
'       to_char(s.start_time,''MM/DD" ("Dy")"'') as SEMINAR_DAY,',
'       to_char(s.start_time,''HH24:MI'') as START_TIME_S,',
'       to_char(s.end_time,  ''HH24:MI'') as END_TIME,',
'       s.TITLE,',
'       s.OWNER,',
'       case',
unistr('         when s.is_canceled = ''Y'' then ''\30AD\30E3\30F3\30BB\30EB\3055\308C\307E\3057\305F'''),
unistr('         when s.is_closed   = ''Y'' then ''\52DF\96C6\306F\7D42\4E86\3057\307E\3057\305F'''),
'         else s.TYPE',
'       end as EVENT_TYPE,',
'       case',
unistr('         when recording_url is not null then ''[\9332\753B\3042\308A]'''),
'         else ''''',
'       end RECSIGN',
'from TCW_SEMINARS s',
'where s.is_published = ''Y''',
'and',
'(',
'  (',
'    case when (select count(*) from apex_collections ',
'               where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')) = 0 then',
'      (',
'      select x.seminar_id from tcw_seminars x',
'      where s.end_time > systimestamp and x.seminar_id = s.seminar_id',
'      )',
'    else',
'      s.seminar_id',
'    end',
'  ) = s.seminar_id',
'  and',
'  (',
'    case when :AI_CONTAINS is not null then',
'      (select v.seminar_id from tcw_seminars v where v.seminar_id = s.seminar_id)',
'    else',
'      s.seminar_id',
'    end',
'  ) = s.seminar_id',
' and',
' (',
'    case when (select count(*) from tags_wv) > 0 then',
'      (select v.seminar_id from sem_tags_wv v where v.seminar_id = s.seminar_id)',
'    else',
'      s.seminar_id',
'    end',
' ) = s.seminar_id',
')',
'order by s.start_time asc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where ',
'(select count(*) as c from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')) = 0',
'or tcw_util.get_preference(''SHOW_SEMINARS'',''Y'') <> ''Y'''))
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(134150804649607812)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(130537546925278354)
,p_query_column_id=>1
,p_column_alias=>'SEMINAR_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(130537650747278355)
,p_query_column_id=>2
,p_column_alias=>'SEMINAR_DAY'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\958B\50AC\65E5')
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_report_column_width=>90
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(130537834398278356)
,p_query_column_id=>3
,p_column_alias=>'START_TIME_S'
,p_column_display_sequence=>3
,p_column_heading=>unistr('\958B\59CB')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(130537860624278357)
,p_query_column_id=>4
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>4
,p_column_heading=>unistr('\7D42\4E86')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(130538032625278358)
,p_query_column_id=>5
,p_column_alias=>'TITLE'
,p_column_display_sequence=>5
,p_column_heading=>unistr('\30BB\30DF\30CA\30FC\540D')
,p_column_link=>'f?p=SEMINAR:3:&SESSION.::&DEBUG.:RP,3:P3_SEMINAR_ID:#SEMINAR_ID#'
,p_column_linktext=>'#RECSIGN##TITLE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(130538082655278359)
,p_query_column_id=>6
,p_column_alias=>'OWNER'
,p_column_display_sequence=>6
,p_column_heading=>unistr('\4E3B\50AC\8005')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152982925308802410)
,p_query_column_id=>7
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>unistr('\5BFE\8C61')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152983040199802411)
,p_query_column_id=>8
,p_column_alias=>'RECSIGN'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(152983083794802412)
,p_name=>unistr('\30C9\30AD\30E5\30E1\30F3\30C8')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Launcher - \6761\4EF6\3042\308A\30C9\30AD\30E5\30E1\30F3\30C8 */'),
'with tags_wv as (',
'  select c001 as tag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), doc_tags_wv as (',
'  select link_num from tcw_hashtags',
'  where hashtag in (select tag from tags_wv)',
'  group by link_num having count(*) >= (select count(*) from tags_wv)',
'), doc_words_wv as (',
'  select l.link_num from tcw_documents l left outer join tcw_doc_data d',
'    on l.link_num = d.link_num',
'  where contains(d.link_object, :AI_CONTAINS) > 0',
'    or contains(l.obj_name, :AI_CONTAINS) > 0',
'    or contains(l.abstract, :AI_CONTAINS) > 0',
'  group by l.link_num',
'), doc_own_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a',
'    on d.link_num = a.link_num',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or d.opl_code = 1)',
'  and',
'    (d.opl_code < 6 or d.upd_username = :APP_USER or a.user_name = :APP_USER)',
'  group by d.link_num    ',
')',
'select case',
'       when l.opl_code = 1 then',
unistr('         ''<div class="tcw-confsquare orange" title="\516C\958B\8CC7\6599"/>'''),
'       when l.opl_code = 3 then',
unistr('         ''<div class="tcw-confsquare green"  title="\793E\5185\9650\5B9A"/>'''),
'       when l.opl_code = 5 then',
'         ''<div class="tcw-confsquare black"  title="Consulting Only"/>''',
'       when l.opl_code = 6 then',
unistr('         ''<div class="tcw-confsquare black"  title="\30D7\30E9\30A4\30D9\30FC\30C8"/>'''),
'       else to_char(l.opl_code)',
'       end opl_code,',
'       l.obj_name as title,',
'       l.link_num,',
'       case',
'       when u.last_name is null then',
'          translate(regexp_replace(l.upd_username, :AI_STRIP_DOMAIN,''\1''),''.'','' '')',
'       else',
'          u.last_name || '' '' || u.first_name',
'       end owner,',
'       l.upd_date as updated,      ',
'       t.content_type_alias type',
'from tcw_documents l left outer join ',
'       (tcw_doc_data d left outer join tcw_content_types t',
'        on d.content_type = t.content_type)',
'       on l.link_num = d.link_num',
'    left outer join tcw_user_names u on l.upd_username = u.user_name',
'    left outer join tcw_doc_links_v k on l.link_num = k.link_num',
'where',
'(',
'  (',
'    case when (select count(*) from apex_collections ',
'               where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')) = 0 then',
'      (',
'      select x.link_num from tcw_documents x',
'      where x.upd_date > add_months(sysdate,-1) and x.announce_flag = 1',
'          and  x.link_num = l.link_num',
'      )',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and',
'  (',
'    case when :AI_CONTAINS is not null then',
'      (select v.link_num from doc_words_wv v where v.link_num = l.link_num)',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and ',
'  (',
'    case when (select count(*) from tags_wv) > 0 then',
'      (select v.link_num from doc_tags_wv v where v.link_num = l.link_num)',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and',
'  (select v.link_num from doc_own_wv v where v.link_num = l.link_num) = l.link_num',
')',
'order by l.upd_date desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where ',
'(select count(*) as c from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'')) = 0',
'or tcw_util.get_preference(''SHOW_DOCUMENTS'',''Y'') <> ''Y'''))
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152983314634802414)
,p_query_column_id=>1
,p_column_alias=>'OPL_CODE'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\533A\5206')
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_report_column_width=>50
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152983343827802415)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\30BF\30A4\30C8\30EB')
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#TITLE#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152983476250802416)
,p_query_column_id=>3
,p_column_alias=>'LINK_NUM'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152983605873802417)
,p_query_column_id=>4
,p_column_alias=>'OWNER'
,p_column_display_sequence=>4
,p_column_heading=>unistr('\4F5C\6210\8005')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152983722463802418)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>5
,p_column_heading=>unistr('\66F4\65B0\65E5')
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_report_column_width=>80
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152983842684802419)
,p_query_column_id=>6
,p_column_alias=>'TYPE'
,p_column_display_sequence=>6
,p_column_heading=>unistr('\5F62\5F0F')
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(152983930381802420)
,p_name=>unistr('FAQ [\9031:&AI_FAQ_NEW_BY_WEEK./\65E5:&AI_FAQ_NEW_BY_DAY.]')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Laucher - \6761\4EF6\306A\3057FAQ */'),
'with tags_wv as (',
'  select c001 as tag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), faq_tags_wv as (',
'  select faq_id from tcw_faq_tags ',
'  where tag in (select tag from tags_wv)',
'  group by faq_id having count(*) >= (select count(*) from tags_wv)',
'), faq_words_wv as (',
'  select faq_id from tcw_faqs ',
'  where contains(question, :AI_CONTAINS) > 0 or contains(answer,:AI_CONTAINS) > 0',
'), faq_own_wv as (',
'  select f.faq_id from tcw_faqs f left outer join tcw_faq_acls a ',
'    on f.faq_id = a.faq_id ',
'  where f.classification <> ''X'' and',
'  (',
'    f.classification <> ''W''',
'    or f.last_updated_by = :APP_USER or a.user_name = :APP_USER',
'  )',
'  group by f.faq_id',
')',
'select f.faq_id,',
'       f.question,',
'       f.last_update_date as last_update_date,',
'       case ',
'         when u.last_name is null then ',
'            regexp_replace(last_updated_by, :AI_STRIP_DOMAIN,''\1'')',
'         else ',
'            u.last_name || '' '' || u.first_name',
'       end owner,',
'       case',
'       when classification = ''P'' then',
unistr('         ''<div class="tcw-confsquare orange" title="\793E\5916\516C\958B\53EF"/>'''),
'       when classification = ''C'' then',
unistr('         ''<div class="tcw-confsquare green"  title="\793E\5185\306E\307F"/>'''),
unistr('       else ''<div class="tcw-confsquare black"  title="\4F5C\696D\4E2D"/>'''),
'       end classification',
'from tcw_faqs f left outer join tcw_user_names u ',
'      on f.last_updated_by = u.user_name',
'where (nvl(:AI_IN_DEMO, ''N'') = ''N'' or f.classification = ''P'')',
'and',
'(select v.faq_id from faq_own_wv v where v.faq_id = f.faq_id) = f.faq_id',
'and',
'(',
'  (',
'     case when :AI_CONTAINS is not null then',
'       (select v.faq_id from faq_words_wv v where v.faq_id = f.faq_id)',
'    else',
'      f.faq_id',
'    end',
'  ) = f.faq_id',
' and',
' (',
'    case when (select count(*) from tags_wv) > 0 then',
'      (select v.faq_id from faq_tags_wv v where v.faq_id = f.faq_id)',
'    else',
'      f.faq_id',
'    end',
'  ) = f.faq_id',
')',
'order by f.last_update_date desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where ',
'(select count(*) from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'')) = 0',
'and tcw_util.get_preference(''SHOW_FAQS'',''Y'') = ''Y'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(134150242132604042)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152984093013802422)
,p_query_column_id=>1
,p_column_alias=>'FAQ_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152984207868802423)
,p_query_column_id=>2
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>unistr('\8CEA\554F')
,p_column_link=>'f?p=FAQ:4:&SESSION.::&DEBUG.:RP,4:P4_FAQ_ID:#FAQ_ID#'
,p_column_linktext=>'#QUESTION#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152984262471802424)
,p_query_column_id=>3
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>unistr('\66F4\65B0\65E5')
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_report_column_width=>80
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152984418443802425)
,p_query_column_id=>4
,p_column_alias=>'OWNER'
,p_column_display_sequence=>4
,p_column_heading=>unistr('\66F4\65B0\8005')
,p_use_as_row_header=>'N'
,p_report_column_width=>80
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152984527901802426)
,p_query_column_id=>5
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\533A\5206')
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(478652033851733583)
,p_report_column_width=>50
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(477406656434679333)
,p_plug_name=>'Breadcrum'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(477406779732679334)
,p_name=>unistr('Field Alert [\9031:&AI_FA_NEW_BY_WEEK./\65E5:&AI_FA_NEW_BY_DAY.]')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'a."ALERTID",',
unistr('a.TYPE || a.NO\3000as NO,'),
'a."TITLE",',
'a."CATEGORY",',
'a."UPDATEDATE" as updatedate',
' from   "FAL_ALERTS"  a',
'order by a.updatedate desc nulls last'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c number;',
'begin',
'  if tcw_util.get_preference(''SHOW_FIELDALERTS'',''Y'') = ''N'' then',
'    return false;',
'  end if;',
'  select 1 into c from apex_collections where ',
'  collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')',
'  fetch first 1 rows only;',
'  return false;',
'exception',
'  when no_data_found then',
'    return true;',
'end;'))
,p_display_condition_type=>'FUNCTION_BODY'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(134150351595605495)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(477407644552679343)
,p_query_column_id=>1
,p_column_alias=>'ALERTID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(477408529060679352)
,p_query_column_id=>2
,p_column_alias=>'NO'
,p_column_display_sequence=>2
,p_column_heading=>'No'
,p_column_link=>'f?p=FIELDALERT:2:&SESSION.::&DEBUG.:RP,2:P2_ALERTID:#ALERTID#'
,p_column_linktext=>'#NO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(477407808107679345)
,p_query_column_id=>3
,p_column_alias=>'TITLE'
,p_column_display_sequence=>3
,p_column_heading=>unistr('\30BF\30A4\30C8\30EB')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(477407949776679346)
,p_query_column_id=>4
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>4
,p_column_heading=>unistr('\30AB\30C6\30B4\30EA')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(477408427817679351)
,p_query_column_id=>5
,p_column_alias=>'UPDATEDATE'
,p_column_display_sequence=>5
,p_column_heading=>unistr('\66F4\65B0\65E5')
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_report_column_width=>80
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(477408601812679353)
,p_plug_name=>'Selector'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(482555234470584540)
,p_name=>unistr('\793E\5185\30BB\30DF\30CA\30FC')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Launcher - \6761\4EF6\306A\3057\30BB\30DF\30CA\30FC\767B\9332\6642\9593\30BD\30FC\30C8 */'),
'select s.seminar_id as SEMINAR_ID,',
'       to_char(s.start_time,''MM/DD" ("Dy")"'') as SEMINAR_DAY,',
'       to_char(s.start_time,''HH24:MI'') as START_TIME_S,',
'       to_char(s.end_time,  ''HH24:MI'') as END_TIME,',
'       s.TITLE,',
'       s.OWNER,',
'       case',
unistr('         when s.is_canceled = ''Y'' then ''\30AD\30E3\30F3\30BB\30EB\3055\308C\307E\3057\305F'''),
unistr('         when s.is_closed   = ''Y'' then ''\52DF\96C6\306F\7D42\4E86\3057\307E\3057\305F'''),
'         else s.TYPE',
'       end as EVENT_TYPE,',
'       case',
unistr('         when recording_url is not null then ''[\9332\753B\3042\308A]'''),
'         else ''''',
'       end RECSIGN,',
'       s.last_update_date as since',
'from TCW_SEMINARS s',
'where s.is_published = ''Y'' and s.end_time > systimestamp',
'order by s.last_update_date desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where ',
'(select count(*) as c from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')) = 0',
'and tcw_util.get_preference(''SHOW_SEMINARS'',''Y'') = ''Y'' ',
'and tcw_util.get_preference(''SEMINAR_CLONO'',''Y'') = ''N'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(134150804649607812)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(482556215757584550)
,p_query_column_id=>1
,p_column_alias=>'SEMINAR_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(482556331564584551)
,p_query_column_id=>2
,p_column_alias=>'SEMINAR_DAY'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\958B\50AC\65E5')
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_report_column_width=>90
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(482555749031584545)
,p_query_column_id=>3
,p_column_alias=>'START_TIME_S'
,p_column_display_sequence=>3
,p_column_heading=>unistr('\958B\59CB')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(482555867553584546)
,p_query_column_id=>4
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>4
,p_column_heading=>unistr('\7D42\4E86')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(482555971153584547)
,p_query_column_id=>5
,p_column_alias=>'TITLE'
,p_column_display_sequence=>5
,p_column_heading=>unistr('\30BB\30DF\30CA\30FC\540D')
,p_column_link=>'f?p=SEMINAR:3:&SESSION.::&DEBUG.:RP,3:P3_SEMINAR_ID:#SEMINAR_ID#'
,p_column_linktext=>'#RECSIGN##TITLE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(482555998063584548)
,p_query_column_id=>6
,p_column_alias=>'OWNER'
,p_column_display_sequence=>6
,p_column_heading=>unistr('\4E3B\50AC\8005')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(482556125295584549)
,p_query_column_id=>7
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>unistr('\5BFE\8C61')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(482555637081584544)
,p_query_column_id=>8
,p_column_alias=>'RECSIGN'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(130537301711278351)
,p_query_column_id=>9
,p_column_alias=>'SINCE'
,p_column_display_sequence=>9
,p_column_heading=>unistr('\66F4\65B0\65E5')
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_report_column_width=>80
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(566258540860845128)
,p_name=>unistr('\30C9\30AD\30E5\30E1\30F3\30C8')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Launcher - \6761\4EF6\306A\3057\30C9\30AD\30E5\30E1\30F3\30C8 */'),
'with tags_wv as (',
'  select c001 as tag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), doc_tags_wv as (',
'  select link_num from tcw_hashtags',
'  where hashtag in (select tag from tags_wv)',
'  group by link_num having count(*) >= (select count(*) from tags_wv)',
'), doc_words_wv as (',
'  select l.link_num from tcw_documents l left outer join tcw_doc_data d',
'    on l.link_num = d.link_num',
'  where contains(d.link_object, :AI_CONTAINS) > 0',
'    or contains(l.obj_name, :AI_CONTAINS) > 0',
'    or contains(l.abstract, :AI_CONTAINS) > 0',
'  group by l.link_num',
'), doc_own_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a',
'    on d.link_num = a.link_num',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or d.opl_code = 1)',
'  and',
'    (d.opl_code < 6 or d.upd_username = :APP_USER or a.user_name = :APP_USER)',
'  group by d.link_num    ',
')',
'select case',
'       when l.opl_code = 1 then',
unistr('         ''<div class="tcw-confsquare orange" title="\516C\958B\8CC7\6599"/>'''),
'       when l.opl_code = 3 then',
unistr('         ''<div class="tcw-confsquare green"  title="\793E\5185\9650\5B9A"/>'''),
'       when l.opl_code = 5 then',
'         ''<div class="tcw-confsquare black"  title="Consulting Only"/>''',
'       when l.opl_code = 6 then',
unistr('         ''<div class="tcw-confsquare black"  title="\30D7\30E9\30A4\30D9\30FC\30C8"/>'''),
'       else to_char(l.opl_code)',
'       end opl_code,',
'       l.obj_name as title,',
'       l.link_num,',
'       case',
'       when u.last_name is null then',
'          translate(regexp_replace(l.upd_username, :AI_STRIP_DOMAIN,''\1''),''.'','' '')',
'       else',
'          u.last_name || '' '' || u.first_name',
'       end owner,',
'       l.upd_date as updated,      ',
'       t.content_type_alias type',
'from tcw_documents l left outer join ',
'       (tcw_doc_data d left outer join tcw_content_types t',
'        on d.content_type = t.content_type)',
'       on l.link_num = d.link_num',
'    left outer join tcw_user_names u on l.upd_username = u.user_name',
'    left outer join tcw_doc_links_v k on l.link_num = k.link_num',
'where',
'(',
'  (',
'    case when (select count(*) from apex_collections ',
'               where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')) = 0 then',
'      (',
'      select x.link_num from tcw_documents x',
'      where x.upd_date > add_months(sysdate,-1) and x.announce_flag = 1',
'          and  x.link_num = l.link_num',
'      )',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and',
'  (',
'    case when :AI_CONTAINS is not null then',
'      (select v.link_num from doc_words_wv v where v.link_num = l.link_num)',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and ',
'  (',
'    case when (select count(*) from tags_wv) > 0 then',
'      (select v.link_num from doc_tags_wv v where v.link_num = l.link_num)',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and',
'  (select v.link_num from doc_own_wv v where v.link_num = l.link_num) = l.link_num',
')',
'order by l.upd_date desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where ',
'(select count(*) as c from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'')) = 0',
'and tcw_util.get_preference(''SHOW_DOCUMENTS'',''Y'') = ''Y'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478637692195733431)
,p_query_column_id=>1
,p_column_alias=>'OPL_CODE'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\533A\5206')
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_report_column_width=>50
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478636177031733422)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\30BF\30A4\30C8\30EB')
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#TITLE#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(480955610851883525)
,p_query_column_id=>3
,p_column_alias=>'LINK_NUM'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478636497117733429)
,p_query_column_id=>4
,p_column_alias=>'OWNER'
,p_column_display_sequence=>3
,p_column_heading=>unistr('\4F5C\6210\8005')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478636914681733429)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>5
,p_column_heading=>unistr('\66F4\65B0\65E5')
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_report_column_width=>80
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478637344369733430)
,p_query_column_id=>6
,p_column_alias=>'TYPE'
,p_column_display_sequence=>4
,p_column_heading=>unistr('\5F62\5F0F')
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(568003704323090599)
,p_name=>unistr('\793E\5185\30BB\30DF\30CA\30FC')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Launcher - \6761\4EF6\306A\3057\30BB\30DF\30CA\30FC\958B\59CB\6642\9593\30BD\30FC\30C8 */'),
'select s.seminar_id as SEMINAR_ID,',
'       to_char(s.start_time,''MM/DD" ("Dy")"'') as SEMINAR_DAY,',
'       to_char(s.start_time,''HH24:MI'') as START_TIME_S,',
'       to_char(s.end_time,  ''HH24:MI'') as END_TIME,',
'       s.TITLE,',
'       s.OWNER,',
'       case',
unistr('         when s.is_canceled = ''Y'' then ''\30AD\30E3\30F3\30BB\30EB\3055\308C\307E\3057\305F'''),
unistr('         when s.is_closed   = ''Y'' then ''\52DF\96C6\306F\7D42\4E86\3057\307E\3057\305F'''),
'         else s.TYPE',
'       end as EVENT_TYPE,',
'       case',
unistr('         when recording_url is not null then ''[\9332\753B\3042\308A]'''),
'         else ''''',
'       end RECSIGN',
'from TCW_SEMINARS s',
'where s.is_published = ''Y'' and s.end_time > systimestamp',
'order by s.start_time asc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where ',
'(select count(*) as c from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')) = 0',
'and tcw_util.get_preference(''SHOW_SEMINARS'',''Y'') = ''Y'' ',
'and tcw_util.get_preference(''SEMINAR_CLONO'',''Y'') = ''Y'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(134150804649607812)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478642053530733469)
,p_query_column_id=>1
,p_column_alias=>'SEMINAR_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478639591961733463)
,p_query_column_id=>2
,p_column_alias=>'SEMINAR_DAY'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\958B\50AC\65E5')
,p_use_as_row_header=>'N'
,p_sum_column=>'Y'
,p_report_column_width=>90
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(477408940912679356)
,p_query_column_id=>3
,p_column_alias=>'START_TIME_S'
,p_column_display_sequence=>3
,p_column_heading=>unistr('\958B\59CB')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478640441907733467)
,p_query_column_id=>4
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>4
,p_column_heading=>unistr('\7D42\4E86')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478640815854733468)
,p_query_column_id=>5
,p_column_alias=>'TITLE'
,p_column_display_sequence=>5
,p_column_heading=>unistr('\30BB\30DF\30CA\30FC\540D')
,p_column_link=>'f?p=SEMINAR:3:&SESSION.::&DEBUG.:RP,3:P3_SEMINAR_ID:#SEMINAR_ID#'
,p_column_linktext=>'#RECSIGN##TITLE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478641241411733468)
,p_query_column_id=>6
,p_column_alias=>'OWNER'
,p_column_display_sequence=>7
,p_column_heading=>unistr('\4E3B\50AC\8005')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478641657618733469)
,p_query_column_id=>7
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>unistr('\5BFE\8C61')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(482544189174584530)
,p_query_column_id=>8
,p_column_alias=>'RECSIGN'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(568003769140090600)
,p_name=>unistr('FAQ [\9031:&AI_FAQ_NEW_BY_WEEK./\65E5:&AI_FAQ_NEW_BY_DAY.]')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Laucher - \6761\4EF6\3042\308AFAQ */'),
'with tags_wv as (',
'  select c001 as tag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), faq_tags_wv as (',
'  select faq_id from tcw_faq_tags ',
'  where tag in (select tag from tags_wv)',
'  group by faq_id having count(*) >= (select count(*) from tags_wv)',
'), faq_words_wv as (',
'  select faq_id from tcw_faqs ',
'  where contains(question, :AI_CONTAINS) > 0 or contains(answer,:AI_CONTAINS) > 0',
'), faq_own_wv as (',
'  select f.faq_id from tcw_faqs f left outer join tcw_faq_acls a ',
'    on f.faq_id = a.faq_id ',
'  where f.classification <> ''X'' and',
'  (',
'    f.classification <> ''W''',
'    or f.last_updated_by = :APP_USER or a.user_name = :APP_USER',
'  )',
'  group by f.faq_id',
')',
'select f.faq_id,',
'       f.question,',
'       f.last_update_date as last_update_date,',
'       case ',
'         when u.last_name is null then ',
'            regexp_replace(last_updated_by, :AI_STRIP_DOMAIN,''\1'')',
'         else ',
'            u.last_name || '' '' || u.first_name',
'       end owner,',
'       case',
'       when classification = ''P'' then',
unistr('         ''<div class="tcw-confsquare orange" title="\793E\5916\516C\958B\53EF"/>'''),
'       when classification = ''C'' then',
unistr('         ''<div class="tcw-confsquare green"  title="\793E\5185\306E\307F"/>'''),
unistr('       else ''<div class="tcw-confsquare black"  title="\4F5C\696D\4E2D"/>'''),
'       end classification',
'from tcw_faqs f left outer join tcw_user_names u ',
'      on f.last_updated_by = u.user_name',
'where (nvl(:AI_IN_DEMO, ''N'') = ''N'' or f.classification = ''P'')',
'and',
'(select v.faq_id from faq_own_wv v where v.faq_id = f.faq_id) = f.faq_id',
'and',
'(',
'  (',
'     case when :AI_CONTAINS is not null then',
'       (select v.faq_id from faq_words_wv v where v.faq_id = f.faq_id)',
'    else',
'      f.faq_id',
'    end',
'  ) = f.faq_id',
' and',
' (',
'    case when (select count(*) from tags_wv) > 0 then',
'      (select v.faq_id from faq_tags_wv v where v.faq_id = f.faq_id)',
'    else',
'      f.faq_id',
'    end',
'  ) = f.faq_id',
')',
'order by f.last_update_date desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where ',
'(select count(*) from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'')) = 0',
'or tcw_util.get_preference(''SHOW_FAQS'',''Y'') <> ''Y'''))
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(134150242132604042)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478644654158733478)
,p_query_column_id=>1
,p_column_alias=>'FAQ_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478645061630733479)
,p_query_column_id=>2
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>unistr('\8CEA\554F')
,p_column_link=>'f?p=FAQ:4:&SESSION.::&DEBUG.:RP,4:P4_FAQ_ID:#FAQ_ID#'
,p_column_linktext=>'#QUESTION#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478645400925733479)
,p_query_column_id=>3
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>unistr('\66F4\65B0\65E5')
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_report_column_width=>80
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478644227849733476)
,p_query_column_id=>4
,p_column_alias=>'OWNER'
,p_column_display_sequence=>4
,p_column_heading=>unistr('\66F4\65B0\8005')
,p_use_as_row_header=>'N'
,p_report_column_width=>80
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478643804767733475)
,p_query_column_id=>5
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\533A\5206')
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(478652033851733583)
,p_report_column_width=>50
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(670955151182730424)
,p_name=>'Searched Words'
,p_template=>wwv_flow_api.id(451159874159606797)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 from apex_collections ',
'where collection_name = ''SEARCH_WORDS'' group by c001 order by c001'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(480941909617846574)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\691C\7D22\5358\8A9E')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<i class="fa fa-times-circle" onclick=''apex.submit({ request:"REMOVE", set:{"P40_SEARCH":"#C001#"}, showWait:true });''/>#C001#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(961677185855856254)
,p_name=>unistr('\30BF\30B0\4E00\89A7')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Launcher - \30BF\30B0\4E00\89A7 */'),
'with doc_own_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a',
'    on d.link_num = a.link_num',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or d.opl_code = 1)',
'  and',
'    (d.opl_code < 6 or d.upd_username = :APP_USER or a.user_name = :APP_USER)',
'  group by d.link_num    ',
'), faq_own_wv as (',
'  select f.faq_id from tcw_faqs f left outer join tcw_faq_acls a ',
'    on f.faq_id = a.faq_id ',
'  where f.classification <> ''X'' and',
'  (',
'    f.classification <> ''W''',
'    or f.last_updated_by = :APP_USER or a.user_name = :APP_USER',
'  )',
'  group by f.faq_id',
')',
'select hashtag,',
'       count(*) as count,',
'       ''P40_SEARCH'' as item_name',
'from',
'(',
'  select hashtag as hashtag from tcw_hashtags',
'  where hashtag like ''%'' || :P40_TAG || ''%''',
'    and tcw_util.get_preference(''SHOW_DOCUMENTS'',''Y'') = ''Y''',
'    and link_num in (select link_num from doc_own_wv)',
'  union all',
'  select tag as hashtag from tcw_seminar_tags',
'  where tag like ''%'' || :P40_TAG || ''%''',
'    and tcw_util.get_preference(''SHOW_SEMINARS'',''Y'') = ''Y''',
'  union all',
'  select tag as hashtag from tcw_faq_tags',
'  where tag like ''%'' || :P40_TAG || ''%''',
'    and tcw_util.get_preference(''SHOW_FAQS'',''Y'') = ''Y''',
'    and faq_id in (select faq_id from faq_own_wv)',
') u',
'group by hashtag',
'order by 1 asc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from apex_collections where ',
'collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')'))
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(311067745437415751)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(22151712062981425)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307489372972529444)
,p_query_column_id=>1
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>1
,p_column_heading=>'Hashtag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307489466606529445)
,p_query_column_id=>2
,p_column_alias=>'COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307489555906529446)
,p_query_column_id=>3
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Item name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(961737101473554597)
,p_plug_name=>'Reset'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451159874159606797)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select c001 from apex_collections where collection_name in (''SEARCH_WORDS'', ''SEARCH_HASHTAGS'');'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(961768353180828160)
,p_name=>unistr('\30BF\30B0\691C\7D22')
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Launcher - \30BF\30B0\691C\7D22 */'),
'with tags_wv as (',
'  select c001 as tag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), owners_wv as (',
'  select c001 || :AI_DOMAIN_NAME as owner',
'  from apex_collections',
'  where collection_name = ''SEARCH_OWNERS''',
'), doc_tags_wv as (',
'  select link_num from tcw_hashtags',
'  where hashtag in (select tag from tags_wv)',
'  group by link_num having count(*) >= (select count(*) from tags_wv)',
'), doc_words_wv as (',
'  select l.link_num from tcw_documents l left outer join tcw_doc_data d',
'    on l.link_num = d.link_num',
'  where contains(d.link_object, :AI_CONTAINS) > 0',
'  or contains(l.obj_name, :AI_CONTAINS) > 0',
'  or contains(l.abstract, :AI_CONTAINS) > 0',
'  group by l.link_num',
'), doc_own_wv as (',
'  select d.link_num from tcw_documents d left outer join tcw_doc_acls a',
'    on d.link_num = a.link_num',
'  where d.opl_code > 0 and d.in_consulting <= nvl(:IN_CONSULTING, 0)',
'  and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or d.opl_code = 1)',
'  and (d.opl_code < 6 or d.upd_username = :APP_USER or a.user_name = :APP_USER)',
'  group by d.link_num    ',
'), sem_tags_wv as (',
'  select seminar_id from tcw_seminar_tags',
'  where tag in (select tag from tags_wv)',
'  group by seminar_id having count(*) >= (select count(*) from tags_wv)',
'), sem_words_wv as (',
'  select seminar_id from tcw_seminars ',
unistr('\3000\3000\3000\3000where contains(title, :AI_CONTAINS) > 0 or contains(abstract,:AI_CONTAINS) > 0'),
'), faq_tags_wv as (',
'  select faq_id from tcw_faq_tags ',
'  where tag in (select tag from tags_wv)',
'  group by faq_id having count(*) >= (select count(*) from tags_wv)',
'), faq_words_wv as (',
'  select faq_id from tcw_faqs ',
'  where contains(question, :AI_CONTAINS) > 0 or contains(answer,:AI_CONTAINS) > 0',
'), faq_own_wv as (',
'  select f.faq_id from tcw_faqs f left outer join tcw_faq_acls a ',
'    on f.faq_id = a.faq_id ',
'  where f.classification <> ''X'' and',
'  (',
'    f.classification <> ''W''',
'    or f.last_updated_by = :APP_USER or a.user_name = :APP_USER',
'  )',
'  group by f.faq_id',
')',
'select ''P40_SEARCH'' as item_name,',
'  hashtag,',
'  count(*) as count',
'from',
'(',
'  select hashtag from tcw_hashtags',
'  where tcw_util.get_preference(''SHOW_DOCUMENTS'',''Y'') = ''Y''',
'  and link_num in',
'  (',
'    select l.link_num from tcw_documents l',
'    where l.opl_code > 0 and l.in_consulting <= nvl(:IN_CONSULTING, 0)',
'    and (nvl(:AI_IN_DEMO, ''N'') = ''N'' or l.opl_code = 1)',
'    and',
'    (',
'      (',
'        case when :AI_CONTAINS is not null then',
'          (select v.link_num from doc_words_wv v where v.link_num = l.link_num)',
'        else',
'          l.link_num',
'        end',
'      ) = l.link_num',
'      and ',
'      (',
'        case when (select count(*) from tags_wv) > 0 then',
'          (select v.link_num from doc_tags_wv v where v.link_num = l.link_num)',
'        else',
'          l.link_num',
'        end',
'      ) = l.link_num',
'      and',
'      (',
'        select v.link_num from doc_own_wv v where v.link_num = l.link_num',
'      ) = l.link_num',
'    )',
'  )',
'  union',
'  select tag as hashtag from tcw_seminar_tags ',
'  where tcw_util.get_preference(''SHOW_SEMINARS'',''Y'') = ''Y''',
'  and seminar_id in ',
'  (',
'    select s.seminar_id from TCW_SEMINARS s',
'    where s.is_published = ''Y''',
'    and',
'    (',
'      (',
'        case when :AI_CONTAINS is not null then',
'          (select v.seminar_id from sem_words_wv v where v.seminar_id = s.seminar_id)',
'        else',
'          s.seminar_id',
'        end',
'      ) = s.seminar_id',
'      and',
'      (',
'        case when (select count(*) from tags_wv) > 0 then',
'          (select v.seminar_id from sem_tags_wv v where v.seminar_id = s.seminar_id)',
'        else',
'          s.seminar_id',
'        end',
'      ) = s.seminar_id',
'    )',
'  )',
'  union',
'  select tag as hashtag from tcw_faq_tags ',
'  where tcw_util.get_preference(''SHOW_FAQS'',''Y'') = ''Y''',
'  and faq_id in ',
'  (',
'    select f.faq_id from tcw_faqs f',
'    where',
'    (',
'      (',
'        case when :AI_CONTAINS is not null then',
'          (select v.faq_id from faq_words_wv v where v.faq_id = f.faq_id)',
'        else',
'          f.faq_id',
'        end',
'      ) = f.faq_id',
'      and',
'      (',
'        case when (select count(*) from tags_wv) > 0 then',
'          (select v.faq_id from faq_tags_wv v where v.faq_id = f.faq_id)',
'        else',
'          f.faq_id',
'        end',
'      ) = f.faq_id',
'      and',
'      (',
'        select v.faq_id from faq_own_wv v where v.faq_id = f.faq_id',
'      ) = f.faq_id',
'    )',
'  )',
') tg',
'where hashtag not in (select tag from tags_wv)',
'group by hashtag order by 3 desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from apex_collections where ',
'collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'')'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(311067745437415751)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(22151712062981425)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307489624887529447)
,p_query_column_id=>1
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Item name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307489811535529448)
,p_query_column_id=>2
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>2
,p_column_heading=>'Hashtag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307489867470529449)
,p_query_column_id=>3
,p_column_alias=>'COUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1025184381156964130)
,p_name=>'Searched Tags'
,p_template=>wwv_flow_api.id(451158897956606790)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 from apex_collections ',
'where collection_name = ''SEARCH_HASHTAGS''',
'order by c001'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(478647991492733490)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30BF\30B0')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<i class="fa fa-times-circle" onclick=''apex.submit({ request:"REMOVE", set:{"P40_SEARCH":"&#x23;#C001#"}, showWait:true });''/>&#x23;#C001#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(478647371874733485)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(961737101473554597)
,p_button_name=>'B_INIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\691C\7D22\6761\4EF6\306E\30EA\30BB\30C3\30C8')
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(130537484818278353)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(130537360848278352)
,p_button_name=>'TO_SEMINAR_2'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr('\793E\5185\30BB\30DF\30CA\30FC\3078')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=SEMINAR:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
end;
/
begin
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152983193055802413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(152983083794802412)
,p_button_name=>'TO_DOC_1'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr('\30C9\30AD\30E5\30E1\30F3\30C8\3078')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152984013805802421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(152983930381802420)
,p_button_name=>'TO_FAQ_1'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr(' FAQ\3078')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=FAQ:1:&SESSION.:B_INIT:&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(477407003300679337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(477406779732679334)
,p_button_name=>'TO_FIELDALERT'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr('Field Alert\3078')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=FIELDALERT:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(478638112256733432)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(566258540860845128)
,p_button_name=>'TO_DOC'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr('\30C9\30AD\30E5\30E1\30F3\30C8\3078')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(478642449011733470)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(568003704323090599)
,p_button_name=>'TO_SEMINAR'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr('\793E\5185\30BB\30DF\30CA\30FC\3078')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=SEMINAR:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(478645801166733479)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(568003769140090600)
,p_button_name=>'TO_FAQ'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr(' FAQ\3078')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=FAQ:1:&SESSION.:B_INIT:&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(482555557743584543)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(482555234470584540)
,p_button_name=>'TO_SEMINAR_1'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr('\793E\5185\30BB\30DF\30CA\30FC\3078')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=SEMINAR:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10716789065972702)
,p_name=>'P40_TAG_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(10716627367972701)
,p_prompt=>unistr('\30BF\30B0')
,p_placeholder=>unistr('\30BF\30B0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(451191140171606930)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(256290872304614252)
,p_name=>'P40_TAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(961677185855856254)
,p_prompt=>unistr('\30BF\30B0')
,p_placeholder=>unistr('\30BF\30B0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(451191140171606930)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(478648749285733494)
,p_name=>'P40_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(477406656434679333)
,p_use_cache_before_default=>'NO'
,p_placeholder=>unistr('\5358\8A9E #\30BF\30B0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(478649990277733565)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\521D\671F\5316')
,p_process_sql_clob=>'tcw_util.initialize_search_items;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(478647371874733485)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(478650402385733569)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\524A\9664')
,p_process_sql_clob=>'tcw_util.remove_search_items(p_search_items => :P40_SEARCH);'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'REMOVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(478650836882733569)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\8FFD\52A0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'tcw_util.add_search_items(p_search_items => :P40_SEARCH,',
'                          p_username => :APP_USER);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'REMOVE,B_INIT'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(478651279741733570)
,p_process_sequence=>40
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('GET\6642\691C\7D22\6761\4EF6\521D\671F\5316')
,p_process_sql_clob=>'tcw_util.initialize_search_items;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_INIT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(480980550805119006)
,p_process_sequence=>50
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('GET\306B\3088\308B\691C\7D22\6761\4EF6\8A2D\5B9A')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'tcw_util.add_search_items(p_search_items => :P0_KEYWORD,',
'                          p_username => :APP_USER,',
'                          p_need_unescape => ''Y'');'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'5'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(478651640922733570)
,p_process_sequence=>60
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('GET\6642\5168\6587\691C\7D22\8A2D\5B9A')
,p_process_sql_clob=>':AI_CONTAINS := tcw_util.get_contains;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_api.create_page(
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30DD\30FC\30BF\30EB\4E00\89A7')
,p_alias=>'PORTAL'
,p_step_title=>unistr('\30DD\30FC\30BF\30EB\4E00\89A7')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(451153607567606717)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190827183431'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15585920902473743)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15586543860473776)
,p_plug_name=>unistr('\30DD\30FC\30BF\30EB\4E00\89A7')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'case',
'when upd_username = :APP_USER or link_num in (select link_num from tcw_doc_acls where user_name = :APP_USER) then',
'       ''<a href="'' || ',
'       apex_page.get_url(p_page => 2, p_clear_cache => 2, p_items => ''P2_LINK_NUM'', p_values => link_num)',
'       || ''"><span class="t-Icon fa&#x20;fa-pencil"></a>''',
'       else ''''',
'end rowop,',
'link_num, obj_name, link_url, abstract, ',
'regexp_replace(upd_username, :AI_STRIP_DOMAIN,''\1'') as upd_username,',
'upd_date',
'from tcw_documents where opl_code > 0 and is_portal = ''Y'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(15586651222473776)
,p_name=>unistr('\30DD\30FC\30BF\30EB\4E00\89A7')
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>10535157356822410
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10714626056972681)
,p_db_column_name=>'ROWOP'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'-'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15587078193473877)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'ID#'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15587370933473904)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>unistr('\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15587755864473906)
,p_db_column_name=>'LINK_URL'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'URL'
,p_column_link=>'#LINK_URL#'
,p_column_linktext=>'#LINK_URL#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15588121420473908)
,p_db_column_name=>'ABSTRACT'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>unistr('\8AAC\660E')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15588555490473910)
,p_db_column_name=>'UPD_USERNAME'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>unistr('\66F4\65B0\8005')
,p_column_link=>'&PERSON_URL./@#UPD_USERNAME#'
,p_column_linktext=>'#UPD_USERNAME#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15588926122473911)
,p_db_column_name=>'UPD_DATE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>unistr('\66F4\65B0\65E5')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15597639793503598)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'105462'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWOP:LINK_NUM:OBJ_NAME:LINK_URL:ABSTRACT:UPD_USERNAME:UPD_DATE:'
,p_sort_column_1=>'UPD_DATE'
,p_sort_direction_1=>'DESC'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_api.create_page(
 p_id=>10000
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\7BA1\7406')
,p_alias=>'ADMIN'
,p_step_title=>unistr('\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(8252429646650346)
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\7BA1\7406\30DA\30FC\30B8\3067\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\6240\6709\8005(\7BA1\7406\8005)\306F\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3092\69CB\6210\3057\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\5168\4F53\3067\4F7F\7528\3055\308C\308B\5171\901A\30C7\30FC\30BF\3092\7BA1\7406\3067\304D\307E\3059\3002'),
unistr('\7BA1\7406\8005\306F\3001\4F7F\7528\53EF\80FD\306A\8A2D\5B9A\306E\3044\305A\308C\304B\3092\9078\629E\3057\3066\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\8868\793A\65B9\6CD5\307E\305F\306F\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306B\4F7F\7528\53EF\80FD\306A\6A5F\80FD(\3042\308B\3044\306F\305D\306E\4E21\65B9)\3092\5FC5\8981\306B\5FDC\3058\3066\5909\66F4\3067\304D\307E\3059\3002</p>'),
unistr('<p>\3053\306E\30DA\30FC\30B8\3078\306E\30A2\30AF\30BB\30B9\306F\3001\7BA1\7406\8005\306E\307F\306B\5236\9650\3059\308B\5FC5\8981\304C\3042\308A\307E\3059\3002</p>')))
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190611171543'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8289365271650425)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451173378455606832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(451202856644607181)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(451192287083606957)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8291035593650431)
,p_plug_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(8251538045650342)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8291856796650433)
,p_plug_name=>unistr('ACL\60C5\5831')
,p_parent_plug_id=>wwv_flow_api.id(8291035593650431)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451157184130606749)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_scope   := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'') );',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'') );',
'    else',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope) );',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8292097366650433)
,p_name=>unistr('\30E6\30FC\30B6\30FC\6570\30EC\30DD\30FC\30C8')
,p_parent_plug_id=>wwv_flow_api.id(8291035593650431)
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from  APEX_APPL_ACL_ROLES r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451181261966606870)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8292809458650437)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8293197891650437)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8293601556650439)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8296746939650446)
,p_plug_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\30A2\30AF\30B7\30E7\30F3')
,p_parent_plug_id=>wwv_flow_api.id(8291035593650431)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(8289962798650428)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8330406976675869)
,p_plug_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(8299291135675792)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8330850125675870)
,p_name=>unistr('\30EC\30DD\30FC\30C8')
,p_parent_plug_id=>wwv_flow_api.id(8330406976675869)
,p_template=>wwv_flow_api.id(451168985450606821)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451181261966606870)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8331554004675873)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8331916769675875)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8333882522675881)
,p_plug_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_parent_plug_id=>wwv_flow_api.id(8330406976675869)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(8329760419675868)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(451188450634606919)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8408597052862197)
,p_plug_name=>unistr('\7BA1\7406\30EA\30F3\30AF')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168985450606821)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(8493272109211045)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(451187628904606912)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8291421425650431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8291035593650431)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr('\8FFD\52A0')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10073:&SESSION.::&DEBUG.:RP,10073::'
,p_icon_css_classes=>'fa-user-plus'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8295837518650444)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA\6642\306B\30EA\30D5\30EC\30C3\30B7\30E5')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8291421425650431)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8296365417650445)
,p_event_id=>wwv_flow_api.id(8295837518650444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8292097366650433)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_api.create_page(
 p_id=>10061
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30D8\30EB\30D7')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D8\30EB\30D7')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258847645115242583)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612103851'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(451572297516923353)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P10061_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
'        sys.htp.p(''No help is available for this page.'');',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(451572455334923354)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(451572297516923353)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_10070
begin
wwv_flow_api.create_page(
 p_id=>10070
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\306E\69CB\6210')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\306E\69CB\6210')
,p_autocomplete_on_off=>'OFF'
,p_required_role=>wwv_flow_api.id(8252429646650346)
,p_required_patch=>wwv_flow_api.id(8251538045650342)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306E\9069\5207\306A\9078\629E\9805\76EE\3092\9078\629E\3057\307E\3059\3002<br>'),
unistr('<strong>\300C\3044\3044\3048\300D</strong>\3092\9078\629E\3059\308B\3068\3001\6307\5B9A\3057\305F\30E6\30FC\30B6\30FC\306E\307F\304C\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3067\304D\308B\3053\3068\306B\306A\308B\305F\3081\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\30BB\30AD\30E5\30EA\30C6\30A3\304C\5411\4E0A\3057\307E\3059\3002'),
unistr('\305F\3060\3057\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\304C\5927\898F\6A21\306A\30E6\30FC\30B6\30FC\30FB\30B3\30DF\30E5\30CB\30C6\30A3\3092\6301\3063\3066\3044\308B\5834\5408\306F\3001\30E6\30FC\30B6\30FC\306E\7BA1\7406\304C\8CA0\62C5\306B\306A\308B\53EF\80FD\6027\304C\3042\308B\305F\3081\3001<strong>\300C\306F\3044\300D</strong>\3092\512A\5148\7684\306B\9078\629E\3057\3066\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\7BA1\7406\8005\3068\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306E\307F\3092\5165\529B\3067\304D\307E\3059\3002<br>'),
unistr('<strong>\300C\306F\3044\300D</strong>\3092\9078\629E\3059\308B\5834\5408\3001\30E6\30FC\30B6\30FC\30FB\30EA\30B9\30C8\306B\542B\3081\306A\3044\30E6\30FC\30B6\30FC\306E\51E6\7406\65B9\6CD5\3082\9078\629E\3059\308B\5FC5\8981\304C\3042\308A\307E\3059\3002</p>'),
unistr('<p>\30E6\30FC\30B6\30FC\540D\306B\5BFE\3057\3066\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3092\8981\6C42\3059\308B\304B\3001\4EFB\610F\306E\82F1\6570\5B57\5024\3092\4F7F\7528\53EF\80FD\306B\3059\308B\304B\3092\9078\629E\3057\307E\3059\3002<br>'),
unistr('\901A\5E38\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067Oracle Access Manager\3084SSO\306A\3069\306E\4E2D\592E\7BA1\7406\8A8D\8A3C\30B9\30AD\30FC\30E0\3092\4F7F\7528\3057\3066\3044\308B(\307E\305F\306F\5C06\6765\4F7F\7528\3059\308B\3088\3046\306B\69CB\6210\3059\308B)\5834\5408\3001\3053\306E\8A2D\5B9A\306F<strong>\300C\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\300D</strong>\306B\8A2D\5B9A\3059\308B\5FC5\8981\304C\3042\308A\307E\3059\3002</p>'),
unistr('<p><em><strong>\6CE8\610F:</strong> \3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067\306F\3001\30EA\30FC\30C0\30FC\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\304A\3088\3073\7BA1\7406\8005\3068\3044\30463\3064\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\304C\30B5\30DD\30FC\30C8\3055\308C\307E\3059\3002'),
'<ul>',
unistr('  <li><strong>\30EA\30FC\30C0\30FC</strong>\306F\3001\3059\3079\3066\306E\60C5\5831\306B\5BFE\3059\308B\8AAD\53D6\308A\5C02\7528\30A2\30AF\30BB\30B9\6A29\3092\6301\3061\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF</strong>\306F\3001\60C5\5831\306E\4F5C\6210\3001\7DE8\96C6\304A\3088\3073\524A\9664\304C\53EF\80FD\3067\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\7BA1\7406\8005</strong>\306F\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306E\6A5F\80FD\306B\52A0\3048\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\300C\7BA1\7406\300D\30BB\30AF\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3057\3066\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\69CB\6210\3092\5B9F\884C\3067\304D\307E\3059\3002</li>'),
'</ul>',
'</em></p>'))
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190607142739'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8253436634650350)
,p_plug_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\69CB\6210')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8253535394650350)
,p_plug_name=>unistr('\30C0\30A4\30A2\30ED\30B0\30FB\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451163538186606812)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8254946437650354)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8253535394650350)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8253640213650350)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8253535394650350)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8255650798650356)
,p_branch_name=>unistr('\7BA1\7406\30DA\30FC\30B8\306B\79FB\52D5')
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8255952978650356)
,p_name=>'P10070_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8253436634650350)
,p_prompt=>unistr('\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306F\3001\8AB0\3067\3082\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3067\304D\307E\3059')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(451191223520606938)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('\3059\3079\3066\306E\30E6\30FC\30B6\30FC\304C\30A2\30AF\30BB\30B9\5236\5FA1\30EA\30B9\30C8\306B\5B9A\7FA9\3055\308C\3066\3044\308B\5834\5408\3001<strong>\300C\3044\3044\3048\300D</strong>\3092\9078\629E\3057\307E\3059\3002\30A2\30AF\30BB\30B9\5236\5FA1\30EA\30B9\30C8\306B\5B58\5728\3057\306A\3044\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\3082\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3092\4F7F\7528\3059\308B\5834\5408\3001<strong>\300C\306F\3044\300D</strong>\3092\9078\629E\3057\307E\3059\3002')
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8253770482650350)
,p_name=>unistr('\30E2\30FC\30C0\30EB\306E\53D6\6D88')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8253640213650350)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8256692372650358)
,p_event_id=>wwv_flow_api.id(8253770482650350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8257175301650358)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL ENABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10070_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\306E\8A2D\5B9A\304C\4FDD\5B58\3055\308C\307E\3057\305F\3002')
);
end;
/
prompt --application/pages/page_10072
begin
wwv_flow_api.create_page(
 p_id=>10072
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(8252429646650346)
,p_required_patch=>wwv_flow_api.id(8251538045650342)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\3053\306E\30DA\30FC\30B8\306B\306F\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30E6\30FC\30B6\30FC\3068\4ED8\4E0E\3055\308C\3066\3044\308B\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\306E\30EC\30DD\30FC\30C8\304C\8868\793A\3055\308C\307E\3059\3002</p>'),
unistr('<p>\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30BD\30FC\30C8\304A\3088\3073\30D5\30A3\30EB\30BF\3059\308B\304B\3001<strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3057\3066\5217\8868\793A\3068\591A\304F\306E\8FFD\52A0\306E\62E1\5F35\6A5F\80FD\3092\30AB\30B9\30BF\30DE\30A4\30BA\3057\307E\3059\3002<br>'),
unistr('<strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>'),
unistr('<p>\7DE8\96C6\30A2\30A4\30B3\30F3(\9EC4\8272\306E\925B\7B46)\3092\30AF\30EA\30C3\30AF\3057\3066\30E6\30FC\30B6\30FC\306E\8A73\7D30\3068\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\3092\7DE8\96C6\3059\308B\304B\3001\30E6\30FC\30B6\30FC\3092\524A\9664\3057\307E\3059\3002</p>'),
unistr('<p>\30EC\30DD\30FC\30C8\306E\4E00\756A\4E0A\306B\3042\308B<strong>\300C\30E6\30FC\30B6\30FC\306E\8FFD\52A0\300D</strong>\3092\30AF\30EA\30C3\30AF\3057\3066\3001\65B0\3057\3044\30E6\30FC\30B6\30FC\3068\305D\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\3092\8FFD\52A0\3057\307E\3059\3002</p>')))
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190607142739'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8257547182650359)
,p_plug_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(8258637016650360)
,p_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10073:&APP_SESSION.::::P10073_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>3207143150998994
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8258767752650362)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8259122883650364)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8259522741650365)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\30ED\30FC\30EB')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8260285531650367)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'32088'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8261175336650368)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8257547182650359)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8261499144650369)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8257547182650359)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10074:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8261895037650370)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8257547182650359)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10073:&SESSION.::&DEBUG.:10073'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8257686414650359)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA\6642\306B\30EA\30D5\30EC\30C3\30B7\30E5')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(8257547182650359)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8262591297650371)
,p_event_id=>wwv_flow_api.id(8257686414650359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8257547182650359)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10073
begin
wwv_flow_api.create_page(
 p_id=>10073
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_alias=>'USER_ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_required_role=>wwv_flow_api.id(8252429646650346)
,p_required_patch=>wwv_flow_api.id(8251538045650342)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\3053\306E\30D5\30A9\30FC\30E0\3092\4F7F\7528\3057\3066\3001\30E6\30FC\30B6\30FC\3068\305D\306E\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3092\5165\529B\3057\3001\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\3092\8A2D\5B9A\3057\307E\3059\3002'),
unistr('<em>\300C\30A2\30AF\30BB\30B9\5236\5FA1\306E\69CB\6210\300D</em>\3067\5B9A\7FA9\3057\305F\8A2D\5B9A\306B\3088\3063\3066\3001\30E6\30FC\30B6\30FC\540D\3092\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\306B\3059\308B\5FC5\8981\304C\3042\308B\304B\3001\4EFB\610F\306E\82F1\6570\5B57\5165\529B\3092\53EF\80FD\306B\3059\308B\304B\304C\6C7A\5B9A\3055\308C\307E\3059\3002</p>'),
unistr('<p>\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067\306F\3001\30EA\30FC\30C0\30FC\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\304A\3088\3073\7BA1\7406\8005\3068\3044\30463\3064\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\304C\30B5\30DD\30FC\30C8\3055\308C\307E\3059\3002</p>'),
'<ul>',
unistr('  <li><strong>\30EA\30FC\30C0\30FC</strong>\306F\3001\3059\3079\3066\306E\60C5\5831\306B\5BFE\3059\308B\8AAD\53D6\308A\5C02\7528\30A2\30AF\30BB\30B9\6A29\3092\6301\3061\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF</strong>\306F\3001\60C5\5831\306E\4F5C\6210\3001\7DE8\96C6\304A\3088\3073\524A\9664\304C\53EF\80FD\3067\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\7BA1\7406\8005</strong>\306F\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306E\6A5F\80FD\306B\52A0\3048\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\300C\7BA1\7406\300D\30BB\30AF\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3057\3066\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\69CB\6210\3092\5B9F\884C\3067\304D\307E\3059\3002</li>'),
'</ul>',
unistr('<p>\65E2\5B58\306E\30E6\30FC\30B6\30FC\3092\7DE8\96C6\3059\308B\5834\5408\3001\305D\306E\30A2\30AB\30A6\30F3\30C8\304C\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3057\306A\3044\3088\3046\306B\30ED\30C3\30AF\3067\304D\307E\3059\3002</p>'),
unistr('<p><em><strong>\6CE8\610F:</strong> Oracle Application Express\30A2\30AB\30A6\30F3\30C8\3092\4F7F\7528\3059\308B\5834\5408\3001\3053\3053\3067\5165\529B\3059\308B\30E6\30FC\30B6\30FC\306F\3001\305D\306E\30D1\30B9\30EF\30FC\30C9\3082\8A2D\5B9A\3067\304D\308B\30EF\30FC\30AF\30B9\30DA\30FC\30B9\7BA1\7406\8005\306B\3088\3063\3066\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\3068\3057\3066\5B9A\7FA9\3055\308C\3066\3044\308B\5FC5\8981\304C\3042\308A\307E\3059\3002</em></p>')))
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190607142739'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8263020872650372)
,p_plug_name=>unistr('\30D5\30A9\30FC\30E0\30FB\30A2\30A4\30C6\30E0\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8263179104650372)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451163538186606812)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8263243350650372)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8263179104650372)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10073_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8263391610650372)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8263179104650372)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10073_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8263427853650372)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8263179104650372)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8263500807650372)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8263179104650372)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P10073_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8263784936650372)
,p_name=>'P10073_USERNAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8263020872650372)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_source=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10073_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(10902025366253548)
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8265966988650376)
,p_name=>'P10073_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8263020872650372)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8266333657650377)
,p_name=>'P10073_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8263020872650372)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8267082552650378)
,p_name=>'P10073_ROLE_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8263020872650372)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30ED\30FC\30EB')
,p_source=>'ROLE_IDS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_api.id(10902025366253548)
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30A2\30AF\30BB\30B9\5236\5FA1\304C\6709\52B9\306A\5834\5408\3001\7BA1\7406\8005\306F\3001\7279\5B9A\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\6A5F\80FD\3078\306E\30A2\30AF\30BB\30B9\3092\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306B\5236\9650\3067\304D\307E\3059\3002\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067\306F\3001\30EA\30FC\30C0\30FC\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\304A\3088\3073\7BA1\7406\8005\3068\3044\30463\3064\306E\30ED\30FC\30EB\304C\30B5\30DD\30FC\30C8\3055\308C\307E\3059\3002<p>'),
'<ul>',
unistr('  <li><strong>\30EA\30FC\30C0\30FC</strong>\306F\3001\3059\3079\3066\306E\60C5\5831\306B\5BFE\3059\308B\8AAD\53D6\308A\5C02\7528\30A2\30AF\30BB\30B9\6A29\3092\6301\3061\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF</strong>\306F\3001\60C5\5831\306E\4F5C\6210\3001\7DE8\96C6\304A\3088\3073\524A\9664\304C\53EF\80FD\3067\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\7BA1\7406\8005</strong>\306F\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306E\6A5F\80FD\306B\52A0\3048\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\69CB\6210\3092\5B9F\884C\3067\304D\307E\3059\3002</li>'),
'</ul>'))
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8263637910650372)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\53D6\308A\6D88\3059')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8263427853650372)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8268541716650380)
,p_event_id=>wwv_flow_api.id(8263637910650372)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8269006648650381)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>unistr('\884C\306E\30D5\30A7\30C3\30C1')
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10073_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8269458777650382)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>unistr('\4FDD\5B58')
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10073_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\30A2\30AF\30B7\30E7\30F3\304C\51E6\7406\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8269875019650382)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\30DA\30FC\30B8\306E\30EA\30BB\30C3\30C8')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8263500807650372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8270200286650383)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10074
begin
wwv_flow_api.create_page(
 p_id=>10074
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0 - \30B9\30C6\30C3\30D71')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.helpText {',
'padding: 8px;',
'color: #707070;',
'}'))
,p_required_role=>wwv_flow_api.id(8252429646650346)
,p_required_patch=>wwv_flow_api.id(8251538045650342)
,p_dialog_chained=>'N'
,p_deep_linking=>'N'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190607142739'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8270647293650383)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451163538186606812)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8270699802650383)
,p_plug_name=>unistr('\30A6\30A3\30B6\30FC\30C9\30FB\30B3\30F3\30C6\30CA')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8270840268650383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8270647293650383)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6B21')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8270976328650383)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8270647293650383)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8273590338650387)
,p_branch_name=>unistr('\6B21\306E\30B9\30C6\30C3\30D7\306B\9032\3080')
,p_branch_action=>'f?p=&APP_ID.:10075:&SESSION.::&DEBUG.:RP,10075::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8270840268650383)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8273939472650388)
,p_name=>'P10074_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8270699802650383)
,p_item_default=>'2'
,p_prompt=>unistr('\30ED\30FC\30EB')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_api.id(10902025366253548)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8274383914650388)
,p_name=>'P10074_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8270699802650383)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_placeholder=>unistr('\30E6\30FC\30B6\30FC\540D\3092\3053\3053\306B\5165\529B\3057\307E\3059')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(10902025366253548)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('\30AB\30F3\30DE\3001\30BB\30DF\30B3\30ED\30F3\307E\305F\306F\7A7A\767D\3067\533A\5207\3063\305F\30E6\30FC\30B6\30FC\540D\3092\5165\529B\3057\307E\3059\3002\65E2\5B58\307E\305F\306F\91CD\8907\3059\308B\30E6\30FC\30B6\30FC\540D\306F\81EA\52D5\7684\306B\7121\8996\3055\308C\307E\3059\3002')
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8274700371650389)
,p_name=>'P10074_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8270699802650383)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D\306E\5F62\5F0F')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_api.id(8274803072650389)||'.'
,p_field_template=>wwv_flow_api.id(10902025366253548)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8271063215650383)
,p_name=>unistr('\30E2\30FC\30C0\30EB\306E\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8270976328650383)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8276149314650391)
,p_event_id=>wwv_flow_api.id(8271063215650383)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8276654685650391)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30B3\30EC\30AF\30B7\30E7\30F3\306E\4F5C\6210')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_VALID'');',
'',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P10074_PRELIM_USERS;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := apex_string.split(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_username := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username,'' '',null);',
'        l_username := replace(l_username,chr(10),null);',
'        l_username := replace(l_username,chr(9),null);',
'        l_username := replace(l_username,chr(13),null);',
'        l_username := replace(l_username,chr(49824),null);',
'',
'        if l_username is not null then',
'            if NVL(:P10074_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -----------',
'              -- Validate',
'              --',
'              l_at := instr(nvl(l_username,''x''),''@'');',
'              l_domain := substr(l_username,l_at+1);',
'              l_dot := instr(l_domain,''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001 = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10074_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8270840268650383)
);
end;
/
prompt --application/pages/page_10075
begin
wwv_flow_api.create_page(
 p_id=>10075
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0 - \30B9\30C6\30C3\30D72')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uReportList {',
'    margin: 0;',
'    list-style: none;',
'}',
'.uReportList li {',
'    margin: 0 0 4px 0;',
'}',
'.check_icon {',
'    display: inline-block;',
'    width: 16px;',
'    height: 16px;',
'    line-height: 16px;',
'    background: #69B86B;',
'    color: #FFF;',
'    text-align: center;',
'    border-radius: 12px;',
'    font-size: 15px;',
'    border: 1px solid green;',
'    text-shadow: 0 -1px 0 rgba(0,0,0,.15);',
'    vertical-align: top;',
'    margin-right: 4px;',
'}',
'.valid_user {',
'    display: inline-block;',
'    padding: 4px 8px 4px 4px;',
'    border: 1px solid #D0D0D0;',
'    border-radius: 3px;',
'    line-height: 20px;',
'    background-color: #F8F8F8;',
'    color: #404040;',
'}'))
,p_required_role=>wwv_flow_api.id(8252429646650346)
,p_required_patch=>wwv_flow_api.id(8251538045650342)
,p_deep_linking=>'N'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190607142739'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8271106751650383)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451163538186606812)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8271257299650383)
,p_plug_name=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0 - \30B9\30C6\30C3\30D72')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8271600046650384)
,p_name=>unistr('\4F8B\5916')
,p_parent_plug_id=>wwv_flow_api.id(8271257299650383)
,p_template=>wwv_flow_api.id(451164365751606812)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8278536539650398)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8278966865650399)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\7406\7531')
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8271712675650384)
,p_name=>unistr('&P10075_VALID_COUNT. \8FFD\52A0\3059\308B\30E6\30FC\30B6\30FC')
,p_parent_plug_id=>wwv_flow_api.id(8271257299650383)
,p_template=>wwv_flow_api.id(451158897956606790)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct lower(c001) username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(451178892326606865)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\6709\52B9\306A\65B0\898F\30E6\30FC\30B6\30FC\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8282071523650408)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_column_html_expression=>'<span class="fa fa-check-circle u-success-text" aria-hidden="true"></span> #USERNAME#'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8271802866650384)
,p_plug_name=>unistr('\975E\8868\793A\306E\30A2\30A4\30C6\30E0')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8283641811650414)
,p_plug_name=>unistr('\6709\52B9\306A\30E6\30FC\30B6\30FC\304C\5B58\5728\3057\307E\3059 - \30DA\30FC\30B8\60C5\5831')
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.prn(''<p>'');',
'sys.htp.prn(apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'', :P10075_VALID_COUNT, :P10075_ROLE));',
'sys.htp.prn(''</p>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8284389928650416)
,p_plug_name=>unistr('\6709\52B9\306A\30E6\30FC\30B6\30FC\304C\5B58\5728\3057\307E\305B\3093 - \30DA\30FC\30B8\60C5\5831')
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>unistr('<p>\6709\52B9\306A\65B0\898F\30E6\30FC\30B6\30FC\304C\898B\3064\304B\308A\307E\305B\3093</p>')
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8271960388650384)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8271106751650383)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8285051011650417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8271106751650383)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191635058606944)
,p_button_image_alt=>unistr('\524D')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8271437417650383)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8271106751650383)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8285727408650418)
,p_name=>'P10075_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8271802866650384)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 access_level',
'from dual ',
'where 1 = 1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8286108964650419)
,p_name=>'P10075_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8271802866650384)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8286582973650419)
,p_name=>'P10075_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8271802866650384)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8271551854650383)
,p_name=>unistr('\30E2\30FC\30C0\30EB\306E\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8271437417650383)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8287203924650420)
,p_event_id=>wwv_flow_api.id(8271551854650383)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8287764566650421)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\30EA\30B9\30C8\3078\306E\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' ) loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_INVALID'');',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_VALID'');',
'    :P10074_PRELIM_USERS := null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8271960388650384)
,p_process_success_message=>unistr('\30E6\30FC\30B6\30FC\304C\8FFD\52A0\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8288146900650421)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10080
begin
wwv_flow_api.create_page(
 p_id=>10080
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258847645115242583)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_required_patch=>wwv_flow_api.id(8299291135675792)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190607143153'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8299754444675794)
,p_plug_name=>unistr('\30D5\30A9\30FC\30E0\30FB\30A2\30A4\30C6\30E0\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8299860122675794)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451163538186606812)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8299931702675794)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8299860122675794)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\9001\4FE1')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8300027440675794)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8299860122675794)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8308660595675810)
,p_branch_name=>unistr('\6210\529F')
,p_branch_action=>'f?p=&APP_ID.:10081:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8303423996675800)
,p_name=>'P10080_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8299754444675794)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8303878671675801)
,p_name=>'P10080_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8299754444675794)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8304247827675801)
,p_name=>'P10080_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8299754444675794)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8304622949675802)
,p_name=>'P10080_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(8299754444675794)
,p_prompt=>unistr('\30A8\30AF\30B9\30DA\30EA\30A8\30F3\30B9')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_api.id(8304736264675802)||'.'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
,p_attribute_03=>'Y'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8306592419675805)
,p_name=>'P10080_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8299754444675794)
,p_prompt=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8308288390675809)
,p_validation_name=>unistr('\5C11\306A\304F\3068\30821\3064\306E\30D5\30A3\30FC\30C9\30D0\30C3\30AF\304C\5FC5\8981\3067\3059')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10080_FEEDBACK is null and :P10080_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\307E\305F\306F\30A8\30AF\30B9\30DA\30EA\30A8\30F3\30B9\3092\63D0\4F9B\3057\3066\304F\3060\3055\3044\3002')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8300115611675794)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\53D6\308A\6D88\3059')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8300027440675794)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8307331105675807)
,p_event_id=>wwv_flow_api.id(8300115611675794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8307859375675809)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\9001\4FE1')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_util.submit_feedback (',
'    p_comment              => :P10080_FEEDBACK,',
'    p_application_id       => :APP_ID,',
'    p_page_id              => :P10080_PAGE_ID,',
'    p_rating               => :P10080_RATING',
'',
' );',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8299931702675794)
,p_process_success_message=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\304C\767A\884C\3055\308C\307E\3057\305F')
);
end;
/
prompt --application/pages/page_10081
begin
wwv_flow_api.create_page(
 p_id=>10081
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\304C\767A\884C\3055\308C\307E\3057\305F')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258847645115242583)
,p_required_patch=>wwv_flow_api.id(8299291135675792)
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190607143153'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8300385326675794)
,p_plug_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\304C\767A\884C\3055\308C\307E\3057\305F')
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451157184130606749)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8300264820675794)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8300385326675794)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\9589\3058\308B')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_css_classes=>'w40p'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8300468050675794)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8300264820675794)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8310242132675814)
,p_event_id=>wwv_flow_api.id(8300468050675794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10083
begin
wwv_flow_api.create_page(
 p_id=>10083
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\7BA1\7406')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_api.id(8299291135675792)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306F\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\5185\306E\901A\5E38\306E\30DA\30FC\30B8\304B\3089\30D5\30A3\30FC\30C9\30D0\30C3\30AF\3092\5165\529B\3067\304D\307E\3059\3002</p>'),
unistr('<p>\3053\306E\30EC\30DD\30FC\30C8\306B\306F\3001\5165\529B\3055\308C\305F\30D5\30A3\30FC\30C9\30D0\30C3\30AF\3001\7BA1\7406\8005\306B\3088\308A\5165\529B\3055\308C\305F\30EC\30B9\30DD\30F3\30B9\3001\304A\3088\3073\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\30B9\30C6\30FC\30BF\30B9\304C\8868\793A\3055\308C\307E\3059\3002</p>'),
unistr('<p>\7DE8\96C6\30A2\30A4\30B3\30F3(\9EC4\8272\306E\925B\7B46)\3092\30AF\30EA\30C3\30AF\3057\3066\30EC\30B9\30DD\30F3\30B9\3092\5165\529B\3059\308B\304B\3001\30D5\30A3\30FC\30C9\30D0\30C3\30AF\30FB\30B9\30C6\30FC\30BF\30B9\3092\66F4\65B0\3057\307E\3059\3002</p>'),
unistr('<p><em><strong>\6CE8\610F:</strong> \30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\53D7\4FE1\8005\304C\5B9A\7FA9\3055\308C\3066\3044\308B\5834\5408\3001\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306F\3001\30D5\30A3\30FC\30C9\30D0\30C3\30AF\53D7\4FE1\8005\30EA\30B9\30C8\306E\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\306B\3082\9001\4FE1\3055\308C\307E\3059\3002</em></p>')))
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190612145742'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8301873772675795)
,p_plug_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\7BA1\7406')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(451168469368606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id, application_id app_id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'',
'',
'',
'',
'from apex_team_feedback f',
'-- where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(8321233271675832)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\7BA1\7406')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10084:&APP_SESSION.::::P10084_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>3269739406024466
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8321380298675833)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8321665214675837)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>11
,p_column_identifier=>'B'
,p_column_label=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30DA\30FC\30B8')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8322067162675843)
,p_db_column_name=>'CREATED'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>unistr('\30D5\30A1\30A4\30EB\6E08')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8322434133675845)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>unistr('\30D5\30A1\30A4\30E9')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8322834952675847)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8323620408675850)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>55
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8324067199675852)
,p_db_column_name=>'STATUS'
,p_display_order=>61
,p_column_identifier=>'H'
,p_column_label=>unistr('\30B9\30C6\30FC\30BF\30B9')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(8314970311675823)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8324420824675854)
,p_db_column_name=>'RESPONSE'
,p_display_order=>71
,p_column_identifier=>'I'
,p_column_label=>unistr('\30EC\30B9\30DD\30F3\30B9')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8324831189675856)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>81
,p_column_identifier=>'J'
,p_column_label=>unistr('\30E6\30FC\30B6\30FC\30FB\30A8\30FC\30B8\30A7\30F3\30C8')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8325222265675857)
,p_db_column_name=>'UPDATED'
,p_display_order=>91
,p_column_identifier=>'K'
,p_column_label=>unistr('\66F4\65B0')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8325616841675859)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>101
,p_column_identifier=>'L'
,p_column_label=>unistr('\66F4\65B0\8005')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8326071922675861)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>111
,p_column_identifier=>'M'
,p_column_label=>unistr('\30DA\30FC\30B8')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10714302019972678)
,p_db_column_name=>'RATING'
,p_display_order=>121
,p_column_identifier=>'N'
,p_column_label=>'Rating'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10714477912972679)
,p_db_column_name=>'APP_ID'
,p_display_order=>131
,p_column_identifier=>'O'
,p_column_label=>'App Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8326772991675862)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'32753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:STATUS:RESPONSE:UPDATED:UPDATED_BY:APP_ID'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8327664977675863)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8301873772675795)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(451191880808606955)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8301774264675795)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA\6642\306B\30EA\30D5\30EC\30C3\30B7\30E5')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(8301873772675795)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8328895930675866)
,p_event_id=>wwv_flow_api.id(8301774264675795)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8301873772675795)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10084
begin
wwv_flow_api.create_page(
 p_id=>10084
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(258847645115242583)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_required_patch=>wwv_flow_api.id(8299291135675792)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190607143153'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8301166057675794)
,p_plug_name=>unistr('\30D5\30A9\30FC\30E0\30FB\30A2\30A4\30C6\30E0\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451158897956606790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8301197737675794)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(451163538186606812)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8301381268675794)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8301197737675794)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8301453987675794)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8301197737675794)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8301541988675794)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8301197737675794)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P10084_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8312446004675819)
,p_name=>'P10084_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8301166057675794)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8312856305675820)
,p_name=>'P10084_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8301166057675794)
,p_prompt=>unistr('\30DA\30FC\30B8')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8313232055675821)
,p_name=>'P10084_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8301166057675794)
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\6E08')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8313595560675821)
,p_name=>'P10084_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8301166057675794)
,p_prompt=>unistr('\8A55\4FA1')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8314012645675821)
,p_name=>'P10084_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8301166057675794)
,p_prompt=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8314476266675822)
,p_name=>'P10084_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8301166057675794)
,p_prompt=>unistr('\30EC\30B9\30DD\30F3\30B9')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8314794017675823)
,p_name=>'P10084_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(8301166057675794)
,p_prompt=>unistr('\30B9\30C6\30FC\30BF\30B9')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_api.id(8314970311675823)||'.'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8317165649675826)
,p_name=>'P10084_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(8301166057675794)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\30FB\30A8\30FC\30B8\30A7\30F3\30C8')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(10901718348253545)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8301636479675795)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\53D6\308A\6D88\3059')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8301453987675794)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8317903634675827)
,p_event_id=>wwv_flow_api.id(8301636479675795)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8318468269675827)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30C7\30FC\30BF\306E\30ED\30FC\30C9')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
unistr('                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="\60AA\3044"></span>'' '),
unistr('                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="\3069\3061\3089\3068\3082\3044\3048\306A\3044"></span>''  '),
unistr('                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="\826F\3044"></span>'' '),
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10084_ID',
') loop',
'   :P10084_PAGE_ID := c1.page_id||''. ''||c1.page_name;',
'   :P10084_FILED := c1.filed;',
'   :P10084_RATING_ICON := c1.rating_icon;',
'   :P10084_FEEDBACK := c1.feedback;',
'   :P10084_RESPONSE := c1.public_response;',
'   :P10084_FEEDBACK_STATUS := c1.feedback_status;',
'   :P10084_USER_AGENT := c1.http_user_agent;',
'end loop;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8318832174675829)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\66F4\65B0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.reply_to_feedback (',
'    p_feedback_id        => :P10084_ID,',
'    p_status             => :P10084_FEEDBACK_STATUS,',
'    p_public_response    => :P10084_RESPONSE );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8301381268675794)
,p_process_success_message=>unistr('\30A2\30AF\30B7\30E7\30F3\304C\51E6\7406\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8319255326675829)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\524A\9664')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.delete_feedback (',
'    p_feedback_id        => :P10084_ID );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8301541988675794)
,p_process_success_message=>unistr('\30A2\30AF\30B7\30E7\30F3\304C\51E6\7406\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8319656145675830)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'E.PROPERTY.BUTTON_ACTION.LOV.RESET.D'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8301541988675794)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8320049354675830)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10094
begin
wwv_flow_api.create_page(
 p_id=>10094
,p_user_interface_id=>wwv_flow_api.id(451202514147607094)
,p_name=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>unistr('&APP_NAME. - \30ED\30B0\30A4\30F3')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(451152362382606710)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20190827183110'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8336151809696012)
,p_plug_name=>unistr('&APP_NAME. Documents - \30ED\30B0\30A4\30F3')
,p_icon_css_classes=>'fa-sign-in'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(451168723210606821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8338909811696018)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8336151809696012)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(451191692389606954)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30ED\30B0\30A4\30F3')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8336523731696014)
,p_name=>'P10094_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8336151809696012)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_placeholder=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191140171606930)
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
 p_id=>wwv_flow_api.id(8336895957696014)
,p_name=>'P10094_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8336151809696012)
,p_prompt=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_placeholder=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191140171606930)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8338002868696016)
,p_name=>'P10094_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8336151809696012)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(8337290346696015)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(451191140171606930)
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
 p_id=>wwv_flow_api.id(8339749447696019)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Cookie\306E\30E6\30FC\30B6\30FC\540D\3092\8A2D\5B9A')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P10094_USERNAME),',
'    p_consent  => :P10094_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8339370766696019)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P10094_USERNAME,',
'    p_password => :P10094_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8340510592696021)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\30DA\30FC\30B8\30FB\30AD\30E3\30C3\30B7\30E5\306E\30AF\30EA\30A2')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8340128054696020)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Cookie\306E\30E6\30FC\30B6\30FC\540D\3092\53D6\5F97')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10094_USERNAME := apex_authentication.get_login_username_cookie;',
':P10094_REMEMBER := case when :P10094_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(8519558440754230)
);
end;
/
prompt --application/deployment/install/install_ja_lexer
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5065349448951368)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'ja_lexer'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  ctx_ddl.create_preference(''ja_lexer'', ''JAPANESE_LEXER'');',
'end;',
'/'))
);
end;
/
prompt --application/deployment/install/install_sequences
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5074775800032420)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'sequences'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' CREATE SEQUENCE  "TCW_DOCUMENTS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "TCW_DOC_REMARKS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "TCW_FOLLOWERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
' CREATE SEQUENCE  "TCW_LINK_TYPES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5074809344032420)
,p_script_id=>wwv_flow_api.id(5074775800032420)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_DOCUMENTS_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180059','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180059','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5074990327032421)
,p_script_id=>wwv_flow_api.id(5074775800032420)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_DOC_REMARKS_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180059','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180059','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5075282417032421)
,p_script_id=>wwv_flow_api.id(5074775800032420)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_FOLLOWERS_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180059','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180059','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5075465987032421)
,p_script_id=>wwv_flow_api.id(5074775800032420)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_LINK_TYPES_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180059','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180059','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_tcw_schemas
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5083237458059710)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'tcw_schemas'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE "TCW_DOCUMENTS" ',
'   (	"LINK_NUM" NUMBER, ',
'	"REG_DATE" DATE NOT NULL ENABLE, ',
'	"UPD_DATE" DATE NOT NULL ENABLE, ',
'	"OPL_CODE" NUMBER NOT NULL ENABLE, ',
'	"OBJ_NAME" VARCHAR2(250) NOT NULL ENABLE, ',
'	"OBJ_VERSION" VARCHAR2(250) NOT NULL ENABLE, ',
'	"LINK_URL" VARCHAR2(250), ',
'	"ANNOUNCE_FLAG" NUMBER, ',
'	"UPD_USERNAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"REG_USERNAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"ABSTRACT" VARCHAR2(4000), ',
'	"IN_CONSULTING" NUMBER GENERATED ALWAYS AS (CASE "OPL_CODE" WHEN 5 THEN 1 ELSE 0 END) VIRTUAL , ',
'	"ALIAS_NAME" VARCHAR2(40), ',
'	"IS_AUTHOR" VARCHAR2(1) DEFAULT ''Y'' NOT NULL ENABLE, ',
'	"IS_PORTAL" VARCHAR2(1) DEFAULT ''N'' NOT NULL ENABLE, ',
'	"IS_PROTECTED" VARCHAR2(1) DEFAULT ''N'' NOT NULL ENABLE, ',
'	 CONSTRAINT "TCW_DOCUMENTS_PK" PRIMARY KEY ("LINK_NUM")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_ACLS" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"USER_NAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_REMARKS" ',
'   (	"TCW_REMARK_ID" NUMBER NOT NULL ENABLE, ',
'	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"REMARK_TEXT" VARCHAR2(4000), ',
'	"AUTHOR" VARCHAR2(80), ',
'	"DATE_OF_REMARK" TIMESTAMP (6) NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"IS_CLOSED" VARCHAR2(1) DEFAULT ''N'' NOT NULL ENABLE, ',
'	"DATE_CLOSED" TIMESTAMP (6) WITH TIME ZONE, ',
'	 CONSTRAINT "TCW_DOC_REMARKS_PK" PRIMARY KEY ("TCW_REMARK_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_HASHTAGS" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"HASHTAG" VARCHAR2(300) NOT NULL ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_LINK_TYPES" ',
'   (	"LINK_TYPE_ID" NUMBER NOT NULL ENABLE, ',
'	"LINK_TYPE_NAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"DESCRIPTION" VARCHAR2(400), ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LINK_ICON" VARCHAR2(40), ',
'	 CONSTRAINT "TCW_LINK_TYPES_PK" PRIMARY KEY ("LINK_TYPE_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_LINKS" ',
'   (	"DOC_ID" NUMBER NOT NULL ENABLE, ',
'	"LINK_TYPE" NUMBER NOT NULL ENABLE, ',
'	"LINK_URL" VARCHAR2(250) NOT NULL ENABLE, ',
'	"NOTE" VARCHAR2(400), ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_NOTIFICATIONS" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"NOTIFY_UPDATE" VARCHAR2(1)',
'   ) ;',
'',
'CREATE TABLE "TCW_CONSUL_USER" ',
'   (	"U_EMAIL" VARCHAR2(80) NOT NULL ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_ARCHIVES" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"OBJ_VERSION" VARCHAR2(250) NOT NULL ENABLE, ',
'	"OBJ_NAME" VARCHAR2(250) NOT NULL ENABLE, ',
'	"OPL_CODE" NUMBER, ',
'	"FILE_NAME" VARCHAR2(250), ',
'	"CONTENT_TYPE" VARCHAR2(100), ',
'	"LINK_OBJECT" BLOB, ',
'	"CREATED_BY" VARCHAR2(160) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"OWNER" VARCHAR2(160), ',
'	 CONSTRAINT "TCW_DOC_ARCHIVES_PK" PRIMARY KEY ("LINK_NUM", "OBJ_VERSION")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_QUERY_HISTORY" ',
'   (	"QUERY_TERM" VARCHAR2(4000) NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(200) NOT NULL ENABLE, ',
'	"DATE_QUERY" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"QUERY_TYPE" VARCHAR2(1), ',
'	"TERM_POSITION" NUMBER',
'   ) ;',
'',
'CREATE TABLE "TCW_CONTENT_TYPES" ',
'   (	"CONTENT_TYPE" VARCHAR2(200) NOT NULL ENABLE, ',
'	"CONTENT_TYPE_ALIAS" VARCHAR2(40), ',
'	"DESCRIPTION" VARCHAR2(200), ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	 CONSTRAINT "TCW_CONTENT_TYPES_PK" PRIMARY KEY ("CONTENT_TYPE")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_DATA" ',
'   (	"LINK_NUM" NUMBER, ',
'	"FILE_NAME" VARCHAR2(250), ',
'	"CONTENT_TYPE" VARCHAR2(100), ',
'	"LINK_OBJECT" BLOB, ',
'	 CONSTRAINT "TCW_DOC_DATA_PK" PRIMARY KEY ("LINK_NUM")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOWNLOAD_HISTORY" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(80), ',
'	"DATE_DOWNLOAD" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80)',
'   ) ;',
'',
'CREATE TABLE "TCW_FOLLOWERS" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(250) NOT NULL ENABLE, ',
'	"FOLLOWER" VARCHAR2(250) NOT NULL ENABLE, ',
'	 CONSTRAINT "TCW_FOLLOWERS_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOWNLOAD_VIOLATIONS" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(80), ',
'	"DATE_DOWNLOAD" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"REASON" NUMBER DEFAULT 0',
'   ) ;',
'',
'ALTER TABLE "TCW_DOC_ACLS" ADD CONSTRAINT "TCW_DOC_ACLS_FK" FOREIGN KEY ("LINK_NUM")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ENABLE;',
'',
'ALTER TABLE "TCW_DOC_REMARKS" ADD CONSTRAINT "TCW_DOC_REMARKS_FK" FOREIGN KEY ("LINK_NUM")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ENABLE;',
'',
'ALTER TABLE "TCW_HASHTAGS" ADD CONSTRAINT "TCW_HASHTAGS_FK" FOREIGN KEY ("LINK_NUM")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ON DELETE CASCADE ENABLE;',
'',
'ALTER TABLE "TCW_DOC_LINKS" ADD CONSTRAINT "TCW_DOC_LINKS_FK" FOREIGN KEY ("DOC_ID")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ENABLE;',
'',
'ALTER TABLE "TCW_DOC_LINKS" ADD CONSTRAINT "TCW_DOC_LINKS_FK2" FOREIGN KEY ("LINK_TYPE")',
'	  REFERENCES "TCW_LINK_TYPES" ("LINK_TYPE_ID") ENABLE;',
'',
'ALTER TABLE "TCW_DOC_NOTIFICATIONS" ADD CONSTRAINT "TCW_DOC_NOTIFICATIONS_FK" FOREIGN KEY ("LINK_NUM")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ENABLE;',
'',
'CREATE INDEX "TCW_DOCUMENTS_N1" ON "TCW_DOCUMENTS" ("REG_USERNAME") ',
'  ;',
'',
'CREATE INDEX "TCW_DOCUMENTS_N2" ON "TCW_DOCUMENTS" ("UPD_USERNAME") ',
'  ;',
'',
'CREATE UNIQUE INDEX "TCW_HASHTAGS_U1" ON "TCW_HASHTAGS" ("LINK_NUM", UPPER("HASHTAG")) ',
'  ;',
'',
'CREATE INDEX "TCW_SEARCH_ABSTRACT" ON "TCW_DOCUMENTS" ("ABSTRACT") ',
'   INDEXTYPE IS "CTXSYS"."CONTEXT"  PARAMETERS (''lexer ja_lexer sync (on commit)'');',
'',
'CREATE INDEX "TCW_SEARCH_DB_DOC" ON "TCW_DOC_DATA" ("LINK_OBJECT") ',
'   INDEXTYPE IS "CTXSYS"."CONTEXT"  PARAMETERS (''lexer ja_lexer sync (on commit)'');',
'',
'CREATE INDEX "TCW_SEARCH_TITLE" ON "TCW_DOCUMENTS" ("OBJ_NAME") ',
'   INDEXTYPE IS "CTXSYS"."CONTEXT"  PARAMETERS (''lexer ja_lexer sync (on commit)'');',
'',
'CREATE OR REPLACE TRIGGER "TCW_CONTENT_TYPES_TI" ',
'BEFORE ',
'insert on "TCW_CONTENT_TYPES" ',
'for each row ',
'begin ',
':new.created_by := v(''APP_USER''); ',
':new.creation_date := systimestamp; ',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_CONTENT_TYPES_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_CONTENT_TYPES_TU" ',
'BEFORE ',
'insert or update on "TCW_CONTENT_TYPES" ',
'for each row ',
'begin ',
':new.last_updated_by := v(''APP_USER''); ',
':new.last_update_date := systimestamp; ',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_CONTENT_TYPES_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_ACLS_TI" ',
'BEFORE',
'insert on "TCW_DOC_ACLS"',
'for each row',
'begin',
':new.created_by := v(''APP_USER'');',
':new.creation_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_ACLS_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_ACLS_TU" ',
'BEFORE',
'insert or update on "TCW_DOC_ACLS"',
'for each row',
'begin',
':new.last_updated_by := v(''APP_USER'');',
':new.last_update_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_ACLS_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_ARCHIVES_TI" ',
'BEFORE',
'insert on "TCW_DOC_ARCHIVES"',
'for each row',
'begin',
':new.created_by    := v(''APP_USER'');',
':new.creation_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_ARCHIVES_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_LINKS_TI" ',
'BEFORE',
'insert on "TCW_DOC_LINKS"',
'for each row',
'begin',
':new.created_by := v(''APP_USER'');',
':new.creation_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_LINKS_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_LINKS_TU" ',
'BEFORE',
'insert or update on "TCW_DOC_LINKS"',
'for each row',
'begin',
':new.last_updated_by := v(''APP_USER'');',
':new.last_update_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_LINKS_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_NOTIFICATIONS_TU" ',
'BEFORE ',
'insert or update on "TCW_DOC_NOTIFICATIONS" ',
'for each row ',
'begin ',
':new.last_update_date := systimestamp; ',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_NOTIFICATIONS_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_REMARKS_TI" ',
'  before insert on "TCW_DOC_REMARKS"               ',
'  for each row  ',
'begin   ',
'  if :NEW."TCW_REMARK_ID" is null then ',
'    select "TCW_DOC_REMARKS_SEQ".nextval into :NEW."TCW_REMARK_ID" from sys.dual; ',
'    :new.created_by := v(''APP_USER'');',
'    :new.creation_date := systimestamp;',
'  end if; ',
'end; ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_REMARKS_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_REMARKS_TU" ',
'BEFORE',
'insert or update on "TCW_DOC_REMARKS"',
'for each row',
'begin',
':new.last_updated_by := v(''APP_USER'');',
':new.last_update_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_REMARKS_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_FOLLOWERS_TI" ',
'  before insert on "TCW_FOLLOWERS"                ',
'  for each row   ',
'begin    ',
'  if :NEW."ID" is null then  ',
'    select "TCW_FOLLOWERS_SEQ".nextval into :NEW."ID" from sys.dual;  ',
'  end if;  ',
'end;  ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_FOLLOWERS_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_LINK_TYPES_TI" ',
'BEFORE ',
'insert on "TCW_LINK_TYPES" ',
'for each row ',
'begin',
'  if :NEW."LINK_TYPE_ID" is null then ',
'    select "TCW_LINK_TYPES_SEQ".nextval into :NEW."LINK_TYPE_ID" from sys.dual; ',
'    :new.created_by := v(''APP_USER'');',
'    :new.creation_date := systimestamp;  end if;',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_LINK_TYPES_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_LINK_TYPES_TU" ',
'BEFORE ',
'insert or update on "TCW_LINK_TYPES" ',
'for each row ',
'begin ',
':new.last_updated_by := v(''APP_USER''); ',
':new.last_update_date := systimestamp; ',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_LINK_TYPES_TU" ENABLE;',
'',
'CREATE OR REPLACE FORCE VIEW "TCW_DOC_LINKS_V" ("LINK_NUM", "LINK_NAMES") AS ',
'  select l.doc_id as link_num, listagg(''<a href="'' || l.link_url || ''">'' || t.link_type_name || ''</a>'',''</br>'') within group (order by t.link_type_name nulls last) as link_names from tcw_doc_links l join tcw_link_types t on l.link_type = t.link_type_'
||'id group by doc_id',
';',
'',
'CREATE OR REPLACE FORCE VIEW "TCW_DOC_NOTIF_V" ("LINK_NUM", "OBJ_NAME", "U_EMAIL", "USERNAME") AS ',
'  select l.link_num, l.obj_name, l.upd_username as u_email, n.username ',
'from tcw_documents l join tcw_doc_notifications n on l.link_num = n.link_num ',
'where notify_update = ''Y''',
';',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5083376737059715)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_CONTENT_TYPES_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5083496227059715)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOCUMENTS_N1'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5083733411059715)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOCUMENTS_N2'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5083919028059716)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOCUMENTS_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5084157419059716)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOC_ARCHIVES_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5084317800059716)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOC_DATA_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5084528455059716)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOC_REMARKS_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5084712190059717)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_FOLLOWERS_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5084909110059717)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_HASHTAGS_U1'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5085176753059717)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_LINK_TYPES_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5085342226059717)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_CONSUL_USER'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5085549498059717)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_CONTENT_TYPES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5085708601059718)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOCUMENTS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5085986132059718)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_ACLS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5086143197059718)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_ARCHIVES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5086289829059718)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_DATA'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5086568159059718)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_LINKS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5086700270059718)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_NOTIFICATIONS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5086936766059718)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_REMARKS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5087129945059719)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOWNLOAD_HISTORY'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5087382448059719)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOWNLOAD_VIOLATIONS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5087493142059719)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_FOLLOWERS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5087748307059719)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_HASHTAGS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5087938172059720)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_LINK_TYPES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5088168471059720)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_QUERY_HISTORY'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5088362564059720)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_CONTENT_TYPES_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5088507599059720)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_CONTENT_TYPES_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5088712507059721)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_ACLS_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5088966526059721)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_ACLS_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5089169989059721)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_ARCHIVES_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5089293599059721)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_LINKS_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5089546597059721)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_LINKS_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5089710309059721)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_NOTIFICATIONS_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5089934160059722)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_REMARKS_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5090149449059722)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_REMARKS_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5090288586059722)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_FOLLOWERS_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5090563992059722)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_LINK_TYPES_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5090784633059723)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_LINK_TYPES_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5090912730059723)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'TCW_DOC_LINKS_V'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5091121053059723)
,p_script_id=>wwv_flow_api.id(5083237458059710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'TCW_DOC_NOTIF_V'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180532','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_tcw_common_seq
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(2567934313668710)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'tcw_common_seq'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' CREATE SEQUENCE  "TCW_USER_PREFERENCES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(2568066657668712)
,p_script_id=>wwv_flow_api.id(2567934313668710)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_USER_PREFERENCES_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828183738','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828183738','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_tcw_common
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5091520897066845)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'tcw_common'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE "TCW_USER_NAMES" ',
'   (	"USER_NAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"FIRST_NAME" VARCHAR2(80), ',
'	"LAST_NAME" VARCHAR2(80), ',
'	 CONSTRAINT "TCW_USER_NAMES_PK" PRIMARY KEY ("USER_NAME")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_USER_PREFERENCES" ',
'   (	"USER_NAME" VARCHAR2(80), ',
'	"PREFERENCE_NAME" VARCHAR2(80), ',
'	"PREFERENCE_VALUE" VARCHAR2(80), ',
'	"ID" NUMBER NOT NULL ENABLE, ',
'	 CONSTRAINT "TCW_USER_PREFERENCES_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE OR REPLACE TRIGGER "TCW_USER_PREFERENCES_TI" ',
'  before insert on "TCW_USER_PREFERENCES"                ',
'  for each row   ',
'begin    ',
'  if :NEW."ID" is null then  ',
'    select "TCW_USER_PREFERENCES_SEQ".nextval into :NEW."ID" from sys.dual;  ',
'  end if;  ',
'end;  ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_USER_PREFERENCES_TI" ENABLE;',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5092017271066846)
,p_script_id=>wwv_flow_api.id(5091520897066845)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_USER_NAMES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180643','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180643','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5092253657066847)
,p_script_id=>wwv_flow_api.id(5091520897066845)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_USER_PREFERENCES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180643','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180643','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5092392730066847)
,p_script_id=>wwv_flow_api.id(5091520897066845)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_USER_PREFERENCES_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180643','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180643','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_email
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5092805580071793)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'email'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE "ETP_TEMPLATES" ',
'   (	"ETP_ID" VARCHAR2(16) NOT NULL ENABLE, ',
'	"SUBJECT" VARCHAR2(400) NOT NULL ENABLE, ',
'	"BODY_TEXT" VARCHAR2(4000), ',
'	"BODY_HTML" VARCHAR2(4000), ',
'	"DESCRIPTION" VARCHAR2(800), ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	 CONSTRAINT "ETP_TEMPLATES_PK" PRIMARY KEY ("ETP_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE OR REPLACE TRIGGER "ETP_TEMPLATES_TI" ',
'BEFORE',
'insert on "ETP_TEMPLATES"',
'for each row',
'begin',
':new.created_by := v(''APP_USER'');',
':new.creation_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "ETP_TEMPLATES_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "ETP_TEMPLATES_TU" ',
'BEFORE',
'insert or update on "ETP_TEMPLATES"',
'for each row',
'begin',
':new.last_updated_by := v(''APP_USER'');',
':new.last_update_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "ETP_TEMPLATES_TU" ENABLE;',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5093156649071793)
,p_script_id=>wwv_flow_api.id(5092805580071793)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'ETP_TEMPLATES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180733','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180733','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5093314896071794)
,p_script_id=>wwv_flow_api.id(5092805580071793)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ETP_TEMPLATES_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180733','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180733','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5093576545071794)
,p_script_id=>wwv_flow_api.id(5092805580071793)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'ETP_TEMPLATES_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180733','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180733','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_tcw_util
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5093903553074276)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'tcw_util'
,p_sequence=>70
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE "TCW_UTIL" as ',
' ',
'procedure log_download_history ( ',
'  p_link_num in number, ',
'  p_username in varchar2, ',
'  p_timestamp in timestamp with local time zone); ',
' ',
'procedure log_download_violation ( ',
'  p_link_num in number, ',
'  p_username in varchar2, ',
'  p_timestamp in timestamp with local time zone, ',
'  p_reason in number default 0); ',
' ',
'procedure log_query_history ( ',
'  p_query_term in varchar2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2); ',
'   ',
'procedure log_query_history ( ',
'  p_query_term in varchar2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2, ',
'  p_term_position in number); ',
' ',
'procedure log_query_history ( ',
'  p_query_terms in APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2); ',
' ',
'function extract_hashtags ( ',
'  p_string in varchar2) ',
'return APEX_APPLICATION_GLOBAL.VC_ARR2; ',
' ',
'procedure extract_search_items ( ',
'  p_string in varchar2, ',
'  p_item_hashtags out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_item_owners   out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_item_words    out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_hashtag in varchar2 default ''#''); ',
' ',
'procedure save_hashtags ( ',
'  p_link_num  in number, ',
'  p_string    in varchar2); ',
' ',
'function get_name_part ( ',
'  p_email     in varchar2, ',
'  p_prefix    in varchar2 default null ',
'  ) return varchar2; ',
' ',
'procedure send( ',
'    p_from in varchar2, ',
'    p_body in varchar2, ',
'    p_subj in varchar2); ',
'     ',
'-- search helper ',
'procedure initialize_search_items; ',
' ',
'procedure remove_search_items( ',
'  p_search_items in varchar2); ',
' ',
'procedure add_search_items( ',
'  p_search_items in varchar2, ',
'  p_username     in varchar2 default null, ',
'  p_need_unescape in varchar2 default ''N''); ',
' ',
'function get_contains return varchar2; ',
' ',
'procedure set_preference( ',
'  p_preference_name  in varchar2, ',
'  p_preference_value in varchar2, ',
'  p_user_name in varchar2 default v(''APP_USER'')); ',
' ',
'function get_preference( ',
'   p_preference_name in varchar2, ',
'   p_default         in varchar2 default null, ',
'   p_user_name       in varchar2 default v(''APP_USER'') ',
') return varchar2; ',
' ',
'end; ',
'/',
'',
'',
'CREATE OR REPLACE PACKAGE BODY "TCW_UTIL" is ',
' ',
'procedure log_download_history ( ',
'  p_link_num  in number, ',
'  p_username  in varchar2, ',
'  p_timestamp in timestamp with local time zone) ',
'as ',
'  l_c number; ',
'  l_doc_owner varchar2(200); ',
'  PRAGMA AUTONOMOUS_TRANSACTION; ',
'begin ',
'  -- avoid duplicate download within 1 hour. ',
'  select count(*) into l_c from tcw_download_history ',
'  where link_num = p_link_num and username = p_username  ',
'  and date_download between systimestamp - interval ''1'' hour and systimestamp; ',
'  if l_c = 0 then ',
'    -- do not log if referer is a document owner ',
'    begin ',
'      select upd_username into l_doc_owner from tcw_documents where link_num = p_link_num; ',
'    exception ',
'      when no_data_found then ',
'        l_doc_owner := null; ',
'    end; ',
'    if l_doc_owner <> p_username then ',
'      insert into tcw_download_history(link_num, username, date_download, last_updated_by) ',
'      values(p_link_num, p_username, p_timestamp, l_doc_owner); ',
'    end if; ',
'  end if; ',
'  commit; ',
'end; ',
' ',
'procedure log_download_violation( ',
'  p_link_num  in number, ',
'  p_username  in varchar2, ',
'  p_timestamp in timestamp with local time zone, ',
'  p_reason in number default 0) ',
'as ',
'  l_c number; ',
'  PRAGMA AUTONOMOUS_TRANSACTION; ',
'begin ',
'  insert into tcw_download_violations(link_num, username, date_download, reason) ',
'      values(p_link_num, p_username, p_timestamp, p_reason); ',
'  commit; ',
'end; ',
' ',
'procedure log_query_history ( ',
'  p_query_term in varchar2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2) ',
'as ',
'  PRAGMA AUTONOMOUS_TRANSACTION; ',
'begin ',
'  insert into tcw_query_history(query_term, username, date_query, query_type) ',
'      values(p_query_term, p_username, p_timestamp, p_query_type); ',
'  commit; ',
'end; ',
' ',
'procedure log_query_history ( ',
'  p_query_term in varchar2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2, ',
'  p_term_position in number) ',
'as ',
'  PRAGMA AUTONOMOUS_TRANSACTION; ',
'begin ',
'  insert into tcw_query_history(query_term, username, date_query, query_type, term_position) ',
'      values(p_query_term, p_username, p_timestamp, p_query_type, p_term_position); ',
'  commit; ',
'end; ',
' ',
'procedure log_query_history ( ',
'  p_query_terms   in APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_username      in varchar2, ',
'  p_timestamp     in timestamp with local time zone, ',
'  p_query_type    in varchar2) ',
'as ',
'  PRAGMA AUTONOMOUS_TRANSACTION; ',
'begin ',
'  for i in 1..p_query_terms.count ',
'  loop ',
'    insert into tcw_query_history(query_term, username, date_query, query_type, term_position) ',
'        values(p_query_terms(i), p_username, p_timestamp, p_query_type, i); ',
'  end loop; ',
'  commit; ',
'end; ',
'function extract_hashtags ( ',
'  p_string in varchar2) ',
'return APEX_APPLICATION_GLOBAL.VC_ARR2 ',
'as ',
'  l_hash_loc number; ',
'  l_hashtag  varchar2(1000); ',
'  l_tagcount number := 0; ',
'  l_string  varchar2(4000); ',
'  l_vc_hashtags APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'begin ',
'  if p_string is null then ',
'    return l_vc_hashtags; -- returns empty array ',
'  end if; ',
'  l_tagcount := 0; ',
'  l_string   := p_string; ',
'  while true loop ',
'    l_hash_loc := instr(l_string, ''#''); ',
'    exit when l_hash_loc = 0; -- No hash char exist, exit ',
'    if l_hash_loc > 1 then ',
'      if not regexp_like(substr(l_string, l_hash_loc - 1, 1),''\s'') then ',
'        l_string := substr(l_string, l_hash_loc+1); ',
'        continue; ',
'      end if; ',
'    end if; ',
'    l_string := substr(l_string, l_hash_loc+1); ',
'    l_hashtag := regexp_substr(l_string, ''^\w+''); ',
'    if l_hashtag is null or length(l_hashtag) > 80 then ',
'       -- ignore if too short or too long ',
'       continue;  ',
'    elsif regexp_like(l_hashtag, ''^\d+$'') then ',
'       -- ignore if only numbers ',
'       continue; ',
'    end if;  ',
'    l_tagcount := l_tagcount + 1; ',
'    l_vc_hashtags(l_tagcount) := l_hashtag; ',
'  end loop; ',
'  return l_vc_hashtags; ',
'end; ',
' ',
'procedure extract_search_items (  ',
'  p_string in varchar2, ',
'  p_item_hashtags out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_item_owners   out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_item_words    out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_hashtag in varchar2 default ''#'' ',
')  ',
'as ',
'  l_hash_loc  number := 0; ',
'  l_owner_loc number := 0; ',
'  l_word_loc  number := 0; ',
'  l_hash_cnt  number := 0; ',
'  l_owner_cnt number := 0; ',
'  l_word_cnt  number := 0; ',
'  l_loc       number; ',
'  l_item      varchar2(1000); ',
'  l_item_len  number; ',
'  l_string    varchar2(4000); ',
'  REGEXP_HASHTAG constant varchar2(16) := p_hashtag || ''[[:alnum:]_]+''; ',
'  REGEXP_OWNER   constant varchar2(16) := ''@[A-Za-z0-9\.]+''; ',
'  REGEXP_WORD    constant varchar2(16) := ''[[:alnum:]]+''; ',
'begin ',
'  if p_string is null then ',
'    return; ',
'  end if; ',
'  l_string := replace(p_string, unistr(''\3000''),'' '');  ',
'  while true loop ',
'    l_hash_loc  := regexp_instr(l_string, REGEXP_HASHTAG); ',
'    l_owner_loc := regexp_instr(l_string, REGEXP_OWNER); ',
'    l_word_loc  := regexp_instr(l_string, REGEXP_WORD); ',
'    -- dbms_output.put_line(''H:'' || l_hash_loc || ''O:'' || l_owner_loc || ''W:'' || l_word_loc); ',
'    if l_hash_loc > 0 ',
'      and (l_owner_loc = 0 or l_hash_loc < l_owner_loc) ',
'      and (l_word_loc  = 0 or l_hash_loc < l_word_loc) then ',
'      -- hashtag appeard first. ',
'      l_hash_cnt := l_hash_cnt + 1; ',
'      l_item := regexp_substr(l_string, REGEXP_HASHTAG); ',
'      -- strip first # char. ',
'      l_loc := l_hash_loc; ',
'      l_item_len := length(l_item); ',
'      p_item_hashtags(l_hash_cnt) := substr(l_item,2); ',
'    elsif l_owner_loc > 0 ',
'      and (l_hash_loc = 0 or l_owner_loc < l_hash_loc) ',
'      and (l_word_loc = 0 or l_owner_loc < l_word_loc) then ',
'      -- owner appeard first. ',
'      l_owner_cnt := l_owner_cnt + 1; ',
'      l_item := regexp_substr(l_string, REGEXP_OWNER); ',
'      -- strip first @ char. ',
'      l_loc := l_owner_loc; ',
'      l_item_len := length(l_item); ',
'      p_item_owners(l_owner_cnt) := substr(l_item,2); ',
'    elsif l_word_loc > 0 ',
'      and (l_hash_loc  = 0 or l_word_loc < l_hash_loc) ',
'      and (l_owner_loc = 0 or l_word_loc < l_owner_loc) then ',
'      -- word appeard first. ',
'      l_word_cnt := l_word_cnt + 1; ',
'      l_item := regexp_substr(l_string, REGEXP_WORD); ',
'      -- nothing is striped from word. ',
'      l_loc := l_word_loc; ',
'      l_item_len := length(l_item); ',
'      p_item_words(l_word_cnt) := l_item; ',
'    else ',
'      exit; ',
'    end if; ',
'    l_string := substr(l_string, l_loc + l_item_len); ',
'    -- dbms_output.put_line(l_item || '' ''|| l_loc || '' ''|| l_string); ',
'  end loop; ',
'end; ',
' ',
'procedure save_hashtags ( ',
'  p_link_num in number, ',
'  p_string   in varchar2) ',
'as ',
'  l_vc_hashtags APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'begin ',
'  -- cleanup the entry. ',
'  delete from tcw_hashtags where link_num = p_link_num; ',
'  l_vc_hashtags := tcw_util.extract_hashtags(p_string); ',
'  for i in 1..l_vc_hashtags.count loop ',
'     begin ',
'       insert into tcw_hashtags(link_num, hashtag)  ',
'       values(p_link_num, l_vc_hashtags(i)); ',
'     exception ',
'       when dup_val_on_index then ',
'         null; ',
'     end; ',
'  end loop; ',
'end; ',
' ',
'function get_name_part ( ',
'  p_email in varchar2, ',
'  p_prefix in varchar2 default null ',
') return varchar2 ',
'as ',
'  l_name_part varchar2(4000); ',
'begin ',
'  l_name_part := regexp_replace(p_email, ''(.*)@ORACLE.COM'',''\1''); ',
'  if p_prefix is not null then ',
'    l_name_part := p_prefix || l_name_part; ',
'  end if; ',
'  return l_name_part; ',
'end; ',
' ',
'procedure send( ',
'    p_from in varchar2, ',
'    p_body in varchar2, ',
'    p_subj in varchar2) ',
'as ',
'begin ',
'  -- stub for form generation. ',
'  null; ',
'end; ',
' ',
'-- search helper  ',
'procedure initialize_search_items ',
'as ',
'begin ',
'  apex_collection.create_or_truncate_collection( ',
'    p_collection_name => ''SEARCH_WORDS''); ',
'  apex_collection.create_or_truncate_collection( ',
'    p_collection_name => ''SEARCH_HASHTAGS''); ',
'  apex_collection.create_or_truncate_collection( ',
'    p_collection_name => ''SEARCH_OWNERS''); ',
'end; ',
' ',
'procedure remove_search_items( ',
'  p_search_items in varchar2) ',
'as ',
'  l_words      APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_hashtags   APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_owners     APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'begin ',
'  tcw_util.extract_search_items ( ',
'      p_string        => p_search_items, ',
'      p_item_words    => l_words, ',
'      p_item_hashtags => l_hashtags, ',
'      p_item_owners   => l_owners); ',
'  for i in 1..l_words.count loop ',
'    apex_collection.delete_members(p_collection_name => ''SEARCH_WORDS'', ',
'                                   p_attr_number => 1, ',
'                                   p_attr_value => l_words(i)); ',
'  end loop; ',
'  for i in 1..l_hashtags.count loop ',
'    apex_collection.delete_members(p_collection_name => ''SEARCH_HASHTAGS'', ',
'                                   p_attr_number => 1, ',
'                                   p_attr_value => l_hashtags(i)); ',
'  end loop; ',
'  for i in 1..l_owners.count loop ',
'    apex_collection.delete_members(p_collection_name => ''SEARCH_OWNERS'', ',
'                                   p_attr_number => 1, ',
'                                   p_attr_value => l_owners(i)); ',
'  end loop; ',
'end; ',
' ',
'procedure add_search_items( ',
'  p_search_items  in varchar2, ',
'  p_username      in varchar2 default null, ',
'  p_need_unescape in varchar2 default ''N'') ',
'as ',
'  l_search_items varchar2(4000); ',
'  l_words      APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_hashtags   APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_owners     APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_querytime  timestamp with local time zone := systimestamp; ',
'begin ',
'  if p_need_unescape <> ''N'' then ',
'    l_search_items := utl_url.unescape(url => p_search_items, url_charset => ''UTF-8''); ',
'  else ',
'    l_search_items := p_search_items; ',
'  end if; ',
'  tcw_util.extract_search_items ( ',
'      p_string        => l_search_items, ',
'      p_item_words    => l_words, ',
'      p_item_hashtags => l_hashtags, ',
'      p_item_owners   => l_owners); ',
'  if l_words.count > 0 then ',
'    if p_username is not null then ',
'      tcw_util.log_query_history(l_words, p_username, l_querytime, ''K''); ',
'    end if; ',
'    apex_collection.add_members(p_collection_name => ''SEARCH_WORDS'',  ',
'                                p_c001 => l_words); ',
'  end if; ',
'  if l_hashtags.count > 0 then ',
'    if p_username is not null then ',
'      tcw_util.log_query_history(l_hashtags, p_username, l_querytime, ''H''); ',
'    end if; ',
'    apex_collection.add_members(p_collection_name => ''SEARCH_HASHTAGS'', ',
'                                p_c001 => l_hashtags); ',
'  end if; ',
'  if l_owners.count > 0 then ',
'    if p_username is not null then ',
'      tcw_util.log_query_history(l_owners, p_username, l_querytime, ''P''); ',
'    end if; ',
'    apex_collection.add_members(p_collection_name => ''SEARCH_OWNERS'', ',
'                                p_c001 => l_owners); ',
'  end if; ',
'end; ',
' ',
'function get_contains return varchar2 ',
'as ',
'  l_token        apex_collections.c001%type; ',
'  l_contains     varchar2(2000); ',
'begin ',
'  -- Words ',
'  l_contains := ''''; ',
'  if apex_collection.collection_exists(''SEARCH_WORDS'') then ',
'    for c in (select distinct c001 from apex_collections where  ',
'              collection_name = ''SEARCH_WORDS'') ',
'    loop ',
'      l_token := c.c001; ',
'      -- escape Oracle Text reserved word. ',
'      if upper(l_token) in (''ABOUT'',''ACCUM'',''AND'',''BT'',''BTG'',''BTI'',''BTP'', ',
'                            ''EQUIV'',''FUZZY'',''HASPATH'',''INPATH'',''MDATA'', ',
'                            ''MINUS'',''NEAR'',''NOT'',''NT'',''NTG'',''NTI'',''NTP'',''OR'', ',
'                            ''PT'',''RT'',''SQE'',''SYN'',''TR'',''TRSYN'',''TT'',''WITHIN'',''--'') ',
'      then ',
'        l_token := ''{''||l_token||''}''; ',
'      end if; ',
'      -- do not add "and" when it is on the first place. ',
'      if length(l_contains) > 0 then ',
'        l_contains := l_contains || '' and '' || l_token; ',
'      else ',
'        l_contains := l_token; ',
'      end if; ',
'    end loop; ',
'  end if; ',
'  return l_contains; ',
'end; ',
' ',
'procedure set_preference( ',
'  p_preference_name  in varchar2, ',
'  p_preference_value in varchar2, ',
'  p_user_name in varchar2 default v(''APP_USER'')) ',
'as ',
'begin ',
'  merge into tcw_user_preferences ',
'  using dual ',
'  on ( user_name = p_user_name and preference_name = p_preference_name ) ',
'when matched then ',
'  update set preference_value = p_preference_value ',
'when not matched then ',
'  insert (preference_name, preference_value, user_name) ',
'  values(p_preference_name, p_preference_value, p_user_name); ',
'end; ',
' ',
'function get_preference( ',
'   p_preference_name in varchar2, ',
'   p_default         in varchar2 default null, ',
'   p_user_name       in varchar2 default v(''APP_USER'') ',
') return varchar2 ',
'is ',
'  l_v tcw_user_preferences.preference_value%type; ',
'begin ',
'  select preference_value into l_v ',
'  from tcw_user_preferences ',
'  where user_name = p_user_name and preference_name = p_preference_name; ',
'  return l_v; ',
'exception ',
'  when no_data_found then ',
'    return p_default; ',
'end; ',
' ',
'end "TCW_UTIL"; ',
'/',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5094061798074277)
,p_script_id=>wwv_flow_api.id(5093903553074276)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'TCW_UTIL'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180757','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180757','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_etp_util
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5094418994077040)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'etp_util'
,p_sequence=>80
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE "ETP_UTIL" as',
'-- place_holder and value to replace it',
'type t_substitutes is table of varchar2(800)',
'  index by varchar2(80);',
'procedure notify_update(p_doc_id number,',
'                 p_template in varchar2 default ''EMAILUPDATE'',',
'                 p_user     in varchar2 default v(''APP_USER''));',
'',
'function  htmltotext(p_html varchar2) return varchar2;',
'end;',
'/',
'',
'',
'CREATE OR REPLACE PACKAGE BODY "ETP_UTIL" is ',
' ',
'procedure notify_update(p_doc_id   in number, ',
'                 p_template in varchar2 default ''EMAILUPDATE'', ',
'                 p_user     in varchar2 default v(''APP_USER'')) ',
'as ',
'  l_subject    etp_templates.subject%type; ',
'  l_body_text  etp_templates.body_text%type; ',
'  l_body_html  etp_templates.body_html%type; ',
'  l_title      tcw_documents.obj_name%type; ',
'  l_link       varchar2(200); ',
'  l_from       varchar2(80) := ''Document Updates <noreply@dummy.com>''; ',
'begin ',
'  begin ',
'    select subject, body_text, body_html into l_subject, l_body_text, l_body_html ',
'    from etp_templates where etp_id = p_template; ',
'  exception ',
'    when no_data_found then ',
'       -- no template found. do nothing. ',
'       return; ',
'  end; ',
'  select obj_name into l_title from tcw_documents where link_num = p_doc_id; ',
'  if l_title is not null then ',
'    l_subject   := replace(l_subject,   ''#TITLE#'', l_title); ',
'    l_body_text := replace(l_body_text, ''#TITLE#'', l_title); ',
'    l_body_html := replace(l_body_html, ''#TITLE#'', l_title); ',
'  end if; ',
'  l_link := ''THIS_PATH_MUST_BE_UPDATE/'' || p_doc_id; ',
'  if l_link is not null then ',
'    l_subject   := replace(l_subject,   ''#LINK#'', l_link); ',
'    l_body_text := replace(l_body_text, ''#LINK#'', l_link); ',
'    l_body_html := replace(l_body_html, ''#LINK#'', l_link); ',
'  end if;   ',
'  if p_user is not null then ',
'    l_subject   := replace(l_subject,   ''#USER#'', p_user); ',
'    l_body_text := replace(l_body_text, ''#USER#'', p_user); ',
'    l_body_html := replace(l_body_html, ''#USER#'', p_user); ',
'  end if; ',
'  -- dbms_output.put_line(l_subject); ',
'  -- document and user followed ',
'  for c in (select lower(username) as email from tcw_doc_notifications  ',
'            where link_num = p_doc_id and notify_update = ''Y'' ',
'            union ',
'            select lower(follower) as email from tcw_followers ',
'            where username = p_user ',
'            ) ',
'  loop ',
'    -- do not ignore the self notification for debugging at this moment. ',
'    -- if c.email <> lower(p_user) then ',
'      apex_mail.send( ',
'        p_to => c.email, p_from => l_from, ',
'        p_body => l_body_text, p_body_html => l_body_html, p_subj => l_subject); ',
'    -- end if; ',
'  end loop; ',
'end; ',
' ',
'function  htmltotext(p_html varchar2) return varchar2 ',
'is ',
'  l_text varchar2(4000); ',
'begin ',
'  l_text := replace(p_html, CHR(10)); ',
'  l_text := replace(l_text, CHR(13)); ',
'  l_text := regexp_replace(l_text, ''&amp;'', ''&'',1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''&nbsp;'', '' '',1,0,''ix''); ',
'  -- ',
'  l_text := regexp_replace(l_text, ''</?br\s*/?\s*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''<hr\s*/?\s*>'',CHR(10)||CHR(13)||''-------------------''||CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?pre\s*/?\s*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?div[^>]*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?span[^>]*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?strong\.*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?p\s*/?\s*>'' ,CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?ul\s*/?\s*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?ol\s*/?\s*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''<li\s*>'',''  - '',1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</li\s*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''<h[1234]\s*>'',''* '',1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</h[1234]\s*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?table[^>]*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?thead\.*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</?tbody\.*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''<tr[^>]*>'','''',1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</tr\s*>'','' |'' ||CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''<th[^>]*>'','''',1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</th\s*>'','' |'' ||CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''<td[^>]*>'',''| '',1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</td\s*>'','' '',1,0,''ix''); ',
'  l_text := regexp_replace(l_text,''<a\s+href="([^"]*)"[^>]*>([^<]*)</a>'',''\2[\1]'',1,0,''ix''); ',
'  l_text := regexp_replace(l_text,''<a\s+class="[^"]*"\s+href="([^"]*)"[^>]*>([^<]*)</a>'',''\2[\1]'',1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''<p\s+[^>]*>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''</p>'',CHR(10)||CHR(13),1,0,''ix''); ',
'  l_text := regexp_replace(l_text, ''<\![^>]*>'','''',1,0,''ix''); ',
'  return l_text; ',
'end; ',
' ',
'end "ETP_UTIL"; ',
'/',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(5094563279077041)
,p_script_id=>wwv_flow_api.id(5094418994077040)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'ETP_UTIL'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20190828180825','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20190828180825','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_content_types
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5094803243082995)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'content_types'
,p_sequence=>90
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-msexcel'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.visio'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/.pdf'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/ppt_'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/csv'',''CSV'',''CSV\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-gzip-compressed'',''GZIP'',''GZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/pjpeg'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/rtf'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.openxmlformats-officedocument.presentationml.presentation'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/download'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/octet-stream-dummy'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/msexcel'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-download'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-tar'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''video/quicktime'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/gif'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/java-archive'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-lzh'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/msexcell'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-lha'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/octet_stream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.ms-powerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/octet-stream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.openxmlformats-officedocument.wordprocessingml.document'',''DOC'',''MS Word \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/plain'',''TEXT'',''\30C6\30AD\30B9\30C8\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/html'',''HTML'',''HTML\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-mspowerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/ms-powerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''unknown/data'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-gzip'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''base64'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-lhacalzh'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-sdlc'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/bmp'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/xml'',''XML'',''XML\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-excel.csv'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-msdos-program'',''EXE'',''\5B9F\884C\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-octetstream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/exe'',''EXE'',''\5B9F\884C\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''binary/octet-stream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/zip'',''ZIP'',''ZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/microsoft'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-winzip'',''ZIP'',''ZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/kswps'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/force-download'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-compress'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-sh'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/richtext'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/png'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''applicatioin/vnd.ms-excel'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/pptx'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/msword'',''DOC'',''MS Word \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.openxmlformats-officedocument.presentationml.document'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-msdownload'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/powerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.ms-excel'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-compressed'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/wps-office.pptx'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-zip'',''ZIP'',''ZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''txt'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-csv'',''CSV'',''CSV\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''video/x-ms-wmv'',''WMV'',''Windows\30E1\30C7\30A3\30A2\30D3\30C7\30AA'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/pdf'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/mspowerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-ibm hpb.webartfile'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/unknown'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/soffice'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-dis.document'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''appication/pdf'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-zip-compressed'',''ZIP'',''ZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-perl'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.rn-realmedia'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-as400attachment'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-zip-compress'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''video/mp4'',''MP4'',''MP4\30D3\30C7\30AA'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''video/mpeg'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/ppt'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''message/rfc822'',''MIL'',''\30E1\30FC\30EB\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-msword-doc'',''DOC'',''MS Word \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-pdf'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/octetstream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.ms-excel; name="\30B7\30B9\30C6\30E0\30EA\30B9\30C8\6700\65B0.xls"'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/3dr'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/acrobat'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/jpeg'',''JPEG'',''JPEG\753B\50CF\30D5\30A1\30A4\30EB'');'),
'commit;'))
);
end;
/
prompt --application/deployment/install/install_link_types
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5094988530089045)
,p_install_id=>wwv_flow_api.id(8519558440754230)
,p_name=>'link_types'
,p_sequence=>100
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into tcw_link_types(link_type_id, link_type_name, created_by, creation_date, last_updated_by, last_update_date) ',
'values(10, ''Link'', ''ADMIN'', systimestamp, ''ADMIN'', systimestamp);'))
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
