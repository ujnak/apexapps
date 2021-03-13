prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_200200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>13619115512417053838
,p_default_application_id=>51127
,p_default_id_offset=>0
,p_default_owner=>'DBCLOUD_TEST'
);
end;
/
 
prompt APPLICATION 51127 - XLIFFの翻訳
--
-- Application Export:
--   Application:     51127
--   Name:            XLIFFの翻訳
--   Date and Time:   01:46 土曜日 3月 13, 2021
--   Exported By:     YUJI.NAKAKOSHI@ORACLE.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      7
--       Items:                   14
--       Processes:               12
--       Regions:                 12
--       Buttons:                 12
--       Dynamic Actions:          4
--     Shared Components:
--       Logic:
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:              3
--       Security:
--         Authentication:         2
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              16
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              11
--         LOVs:                   1
--         Shortcuts:              1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         20.2.0.00.20
--   Instance ID:     63113759365424
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DBCLOUD_TEST')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('XLIFF\306E\7FFB\8A33'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TRANSLATE-XLIFF')
,p_application_group=>28214209594348208579
,p_application_group_name=>unistr('\30D6\30ED\30B0')
,p_application_group_comment=>'http://apexugj.blogspot.com/'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'CB29C0752770D85BC4256CB7AA7AFDB7196B4114693836AD3112F97F5AB265C8'
,p_bookmark_checksum_function=>'SH512'
,p_accept_old_checksums=>false
,p_compatibility_mode=>'19.2'
,p_flow_language=>'ja'
,p_flow_language_derived_from=>'SESSION'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('XLIFF\30D5\30A1\30A4\30EB\306E\7C21\6613\7FFB\8A33\30A2\30D7\30EA\3092\4F5C\6210\3059\308B'),
'http://apexugj.blogspot.com/2020/09/xliff-translate-app.html'))
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(3625195926539996717)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>unistr('XLIFF\306E\7FFB\8A33')
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
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
,p_substitution_value_01=>unistr('XLIFF\306E\7FFB\8A33')
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20210105003407'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・メニュー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(41102238255566561143)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30E1\30CB\30E5\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41102388275952561311)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30DB\30FC\30E0')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41102389739616561314)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Xliff Files'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41102407522830561381)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Messages'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・バー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(41102376424505561263)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30D0\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41102447235879561483)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41102447780089561483)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(41102447235879561483)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41102448134661561484)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\30B5\30A4\30F3\30A2\30A6\30C8')
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(41102447235879561483)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/ページ・ナビゲーション
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(41102445754385561481)
,p_name=>unistr('\30DA\30FC\30B8\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41102446159764561482)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Xliff Files'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41102446531075561482)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Messages'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_api.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222345443831334522202F3E3C67206F7061636974793D222E32223E3C7061746820643D224D333220323661322E3520322E3520302031203020322E3520322E3541322E35303320322E3530332030';
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
 p_id=>wwv_flow_api.id(41102377784448561273)
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
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234544383133453B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(41102378000005561275)
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
 p_id=>wwv_flow_api.id(17782874896560669)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(41102235342731561137)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(41102235697482561137)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(41102235918956561138)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(41102236258839561138)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(41102236558625561138)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(41102236853289561138)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(41102237169673561138)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/管理権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(41102379348105561277)
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
 p_id=>wwv_flow_api.id(41102383334021561302)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(41102383334021561302)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(41102383780759561303)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(41102379997660561279)
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
 p_id=>wwv_flow_api.id(41102237766815561142)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41102237960359561143)
,p_short_name=>unistr('\30DB\30FC\30E0')
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41102394569073561325)
,p_short_name=>'Xliff Files'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41102411543260561387)
,p_short_name=>'Messages'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
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
 p_id=>wwv_flow_api.id(41102238551342561144)
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
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102238833261561145)
,p_page_template_id=>wwv_flow_api.id(41102238551342561144)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102239130683561146)
,p_page_template_id=>wwv_flow_api.id(41102238551342561144)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102239492651561146)
,p_page_template_id=>wwv_flow_api.id(41102238551342561144)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102239725408561146)
,p_page_template_id=>wwv_flow_api.id(41102238551342561144)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102240066285561146)
,p_page_template_id=>wwv_flow_api.id(41102238551342561144)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102240369989561146)
,p_page_template_id=>wwv_flow_api.id(41102238551342561144)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102240694953561146)
,p_page_template_id=>wwv_flow_api.id(41102238551342561144)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102240976978561147)
,p_page_template_id=>wwv_flow_api.id(41102238551342561144)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(41102241392486561148)
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
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102241631083561148)
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102241908785561148)
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102242265430561148)
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102242515806561149)
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102242801221561149)
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102243185948561149)
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102243443696561149)
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102243785233561149)
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102244066938561149)
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(41102244459626561150)
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
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102244709646561150)
,p_page_template_id=>wwv_flow_api.id(41102244459626561150)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102245012329561150)
,p_page_template_id=>wwv_flow_api.id(41102244459626561150)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102245341404561150)
,p_page_template_id=>wwv_flow_api.id(41102244459626561150)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(41102246712592561152)
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
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102247065611561152)
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102247330173561152)
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102247602884561153)
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102247982872561153)
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102248281697561153)
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102248595254561153)
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102248826421561153)
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102249151173561154)
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102249433249561154)
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(41102249882675561154)
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
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102250193172561154)
,p_page_template_id=>wwv_flow_api.id(41102249882675561154)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102250447917561155)
,p_page_template_id=>wwv_flow_api.id(41102249882675561154)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102250715017561155)
,p_page_template_id=>wwv_flow_api.id(41102249882675561154)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102251057534561155)
,p_page_template_id=>wwv_flow_api.id(41102249882675561154)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102251373298561155)
,p_page_template_id=>wwv_flow_api.id(41102249882675561154)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102251623239561155)
,p_page_template_id=>wwv_flow_api.id(41102249882675561154)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102251941939561156)
,p_page_template_id=>wwv_flow_api.id(41102249882675561154)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(41102252345563561156)
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
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102252668607561156)
,p_page_template_id=>wwv_flow_api.id(41102252345563561156)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102252971614561156)
,p_page_template_id=>wwv_flow_api.id(41102252345563561156)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102253263149561156)
,p_page_template_id=>wwv_flow_api.id(41102252345563561156)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(41102253886706561157)
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
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102254192810561157)
,p_page_template_id=>wwv_flow_api.id(41102253886706561157)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102254415658561158)
,p_page_template_id=>wwv_flow_api.id(41102253886706561157)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102254793276561158)
,p_page_template_id=>wwv_flow_api.id(41102253886706561157)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102255010113561158)
,p_page_template_id=>wwv_flow_api.id(41102253886706561157)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102255382622561158)
,p_page_template_id=>wwv_flow_api.id(41102253886706561157)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102255653703561158)
,p_page_template_id=>wwv_flow_api.id(41102253886706561157)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102255969083561158)
,p_page_template_id=>wwv_flow_api.id(41102253886706561157)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102256254609561159)
,p_page_template_id=>wwv_flow_api.id(41102253886706561157)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(41102256678269561159)
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
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102256994673561159)
,p_page_template_id=>wwv_flow_api.id(41102256678269561159)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102257235806561160)
,p_page_template_id=>wwv_flow_api.id(41102256678269561159)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102257579688561160)
,p_page_template_id=>wwv_flow_api.id(41102256678269561159)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102257811615561160)
,p_page_template_id=>wwv_flow_api.id(41102256678269561159)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102258131942561160)
,p_page_template_id=>wwv_flow_api.id(41102256678269561159)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102258416725561160)
,p_page_template_id=>wwv_flow_api.id(41102256678269561159)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102258753124561161)
,p_page_template_id=>wwv_flow_api.id(41102256678269561159)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(41102259126171561161)
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
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102259441939561162)
,p_page_template_id=>wwv_flow_api.id(41102259126171561161)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102259738799561162)
,p_page_template_id=>wwv_flow_api.id(41102259126171561161)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102260042067561162)
,p_page_template_id=>wwv_flow_api.id(41102259126171561161)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(41102353517291561234)
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
 p_id=>wwv_flow_api.id(41102354257801561235)
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
 p_id=>wwv_flow_api.id(41102354317976561235)
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
 p_id=>wwv_flow_api.id(41102260660038561162)
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
 p_id=>wwv_flow_api.id(41102260909540561164)
,p_plug_template_id=>wwv_flow_api.id(41102260660038561162)
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
 p_id=>wwv_flow_api.id(41102264476543561166)
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
 p_id=>wwv_flow_api.id(41102264659490561167)
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
 p_id=>wwv_flow_api.id(41102264994877561167)
,p_plug_template_id=>wwv_flow_api.id(41102264659490561167)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102265244612561167)
,p_plug_template_id=>wwv_flow_api.id(41102264659490561167)
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
 p_id=>wwv_flow_api.id(41102265419362561167)
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
 p_id=>wwv_flow_api.id(41102265734802561167)
,p_plug_template_id=>wwv_flow_api.id(41102265419362561167)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102266066151561167)
,p_plug_template_id=>wwv_flow_api.id(41102265419362561167)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(41102267607035561169)
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
 p_id=>wwv_flow_api.id(41102267909786561169)
,p_plug_template_id=>wwv_flow_api.id(41102267607035561169)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102268262320561169)
,p_plug_template_id=>wwv_flow_api.id(41102267607035561169)
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
 p_id=>wwv_flow_api.id(41102274858800561174)
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
 p_id=>wwv_flow_api.id(41102275152182561174)
,p_plug_template_id=>wwv_flow_api.id(41102274858800561174)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102275449329561175)
,p_plug_template_id=>wwv_flow_api.id(41102274858800561174)
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
 p_id=>wwv_flow_api.id(41102280259385561178)
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
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(41102282266294561179)
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
 p_id=>wwv_flow_api.id(41102282511373561179)
,p_plug_template_id=>wwv_flow_api.id(41102282266294561179)
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
 p_id=>wwv_flow_api.id(41102284337046561181)
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
 p_id=>wwv_flow_api.id(41102284675997561181)
,p_plug_template_id=>wwv_flow_api.id(41102284337046561181)
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
 p_id=>wwv_flow_api.id(41102286679882561182)
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
 p_id=>wwv_flow_api.id(41102286948882561182)
,p_plug_template_id=>wwv_flow_api.id(41102286679882561182)
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
 p_id=>wwv_flow_api.id(41102289980310561184)
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
 p_id=>wwv_flow_api.id(41102290582085561185)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
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
 p_id=>wwv_flow_api.id(41102290868035561185)
,p_plug_template_id=>wwv_flow_api.id(41102290582085561185)
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
 p_id=>wwv_flow_api.id(41102291872846561186)
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
 p_id=>wwv_flow_api.id(41102292176790561186)
,p_plug_template_id=>wwv_flow_api.id(41102291872846561186)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102292478643561186)
,p_plug_template_id=>wwv_flow_api.id(41102291872846561186)
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
 p_id=>wwv_flow_api.id(41102298681610561192)
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
 p_id=>wwv_flow_api.id(41102298968012561192)
,p_plug_template_id=>wwv_flow_api.id(41102298681610561192)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(41102299257088561192)
,p_plug_template_id=>wwv_flow_api.id(41102298681610561192)
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
 p_id=>wwv_flow_api.id(41102301279973561194)
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
 p_id=>wwv_flow_api.id(41102302294829561194)
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
 p_id=>wwv_flow_api.id(41102302583584561195)
,p_plug_template_id=>wwv_flow_api.id(41102302294829561194)
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
 p_id=>wwv_flow_api.id(41102327809479561213)
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
 p_id=>wwv_flow_api.id(41102331885384561216)
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
 p_id=>wwv_flow_api.id(41102337490575561220)
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
 p_id=>wwv_flow_api.id(41102339084650561221)
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
 p_id=>wwv_flow_api.id(41102341833020561224)
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
 p_id=>wwv_flow_api.id(41102342816208561225)
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
 p_id=>wwv_flow_api.id(41102343400388561225)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
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
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(41102343820777561226)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
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
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(41102345498445561227)
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
 p_id=>wwv_flow_api.id(41102347093786561229)
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
,p_a05_label=>'Shortcut'
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
 p_id=>wwv_flow_api.id(41102348835889561230)
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
 p_id=>wwv_flow_api.id(41102349818915561231)
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
 p_id=>wwv_flow_api.id(41102351407435561232)
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
 p_id=>wwv_flow_api.id(41102303688705561195)
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
 p_id=>wwv_flow_api.id(41102303993899561196)
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
 p_id=>wwv_flow_api.id(41102307961535561198)
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
 p_id=>wwv_flow_api.id(41102313308472561202)
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
 p_id=>wwv_flow_api.id(41102314563331561203)
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
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(41102317763520561205)
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
 p_id=>wwv_flow_api.id(41102320747395561208)
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
 p_id=>wwv_flow_api.id(41102320954482561208)
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
 p_id=>wwv_flow_api.id(41102320954482561208)
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
 p_id=>wwv_flow_api.id(41102323572228561210)
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
 p_id=>wwv_flow_api.id(41102323907759561210)
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
 p_id=>wwv_flow_api.id(41102325961169561211)
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
 p_id=>wwv_flow_api.id(41102352855381561233)
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
 p_id=>wwv_flow_api.id(41102352918183561233)
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
 p_id=>wwv_flow_api.id(41102353017372561234)
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
 p_id=>wwv_flow_api.id(41102353123873561234)
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
 p_id=>wwv_flow_api.id(41102353299743561234)
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
 p_id=>wwv_flow_api.id(41102353361706561234)
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
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(41102353487754561234)
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
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(41102355603049561236)
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
 p_id=>wwv_flow_api.id(41102355852902561239)
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
 p_id=>wwv_flow_api.id(41102355739487561237)
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
 p_id=>wwv_flow_api.id(41102357079925561242)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(41102256678269561159)
,p_default_dialog_template=>wwv_flow_api.id(41102252345563561156)
,p_error_template=>wwv_flow_api.id(41102244459626561150)
,p_printer_friendly_template=>wwv_flow_api.id(41102256678269561159)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(41102244459626561150)
,p_default_button_template=>wwv_flow_api.id(41102354257801561235)
,p_default_region_template=>wwv_flow_api.id(41102291872846561186)
,p_default_chart_template=>wwv_flow_api.id(41102291872846561186)
,p_default_form_template=>wwv_flow_api.id(41102291872846561186)
,p_default_reportr_template=>wwv_flow_api.id(41102291872846561186)
,p_default_tabform_template=>wwv_flow_api.id(41102291872846561186)
,p_default_wizard_template=>wwv_flow_api.id(41102291872846561186)
,p_default_menur_template=>wwv_flow_api.id(41102301279973561194)
,p_default_listr_template=>wwv_flow_api.id(41102291872846561186)
,p_default_irr_template=>wwv_flow_api.id(41102289980310561184)
,p_default_report_template=>wwv_flow_api.id(41102320954482561208)
,p_default_label_template=>wwv_flow_api.id(41102353123873561234)
,p_default_menu_template=>wwv_flow_api.id(41102355603049561236)
,p_default_calendar_template=>wwv_flow_api.id(41102355739487561237)
,p_default_list_template=>wwv_flow_api.id(41102337490575561220)
,p_default_nav_list_template=>wwv_flow_api.id(41102348835889561230)
,p_default_top_nav_list_temp=>wwv_flow_api.id(41102348835889561230)
,p_default_side_nav_list_temp=>wwv_flow_api.id(41102343820777561226)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(41102265419362561167)
,p_default_dialogr_template=>wwv_flow_api.id(41102264476543561166)
,p_default_option_label=>wwv_flow_api.id(41102353123873561234)
,p_default_required_label=>wwv_flow_api.id(41102353487754561234)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(41102343400388561225)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.5/')
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
 p_id=>wwv_flow_api.id(41102356042136561239)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(41102356213644561240)
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
 p_id=>wwv_flow_api.id(41102356408948561240)
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
 p_id=>wwv_flow_api.id(41102356612694561240)
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
 p_id=>wwv_flow_api.id(41102356852089561240)
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
 p_id=>wwv_flow_api.id(41102245657271561151)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102246451112561151)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102261285133561164)
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
 p_id=>wwv_flow_api.id(41102261840847561165)
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
 p_id=>wwv_flow_api.id(41102262220951561165)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102262832124561165)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102266353785561168)
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
 p_id=>wwv_flow_api.id(41102266781821561168)
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
 p_id=>wwv_flow_api.id(41102268572002561170)
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
 p_id=>wwv_flow_api.id(41102269513500561170)
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
 p_id=>wwv_flow_api.id(41102270960773561171)
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
 p_id=>wwv_flow_api.id(41102272157984561172)
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
 p_id=>wwv_flow_api.id(41102272786390561173)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102273108152561173)
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
 p_id=>wwv_flow_api.id(41102276555148561175)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102278384140561176)
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
 p_id=>wwv_flow_api.id(41102278974728561177)
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
 p_id=>wwv_flow_api.id(41102280555450561178)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102281311905561178)
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
 p_id=>wwv_flow_api.id(41102283253883561180)
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
 p_id=>wwv_flow_api.id(41102283604527561180)
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
 p_id=>wwv_flow_api.id(41102285166829561181)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102288677688561183)
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
 p_id=>wwv_flow_api.id(41102291198328561185)
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
 p_id=>wwv_flow_api.id(41102299701046561193)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102300117152561193)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102300543163561193)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102302910772561195)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102304286876561196)
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
 p_id=>wwv_flow_api.id(41102304636092561196)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102306456126561197)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102308854021561199)
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
 p_id=>wwv_flow_api.id(41102310026702561200)
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
 p_id=>wwv_flow_api.id(41102310805422561201)
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
 p_id=>wwv_flow_api.id(41102312450385561202)
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
 p_id=>wwv_flow_api.id(41102313671039561202)
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
 p_id=>wwv_flow_api.id(41102314803003561203)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102315244637561204)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102315695811561204)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102316077404561204)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102316489996561205)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102316833316561205)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102317249400561205)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102319465298561207)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102321209682561208)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102321683543561208)
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
 p_id=>wwv_flow_api.id(41102322458003561209)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102324204515561210)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102328139044561214)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102328571224561214)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102330343171561215)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102332757953561217)
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
 p_id=>wwv_flow_api.id(41102333970497561218)
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
 p_id=>wwv_flow_api.id(41102334766038561218)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102336321762561219)
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
 p_id=>wwv_flow_api.id(41102338531056561221)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102340795341561223)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102344363276561227)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102350136786561231)
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
 p_id=>wwv_flow_api.id(41102350527305561231)
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
 p_id=>wwv_flow_api.id(41102351961289561233)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102353746208561235)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102354997281561235)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102357283389561249)
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
 p_id=>wwv_flow_api.id(41102357681593561249)
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
 p_id=>wwv_flow_api.id(41102359217483561250)
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
 p_id=>wwv_flow_api.id(41102359613641561250)
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
 p_id=>wwv_flow_api.id(41102361209003561251)
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
 p_id=>wwv_flow_api.id(41102361699813561252)
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
 p_id=>wwv_flow_api.id(41102363283146561253)
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
 p_id=>wwv_flow_api.id(41102363613092561253)
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
 p_id=>wwv_flow_api.id(41102365202255561254)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102365664507561254)
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
 p_id=>wwv_flow_api.id(41102366052153561255)
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
 p_id=>wwv_flow_api.id(41102366415887561255)
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
 p_id=>wwv_flow_api.id(41102366844868561255)
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
 p_id=>wwv_flow_api.id(41102367274844561255)
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
 p_id=>wwv_flow_api.id(41102367697594561256)
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
 p_id=>wwv_flow_api.id(41102369071473561257)
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
 p_id=>wwv_flow_api.id(41102370463727561257)
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
 p_id=>wwv_flow_api.id(41102371422875561258)
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
 p_id=>wwv_flow_api.id(41102371855038561259)
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
 p_id=>wwv_flow_api.id(41102372287556561259)
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
 p_id=>wwv_flow_api.id(41102372673693561259)
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
 p_id=>wwv_flow_api.id(41102373214676561260)
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
 p_id=>wwv_flow_api.id(41102373831900561260)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(41102374274561561261)
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
 p_id=>wwv_flow_api.id(41102374646116561261)
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
 p_id=>wwv_flow_api.id(41102375074427561261)
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
 p_id=>wwv_flow_api.id(41102375843204561262)
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
 p_id=>wwv_flow_api.id(41102241212864561148)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(41102238551342561144)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102244354693561150)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(41102241392486561148)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102245886656561151)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(41102244459626561150)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(41102245657271561151)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102246022781561151)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(41102244459626561150)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(41102245657271561151)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102246215823561151)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_api.id(41102244459626561150)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(41102245657271561151)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102246672496561152)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(41102244459626561150)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(41102246451112561151)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102249721982561154)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(41102246712592561152)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102252299690561156)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(41102249882675561154)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102253586660561157)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(41102252345563561156)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102253708117561157)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(41102252345563561156)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102256563995561159)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(41102253886706561157)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102259032867561161)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(41102256678269561159)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102260303252561162)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(41102259126171561161)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102260506787561162)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(41102259126171561161)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102261450933561164)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(41102261285133561164)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102261674401561164)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102262021226561165)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(41102261840847561165)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102262450138561165)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(41102262220951561165)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102262693580561165)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(41102261840847561165)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102263091689561165)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(41102262832124561165)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102263271768561165)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(41102262220951561165)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102263478806561166)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(41102261840847561165)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102263616636561166)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(41102261285133561164)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102263998736561166)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(41102262220951561165)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102264114926561166)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(41102262220951561165)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102264360983561166)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102260660038561162)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(41102262832124561165)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102266545225561168)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102265419362561167)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102266933118561168)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(41102265419362561167)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(41102266781821561168)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102267160937561168)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(41102265419362561167)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102267377812561168)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(41102265419362561167)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(41102266781821561168)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102267532692561169)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102265419362561167)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102268775278561170)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102268975381561170)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102269153751561170)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102269341370561170)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102269721522561170)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(41102269513500561170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102269991783561171)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(41102269513500561170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102270187724561171)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(41102269513500561170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102270399809561171)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(41102269513500561170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102270599483561171)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102270775216561171)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102271134703561172)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102271311118561172)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102271506328561172)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102271719801561172)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102271974520561172)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102272396938561172)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(41102272157984561172)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102272501697561173)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(41102272157984561172)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102272973230561173)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(41102272786390561173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102273350390561173)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(41102273108152561173)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102273520303561173)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102273782069561174)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102273981445561174)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(41102273108152561173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102274167762561174)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(41102272786390561173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102274361924561174)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102274548669561174)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102274743895561174)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102267607035561169)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102275717651561175)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102275960202561175)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102276101341561175)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102276342029561175)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102276784601561175)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(41102276555148561175)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102276903500561175)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(41102276555148561175)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102277187227561176)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102277372471561176)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102277534454561176)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102277742990561176)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102277915615561176)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102278176745561176)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102278586507561177)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(41102278384140561176)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102278716388561177)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(41102272786390561173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102279179487561177)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(41102278974728561177)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102279338354561177)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102279509664561177)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102279783335561177)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102279980153561177)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(41102272786390561173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102280172800561178)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102274858800561174)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102280782931561178)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102280259385561178)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(41102280555450561178)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102280959209561178)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102280259385561178)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(41102280555450561178)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102281132871561178)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102280259385561178)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(41102280555450561178)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102281540168561178)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102280259385561178)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(41102281311905561178)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102281778207561179)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102280259385561178)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102281974178561179)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102280259385561178)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(41102281311905561178)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102282115835561179)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102280259385561178)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102282825454561179)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102282266294561179)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102283059030561180)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102282266294561179)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102283431800561180)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102282266294561179)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(41102283253883561180)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102283849025561180)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102282266294561179)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(41102283604527561180)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102284069891561180)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102282266294561179)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(41102283604527561180)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102284290676561180)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102282266294561179)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102284907803561181)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102284337046561181)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102285300751561181)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102284337046561181)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(41102285166829561181)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102285582806561181)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102284337046561181)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(41102285166829561181)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102285746336561182)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102284337046561181)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(41102285166829561181)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102285944078561182)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102284337046561181)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102286171068561182)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102284337046561181)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102286321917561182)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102284337046561181)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102286533482561182)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(41102284337046561181)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102287257779561183)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102287478270561183)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(41102285166829561181)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102287645285561183)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(41102285166829561181)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102287887853561183)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(41102285166829561181)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102288070713561183)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(41102285166829561181)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102288215650561183)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102288438651561183)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102288886844561184)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(41102288677688561183)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102289059648561184)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(41102288677688561183)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102289294962561184)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(41102288677688561183)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102289436748561184)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(41102288677688561183)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102289681113561184)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(41102288677688561183)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102289826994561184)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102286679882561182)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102290267314561185)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102289980310561184)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102290492733561185)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102289980310561184)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102291335780561185)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102290582085561185)
,p_css_classes=>'t-Login-region--headerHidden'
,p_group_id=>wwv_flow_api.id(41102291198328561185)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102291504483561186)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102290582085561185)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(41102291198328561185)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102291743856561186)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102290582085561185)
,p_css_classes=>'t-Login-region--headerTitle'
,p_group_id=>wwv_flow_api.id(41102291198328561185)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102292708329561186)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102292916640561187)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102293108392561187)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102293368855561187)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(41102268572002561170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102293519537561187)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102293756795561187)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102293974350561188)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102294177624561188)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102294332850561188)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102294569452561188)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102294731288561188)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102294955454561188)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102295136284561188)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102295392879561189)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102295514788561189)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102295710840561189)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102295987864561189)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102296104566561189)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102296384547561190)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102296535555561190)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(41102270960773561171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102296724535561190)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(41102272786390561173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102296918650561190)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(41102273108152561173)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102297159233561190)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102297377357561190)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102297532849561191)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102297777616561191)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(41102273108152561173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102297902537561191)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(41102272786390561173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102298128911561192)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102298309524561192)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102298579837561192)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(41102291872846561186)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(41102266353785561168)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102299576009561193)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102298681610561192)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102299951555561193)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102298681610561192)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(41102299701046561193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102300323734561193)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102298681610561192)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(41102300117152561193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102300735892561193)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102298681610561192)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(41102300543163561193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102300993786561193)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102298681610561192)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(41102300543163561193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102301177086561194)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102298681610561192)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(41102300117152561193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102301548453561194)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102301279973561194)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102301786079561194)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102301279973561194)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102301913473561194)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102301279973561194)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(41102280555450561178)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102302197741561194)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(41102301279973561194)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(41102280555450561178)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102303120037561195)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(41102302294829561194)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(41102302910772561195)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102303387137561195)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102302294829561194)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(41102302910772561195)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102303571084561195)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(41102302294829561194)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102304401915561196)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(41102304286876561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102304807028561196)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102305011605561196)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102305210785561196)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102305476572561197)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102305652229561197)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(41102304286876561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102305801078561197)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102306006227561197)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102306223997561197)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102306670929561197)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(41102306456126561197)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102306847166561197)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(41102306456126561197)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102307016462561198)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(41102306456126561197)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102307233487561198)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102307453903561198)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(41102306456126561197)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102307603935561198)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(41102306456126561197)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102307892924561198)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102303993899561196)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102308235122561198)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102308451647561199)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102308665033561199)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102309028604561199)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(41102308854021561199)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102309252531561199)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(41102308854021561199)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102309461526561199)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(41102304286876561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102309672145561200)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102309831721561200)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(41102304286876561196)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102310295382561200)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(41102310026702561200)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102310410445561200)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(41102310026702561200)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102310662442561201)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(41102310026702561200)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102311045626561201)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(41102310805422561201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102311289617561201)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(41102310805422561201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102311468772561201)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102311605291561201)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(41102304286876561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102311865874561201)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(41102304286876561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102312096798561201)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102312218194561202)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(41102310026702561200)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102312628303561202)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(41102312450385561202)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102312815225561202)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(41102312450385561202)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102313052998561202)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102313285285561202)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102307961535561198)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102313881572561203)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102313308472561202)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(41102313671039561202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102314083852561203)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102313308472561202)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(41102313671039561202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102314266193561203)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102313308472561202)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(41102312450385561202)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102314451429561203)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102313308472561202)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(41102312450385561202)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102315020869561203)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(41102314563331561203)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(41102314803003561203)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102315445312561204)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(41102314563331561203)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(41102315244637561204)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102315838305561204)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(41102314563331561203)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(41102315695811561204)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102316204747561204)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102314563331561203)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(41102316077404561204)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102316649634561205)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(41102314563331561203)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(41102316489996561205)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102317094841561205)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102314563331561203)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(41102316833316561205)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102317468683561205)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102314563331561203)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(41102317249400561205)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102317629931561205)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(41102314563331561203)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(41102304286876561196)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102318093789561206)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102318270748561206)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102318465501561206)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102318652954561206)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102318837700561206)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102319019685561206)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(41102312450385561202)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102319216907561206)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(41102312450385561202)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102319692564561207)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(41102319465298561207)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102319816014561207)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102320022813561207)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102320249619561207)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102320476123561207)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102320667548561208)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(41102317763520561205)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102321403697561208)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102320954482561208)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(41102321209682561208)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102321890130561208)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102320954482561208)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(41102321683543561208)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102322014273561209)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(41102320954482561208)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(41102321683543561208)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102322215449561209)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102320954482561208)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(41102321683543561208)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102322697599561209)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102320954482561208)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(41102322458003561209)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102322846198561209)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102320954482561208)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(41102322458003561209)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102323048972561209)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102320954482561208)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(41102321209682561208)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102323258708561209)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102320954482561208)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102323458584561210)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102320954482561208)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(41102321683543561208)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102323886066561210)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(41102323572228561210)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(41102304286876561196)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102324422104561210)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102323907759561210)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102324640417561210)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102323907759561210)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102324846230561211)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102323907759561210)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102325004621561211)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102323907759561210)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102325237088561211)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102323907759561210)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102325436201561211)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(41102323907759561210)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102325662320561211)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(41102323907759561210)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102325812884561211)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(41102323907759561210)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102326258163561212)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(41102325961169561211)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102326432729561212)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102325961169561211)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102326646395561212)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102325961169561211)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102326815341561212)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(41102325961169561211)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102327001897561212)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(41102325961169561211)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(41102304636092561196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102327316288561212)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(41102325961169561211)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102327520150561212)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(41102325961169561211)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102327797898561213)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(41102325961169561211)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(41102324204515561210)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102328325708561214)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102328702276561214)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102328983071561214)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102329150954561214)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102329328932561215)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102329589799561215)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102329752080561215)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102329955484561215)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102330193596561215)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102330561921561215)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(41102330343171561215)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102330745558561215)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(41102330343171561215)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102330972127561216)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(41102330343171561215)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102331132053561216)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102331343847561216)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(41102330343171561215)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102331531050561216)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(41102330343171561215)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102331775702561216)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102327809479561213)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102332120140561216)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102332376786561217)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102332533936561217)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102332915109561217)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(41102332757953561217)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102333102945561217)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(41102332757953561217)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102333356061561217)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102333555971561217)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102333790726561217)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102334178215561218)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(41102333970497561218)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102334391826561218)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(41102333970497561218)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102334553646561218)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(41102333970497561218)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102334975043561218)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(41102334766038561218)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102335197878561218)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(41102334766038561218)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102335316637561219)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102335577497561219)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102335707262561219)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102335935394561219)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102336147009561219)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(41102333970497561218)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102336597678561219)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(41102336321762561219)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102336771372561220)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(41102336321762561219)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102336998441561220)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102337130616561220)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102337398640561220)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102337752349561220)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102337490575561220)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102337934068561220)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102337490575561220)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102338145370561221)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102337490575561220)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102338330350561221)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102337490575561220)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102338765824561221)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102337490575561220)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(41102338531056561221)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102338957277561221)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102337490575561220)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(41102338531056561221)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102339317334561222)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102339595396561222)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102339795458561222)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102339927886561222)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102340189210561223)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102340329448561223)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(41102336321762561219)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102340567718561223)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(41102336321762561219)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102340985867561223)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(41102340795341561223)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102341145017561223)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102341369548561223)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102341590786561223)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102341761207561224)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(41102339084650561221)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102342155977561224)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(41102341833020561224)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102342358495561224)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(41102341833020561224)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102342521952561225)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102341833020561224)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102342755125561225)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102341833020561224)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102343129828561225)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102342816208561225)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102343366662561225)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102342816208561225)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102343741872561226)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102343400388561225)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102344199154561227)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102343820777561226)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102344598162561227)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102343820777561226)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(41102344363276561227)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102344735915561227)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102343820777561226)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(41102344363276561227)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102344949271561227)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102343820777561226)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102345166982561227)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102343820777561226)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102345315943561227)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102343820777561226)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102345756329561228)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(41102345498445561227)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102345931258561228)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102345498445561227)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(41102334766038561218)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102346152283561228)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102345498445561227)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(41102334766038561218)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102346386394561228)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102345498445561227)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(41102340795341561223)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102346577258561228)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102345498445561227)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102346748445561228)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102345498445561227)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(41102328139044561214)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102346989134561229)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(41102345498445561227)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(41102340795341561223)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102347301439561229)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102347093786561229)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102347544472561229)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102347093786561229)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102347718181561230)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102347093786561229)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102347944833561230)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102347093786561229)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102348195836561230)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102347093786561229)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102348314004561230)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(41102347093786561229)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102348557331561230)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(41102347093786561229)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102348798281561230)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(41102347093786561229)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_api.id(41102328571224561214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102349142929561231)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(41102348835889561230)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102349354298561231)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(41102348835889561230)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102349552715561231)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(41102348835889561230)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102349798855561231)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(41102348835889561230)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102350357290561231)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(41102349818915561231)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(41102350136786561231)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102350783357561231)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102349818915561231)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(41102350527305561231)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102350997849561232)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(41102349818915561231)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(41102350136786561231)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102351171379561232)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102349818915561231)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(41102350527305561231)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102351317350561232)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102349818915561231)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(41102350527305561231)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102351797716561232)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(41102351407435561232)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102352124109561233)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(41102351407435561232)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(41102351961289561233)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102352348590561233)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102351407435561232)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(41102351961289561233)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102352560150561233)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(41102351407435561232)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(41102351961289561233)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102352736173561233)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(41102351407435561232)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102353994594561235)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(41102353517291561234)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(41102353746208561235)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102354175655561235)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(41102353517291561234)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(41102353746208561235)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102354589305561235)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(41102354317976561235)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(41102353746208561235)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102354767603561235)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(41102354317976561235)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(41102353746208561235)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102355167091561236)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(41102354317976561235)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(41102354997281561235)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102355364579561236)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(41102354317976561235)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(41102354997281561235)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102355539073561236)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(41102354317976561235)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102357494741561249)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(41102357283389561249)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102357870029561249)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(41102357681593561249)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102358073945561249)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(41102357283389561249)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102358277981561250)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(41102357681593561249)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102358445444561250)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(41102357283389561249)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102358669010561250)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(41102357681593561249)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102358840048561250)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(41102357283389561249)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102359087219561250)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(41102357681593561249)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102359465900561250)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(41102359217483561250)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102359874088561251)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(41102359613641561250)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102360053472561251)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(41102359217483561250)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102360272835561251)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(41102359613641561250)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102360442759561251)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(41102359217483561250)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102360670561561251)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(41102359613641561250)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102360810781561251)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(41102359217483561250)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102361063312561251)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(41102359613641561250)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102361464649561252)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(41102361209003561251)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102361869374561252)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(41102361699813561252)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102362015630561252)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(41102361209003561251)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102362256314561252)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(41102361699813561252)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102362460499561252)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(41102361209003561251)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102362670994561252)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(41102361699813561252)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102362822670561252)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(41102361209003561251)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102363027085561253)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(41102361699813561252)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102363429616561253)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(41102363283146561253)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102363828290561253)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(41102363613092561253)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102364065829561253)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(41102363283146561253)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102364242837561253)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(41102363613092561253)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102364405880561254)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(41102363283146561253)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102364650832561254)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(41102363613092561253)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102364825335561254)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(41102363283146561253)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102365056980561254)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(41102363613092561253)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102365445953561254)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(41102365202255561254)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102365842915561254)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(41102365664507561254)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102366261469561255)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(41102366052153561255)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102366670826561255)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(41102366415887561255)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102367052805561255)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(41102366844868561255)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102367472154561255)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(41102367274844561255)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102367874129561256)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(41102367697594561256)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102368038187561256)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(41102367697594561256)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102368242792561256)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(41102365664507561254)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102368445211561256)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(41102366052153561255)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102368667493561256)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(41102366415887561255)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102368880066561256)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(41102366844868561255)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102369254553561257)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(41102369071473561257)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102369468121561257)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(41102369071473561257)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102369636669561257)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(41102369071473561257)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102369838525561257)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(41102365202255561254)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102370071881561257)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(41102367697594561256)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102370296697561257)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(41102367274844561255)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102370663862561258)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(41102370463727561257)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102370893062561258)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(41102365202255561254)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102371080035561258)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(41102367274844561255)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102371281317561258)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(41102365202255561254)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102371683964561258)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(41102371422875561258)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102372040940561259)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(41102371855038561259)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102372475227561259)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(41102372287556561259)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102372817241561259)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(41102372673693561259)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102373031043561260)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(41102372673693561259)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102373476328561260)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(41102373214676561260)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102373634378561260)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(41102371855038561259)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102374096801561261)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(41102373831900561260)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102374424972561261)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(41102374274561561261)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102374828697561261)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(41102374646116561261)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102375298816561261)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(41102375074427561261)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102375425990561261)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102375617079561262)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(41102373831900561260)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(41102376023720561262)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(41102375843204561262)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(3623337486106929733)
,p_translation_flow_id=>231123
,p_translation_flow_language_cd=>'pt-br'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(3623347635030932462)
,p_translation_flow_id=>231126
,p_translation_flow_language_cd=>'es'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(3623406931067277251)
,p_translation_flow_id=>231124
,p_translation_flow_language_cd=>'en'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(3623494278493281066)
,p_translation_flow_id=>231128
,p_translation_flow_language_cd=>'ko'
,p_direction_right_to_left=>'N'
);
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(3623509907425932507)
,p_translation_flow_id=>231127
,p_translation_flow_language_cd=>'zh-cn'
,p_direction_right_to_left=>'N'
);
end;
/
prompt --application/shared_components/globalization/translations
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623563642110936668)
,p_page_id=>1
,p_translated_flow_id=>231126
,p_translate_to_id=>1.231126
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Inicio'
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623563744316936670)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>2.231126
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623563957134936671)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>4.231126
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623564139271936671)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>5.231126
,p_translate_from_id=>5
,p_translate_column_id=>5
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623564394628936672)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>3.231126
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623564516850936672)
,p_page_id=>0
,p_translated_flow_id=>231126
,p_translate_to_id=>.231126
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('P\00E1gina Global - Escritorio')
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623564732352936672)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>9999.231126
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('P\00E1gina de Conexi\00F3n')
,p_translate_from_text=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623564972813936715)
,p_page_id=>1
,p_translated_flow_id=>231126
,p_translate_to_id=>1.231126
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('XLIFF Traducci\00F3n'),
''))
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623565028896936716)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>2.231126
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623565250459936716)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>4.231126
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623565499248936716)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>5.231126
,p_translate_from_id=>5
,p_translate_column_id=>6
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623565661548936716)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>3.231126
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623565852856936716)
,p_page_id=>0
,p_translated_flow_id=>231126
,p_translate_to_id=>.231126
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('P\00E1gina Global - Escritorio')
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623566074134936716)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>9999.231126
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623566249459936746)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>2.231126
,p_translate_from_id=>2
,p_translate_column_id=>12
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Para buscar los datos, introduzca un t\00E9rmino de b\00FAsqueda en el cuadro de di\00E1logo de b\00FAsqueda o haga clic en las cabeceras de columna para limitar los registros devueltos.</p>'),
'',
unistr('<p>Puede realizar varias funciones haciendo clic en el bot\00F3n <strong>Acciones</strong>, entre las que se incluyen el seleccionar las columnas que se muestran u ocultan y su secuencia de visualizaci\00F3n, adem\00E1s de numerosas funciones de datos y formato.')
||unistr(' Tambi\00E9n puede definir m\00E1s vistas de los datos con las opciones de gr\00E1fico, agrupaci\00F3n por y giro.</p>'),
'',
unistr('<p>Si desea guardar las personalizaciones, seleccione el informe o haga clic en Descargar para descargar los datos. Introduzca la direcci\00F3n de correo electr\00F3nico y el marco temporal de la suscripci\00F3n para el env\00EDo de los datos de forma regular.<p>'),
'',
unistr('<p>Para obtener m\00E1s informaci\00F3n, haga clic en Ayuda en la parte inferior del men\00FA Acciones.</p>'),
'',
unistr('<p>Haga clic en el bot\00F3n <strong>Restablecer</strong> para restablecer la configuraci\00F3n por defecto del informe interactivo.</p>')))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623566401829936746)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>4.231126
,p_translate_from_id=>4
,p_translate_column_id=>12
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Para buscar los datos, introduzca un t\00E9rmino de b\00FAsqueda en el cuadro de di\00E1logo de b\00FAsqueda o haga clic en las cabeceras de columna para limitar los registros devueltos.</p>'),
'',
unistr('<p>Puede realizar varias funciones haciendo clic en el bot\00F3n <strong>Acciones</strong>, entre las que se incluyen el seleccionar las columnas que se muestran u ocultan y su secuencia de visualizaci\00F3n, adem\00E1s de numerosas funciones de datos y formato.')
||unistr(' Tambi\00E9n puede definir m\00E1s vistas de los datos con las opciones de gr\00E1fico, agrupaci\00F3n por y giro.</p>'),
'',
unistr('<p>Si desea guardar las personalizaciones, seleccione el informe o haga clic en Descargar para descargar los datos. Introduzca la direcci\00F3n de correo electr\00F3nico y el marco temporal de la suscripci\00F3n para el env\00EDo de los datos de forma regular.<p>'),
'',
unistr('<p>Para obtener m\00E1s informaci\00F3n, haga clic en Ayuda en la parte inferior del men\00FA Acciones.</p>'),
'',
unistr('<p>Haga clic en el bot\00F3n <strong>Restablecer</strong> para restablecer la configuraci\00F3n por defecto del informe interactivo.</p>')))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623566726029936793)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102404793277561377.231126)
,p_translate_from_id=>wwv_flow_api.id(41102404793277561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Suprimir'
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623566851584936793)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102405595656561378.231126)
,p_translate_from_id=>wwv_flow_api.id(41102405595656561378)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Crear'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623567061179936794)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102419167005561436.231126)
,p_translate_from_id=>wwv_flow_api.id(41102419167005561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Aplicar Cambios'
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623567299254936794)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102393347797561322.231126)
,p_translate_from_id=>wwv_flow_api.id(41102393347797561322)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Restablecer'
,p_translate_from_text=>unistr('\30EA\30BB\30C3\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623567481419936794)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102418745503561436.231126)
,p_translate_from_id=>wwv_flow_api.id(41102418745503561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Suprimir'
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623567627754936795)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102405155322561377.231126)
,p_translate_from_id=>wwv_flow_api.id(41102405155322561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Aplicar Cambios'
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623567862170936795)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102403182293561375.231126)
,p_translate_from_id=>wwv_flow_api.id(41102403182293561375)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cancelar'
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623568073800936795)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102395949763561327.231126)
,p_translate_from_id=>wwv_flow_api.id(41102395949763561327)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Crear'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623568286101936795)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102419516741561437.231126)
,p_translate_from_id=>wwv_flow_api.id(41102419516741561437)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Crear'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623568438576936795)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102385077281561305.231126)
,p_translate_from_id=>wwv_flow_api.id(41102385077281561305)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Conectar'
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623568677944936795)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102412948007561388.231126)
,p_translate_from_id=>wwv_flow_api.id(41102412948007561388)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Crear'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623568825259936796)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102417129425561434.231126)
,p_translate_from_id=>wwv_flow_api.id(41102417129425561434)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cancelar'
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623569026432936835)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623569271789936836)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231126)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623569467159936836)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231126)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623569608969936836)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623569821290936836)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Contrase\00F1a')
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623570006518936836)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231126)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623570235717936837)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231126)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623570461459936837)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231126)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Recordar nombre de usuario'
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623570622386936837)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231126)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623570805644936837)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source'
,p_translate_from_text=>'Xliff Source'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623571026114936837)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Nombre de Usuario'
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623571200521936837)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623571462271936838)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231126)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623571618717936838)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623572058938936897)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231126)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Selector de Idioma'
,p_translate_from_text=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623572123316936897)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('XLIFF Traducci\00F3n'),
''))
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623572322990936897)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231126)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('bot\00F3n')
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623572538006936897)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102396762051561368.231126)
,p_translate_from_id=>wwv_flow_api.id(41102396762051561368)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623572749535936898)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231126)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('bot\00F3n')
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623572979704936898)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231126)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623573137980936898)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102411153200561387.231126)
,p_translate_from_id=>wwv_flow_api.id(41102411153200561387)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('Rutas de Navegaci\00F3n')
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623573327112936898)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102413667405561430.231126)
,p_translate_from_id=>wwv_flow_api.id(41102413667405561430)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623573513882936899)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231126)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff Files'
,p_translate_from_text=>'Cwr Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623573714005936899)
,p_page_id=>1
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231126)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('XLIFF Traducci\00F3n'),
''))
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623573988538936899)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102394131636561324.231126)
,p_translate_from_id=>wwv_flow_api.id(41102394131636561324)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('Rutas de Navegaci\00F3n')
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623574123227936899)
,p_page_id=>1
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102446874054561482.231126)
,p_translate_from_id=>wwv_flow_api.id(41102446874054561482)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('Navegaci\00F3n de P\00E1gina')
,p_translate_from_text=>unistr('\30DA\30FC\30B8\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623574390776936905)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231126)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623574518311936905)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231126)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623574760065936964)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102389739616561314.231126)
,p_translate_from_id=>wwv_flow_api.id(41102389739616561314)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623574996880936964)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102447780089561483.231126)
,p_translate_from_id=>wwv_flow_api.id(41102447780089561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623575119514936964)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231126)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623575333505936964)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102388275952561311.231126)
,p_translate_from_id=>wwv_flow_api.id(41102388275952561311)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Inicio'
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623575572167936965)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102446159764561482.231126)
,p_translate_from_id=>wwv_flow_api.id(41102446159764561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623575779958936965)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102407522830561381.231126)
,p_translate_from_id=>wwv_flow_api.id(41102407522830561381)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623575984795936965)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102448134661561484.231126)
,p_translate_from_id=>wwv_flow_api.id(41102448134661561484)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Desconectar'
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A2\30A6\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623576173901936965)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102446531075561482.231126)
,p_translate_from_id=>wwv_flow_api.id(41102446531075561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623576569065937105)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623576729048937120)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623576906001937124)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623577117823937137)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623577307134937141)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623577552970937145)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623577791892937149)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623577901413937154)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623578167574937158)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623578408459937173)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102379728695561278.231126)
,p_translate_from_id=>wwv_flow_api.id(41102379728695561278)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\00BFDesea realizar esta acci\00F3n de supresi\00F3n?')
,p_translate_from_text=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623578610255937177)
,p_translated_flow_id=>231126
,p_translate_to_id=>51127.231126
,p_translate_from_id=>51127
,p_translate_column_id=>80
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('XLIFF Traducci\00F3n'),
''))
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623578837884937255)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102237960359561143.231126)
,p_translate_from_id=>wwv_flow_api.id(41102237960359561143)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Inicio'
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623578903334937255)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102394569073561325.231126)
,p_translate_from_id=>wwv_flow_api.id(41102394569073561325)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623579178911937255)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102411543260561387.231126)
,p_translate_from_id=>wwv_flow_api.id(41102411543260561387)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623579353101937266)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102383780759561303.231126)
,p_translate_from_id=>wwv_flow_api.id(41102383780759561303)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Recordar nombre de usuario'
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623579595252937298)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231126)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('Si selecciona esta casilla de verificaci\00F3n, la aplicaci\00F3n guardar\00E1 su nombre de usuario en una cookie persistente del navegador denominada "LOGIN_USERNAME_COOKIE".'),
unistr('La pr\00F3xima vez que acceda a la p\00E1gina de conexi\00F3n,'),
unistr('el campo de nombre de usuario se rellenar\00E1 autom\00E1ticamente con este valor.'),
'</p>',
'<p>',
unistr('Si anula la selecci\00F3n de esta casilla de verificaci\00F3n y su nombre de usuario ya se ha guardado en la cookie,'),
unistr('la aplicaci\00F3n lo sobrescribir\00E1 con un valor vac\00EDo.'),
unistr('Tambi\00E9n puede utilizar las herramientas de desarrollador de su explorador para eliminar la cookie por completo.'),
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623579699035937301)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231126)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623580059600937360)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231126)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623580282455937360)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231126)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623580487844937373)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231126)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_translate_from_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623580684027937377)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231126)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('No se ha encontrado ning\00FAn dato')
,p_translate_from_text=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623580968485937424)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231126)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623581014077937424)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231126)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623581240433937424)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231126)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623581468716937424)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231126)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623581601637937425)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231126)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623581813462937425)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231126)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623582072117937425)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231126)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623582243964937464)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231126)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623582486671937464)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231126)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623582652994937464)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231126)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623582802859937464)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231126)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623583002408937464)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231126)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623583281284937464)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231126)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623583464391937465)
,p_page_id=>2
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231126)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623584319925937851)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231126)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Privilegios insuficientes. El usuario no es administrador.'
,p_translate_from_text=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\7BA1\7406\8005\3067\306F\3042\308A\307E\305B\3093')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623584439396937934)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623584569248937935)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231126)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623584720643937935)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231126)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623584938035937935)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623585164610937935)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623585363625937935)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231126)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623585534248937935)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231126)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623585778606937936)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231126)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623585900746937936)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231126)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623586195294937936)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'DB_COLUMN'
,p_translate_from_text=>'DB_COLUMN'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623586353561937936)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623586508454937936)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623586720306937936)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231126)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623586934872937937)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623587242045937977)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623587448166937978)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231126)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623587685656937978)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_MIMETYPE'
,p_translate_from_text=>'XLIFF_SOURCE_MIMETYPE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623587827552937978)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623588073169937978)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623588279503937978)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623588682122938018)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623588779518938018)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231126)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623588904943938019)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_FILENAME'
,p_translate_from_text=>'XLIFF_SOURCE_FILENAME'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623589153634938019)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623589313939938019)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623589584382938019)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623589851898938063)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623590094554938064)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231126)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623590289254938064)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_CHARSET'
,p_translate_from_text=>'XLIFF_SOURCE_CHARSET'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623590482292938064)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623590613148938064)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623590815448938064)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623591208578938105)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623591359106938106)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231126)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623591552878938106)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_LASTUPD'
,p_translate_from_text=>'XLIFF_SOURCE_LASTUPD'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623591700171938106)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623591995525938106)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231126)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623592113186938110)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>273
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623592324818938119)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>275
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'attachment'
,p_translate_from_text=>'attachment'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623592974031938175)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102386787092561306.231126)
,p_translate_from_id=>wwv_flow_api.id(41102386787092561306)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623593123007938176)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231126)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623593384804938176)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231126)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623593575410938176)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231126)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623593895360938195)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231126)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623593942716938195)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231126)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623594119954938196)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231126)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623594346464938200)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231126)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623594525504938200)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231126)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623594770768938200)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231126)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623594938566938213)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231126)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623595198813938213)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231126)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623595314582938213)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231126)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623595712665938294)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102237169673561138.231126)
,p_translate_from_id=>wwv_flow_api.id(41102237169673561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623595865701938294)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231126)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'fa-star'
,p_translate_from_text=>'fa-star'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623596018917938294)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102236853289561138.231126)
,p_translate_from_id=>wwv_flow_api.id(41102236853289561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623596201952938294)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102235342731561137.231126)
,p_translate_from_id=>wwv_flow_api.id(41102235342731561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'modern'
,p_translate_from_text=>'modern'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623596492941938295)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231126)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623596623299938295)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102235697482561137.231126)
,p_translate_from_id=>wwv_flow_api.id(41102235697482561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623596811349938295)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231126)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623597058826938299)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231126)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>299
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623597269395938302)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231126)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623597430370938306)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231126)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>301
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#VALUE#'
,p_translate_from_text=>'#VALUE#'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623597623792938310)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231126)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH_CB'
,p_translate_from_text=>'SWITCH_CB'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623597940320938365)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623598194807938366)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231126)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623598364150938366)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231126)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623598570273938366)
,p_page_id=>1
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231126)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623598802086938404)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623598923329938404)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231126)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623599138911938404)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231126)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623599302674938404)
,p_page_id=>1
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231126)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623599582078938442)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623599703271938443)
,p_page_id=>5
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231126)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3623599941935938443)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231126)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624000143370938443)
,p_page_id=>1
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231126)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624000344435938483)
,p_page_id=>3
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231126)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>319
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'INLINE'
,p_translate_from_text=>'INLINE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624005207754938572)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231126)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624144762196938712)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231126)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624157400306938782)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Nombre de Usuario'
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624157681481938782)
,p_page_id=>9999
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231126)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Contrase\00F1a')
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624157803085938786)
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41102376776579561264.231126)
,p_translate_from_id=>wwv_flow_api.id(41102376776579561264)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Escritorio'
,p_translate_from_text=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624158385769938895)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624158467952938896)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624158698479938896)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624158852830938935)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624159026753938935)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231126)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624159206166938935)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223512614461043.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223512614461043)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624159431167938935)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624159681610938939)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231126)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624159802724938939)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624160045338938940)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624160238336938943)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231126)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624160479574938943)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624160644394938943)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624160897498938947)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624161076013938947)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624161247001938951)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231126)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624161798349939033)
,p_page_id=>4
,p_translated_flow_id=>231126
,p_translate_to_id=>wwv_flow_api.id(41106224268990461050.231126)
,p_translate_from_id=>wwv_flow_api.id(41106224268990461050)
,p_translate_column_id=>451
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_translate_from_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624162499406939111)
,p_translated_flow_id=>231126
,p_translate_to_id=>51127.231126
,p_translate_from_id=>51127
,p_translate_column_id=>476
,p_translate_to_lang_code=>'es'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('XLIFF Traducci\00F3n'),
''))
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624163194853939323)
,p_page_id=>1
,p_translated_flow_id=>231123
,p_translate_to_id=>1.231123
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('In\00EDcio')
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624163223623939323)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>2.231123
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624163424078939324)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>4.231123
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624163646072939324)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>5.231123
,p_translate_from_id=>5
,p_translate_column_id=>5
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624163887095939324)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>3.231123
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624164046991939324)
,p_page_id=>0
,p_translated_flow_id=>231123
,p_translate_to_id=>.231123
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('P\00E1gina Global - Desktop')
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624164242864939324)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>9999.231123
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('P\00E1gina de Log-in')
,p_translate_from_text=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624164696256939363)
,p_page_id=>1
,p_translated_flow_id=>231123
,p_translate_to_id=>1.231123
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF tradu\00E7\00E3o')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624164847808939363)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>2.231123
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624165008098939363)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>4.231123
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624165287678939363)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>5.231123
,p_translate_from_id=>5
,p_translate_column_id=>6
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624165418804939363)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>3.231123
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624165664512939363)
,p_page_id=>0
,p_translated_flow_id=>231123
,p_translate_to_id=>.231123
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('P\00E1gina Global - Desktop')
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624165898628939364)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>9999.231123
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624166089505939377)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>2.231123
,p_translate_from_id=>2
,p_translate_column_id=>12
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Para localizar os dados, digite um termo de pesquisa na caixa de di\00E1logo ou clique nos cabe\00E7alhos da coluna para limitar os registros retornados.</p>'),
'',
unistr('<p>Voc\00EA pode executar v\00E1rias fun\00E7\00F5es clicando no bot\00E3o <strong>A\00E7\00F5es</strong>. Isso inclui a sele\00E7\00E3o de colunas que s\00E3o exibidas/ocultas e sua sequ\00EAncia de exibi\00E7\00E3o, mais v\00E1rios dados e fun\00E7\00F5es de formato. Tamb\00E9m \00E9 poss\00EDvel definir views adicionais d')
||unistr('e dados usando a op\00E7\00E3o do gr\00E1fico, agrupar por e tabela din\00E2mica.</p>'),
'',
unistr('<p>Se quiser salvar suas personaliza\00E7\00F5es, selecione o relat\00F3rio ou clique em download para descarregar os dados. Informe seu endere\00E7o de e-mail e per\00EDodo de assinatura para que os dados sejam enviados regularmente.<p>'),
'',
unistr('<p>Para obter informa\00E7\00F5es adicionais, clique em Ajuda na parte inferior do menu A\00E7\00F5es.</p>'),
'',
unistr('<p>Clique no bot\00E3o <strong>Redefinir</strong> para redefinir o relat\00F3rio interativo para as configura\00E7\00F5es padr\00E3o.</p>')))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624166227614939377)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>4.231123
,p_translate_from_id=>4
,p_translate_column_id=>12
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Para localizar os dados, digite um termo de pesquisa na caixa de di\00E1logo ou clique nos cabe\00E7alhos da coluna para limitar os registros retornados.</p>'),
'',
unistr('<p>Voc\00EA pode executar v\00E1rias fun\00E7\00F5es clicando no bot\00E3o <strong>A\00E7\00F5es</strong>. Isso inclui a sele\00E7\00E3o de colunas que s\00E3o exibidas/ocultas e sua sequ\00EAncia de exibi\00E7\00E3o, mais v\00E1rios dados e fun\00E7\00F5es de formato. Tamb\00E9m \00E9 poss\00EDvel definir views adicionais d')
||unistr('e dados usando a op\00E7\00E3o do gr\00E1fico, agrupar por e tabela din\00E2mica.</p>'),
'',
unistr('<p>Se quiser salvar suas personaliza\00E7\00F5es, selecione o relat\00F3rio ou clique em download para descarregar os dados. Informe seu endere\00E7o de e-mail e per\00EDodo de assinatura para que os dados sejam enviados regularmente.<p>'),
'',
unistr('<p>Para obter informa\00E7\00F5es adicionais, clique em Ajuda na parte inferior do menu A\00E7\00F5es.</p>'),
'',
unistr('<p>Clique no bot\00E3o <strong>Redefinir</strong> para redefinir o relat\00F3rio interativo para as configura\00E7\00F5es padr\00E3o.</p>')))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624166619299939415)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102404793277561377.231123)
,p_translate_from_id=>wwv_flow_api.id(41102404793277561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Excluir'
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624166795105939415)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102405595656561378.231123)
,p_translate_from_id=>wwv_flow_api.id(41102405595656561378)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Criar'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624166997517939415)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102419167005561436.231123)
,p_translate_from_id=>wwv_flow_api.id(41102419167005561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Aplicar Altera\00E7\00F5es')
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624167116846939415)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102393347797561322.231123)
,p_translate_from_id=>wwv_flow_api.id(41102393347797561322)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Redefinir'
,p_translate_from_text=>unistr('\30EA\30BB\30C3\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624167346448939416)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102418745503561436.231123)
,p_translate_from_id=>wwv_flow_api.id(41102418745503561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Excluir'
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624167583908939416)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102405155322561377.231123)
,p_translate_from_id=>wwv_flow_api.id(41102405155322561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Aplicar Altera\00E7\00F5es')
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624167763255939416)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102403182293561375.231123)
,p_translate_from_id=>wwv_flow_api.id(41102403182293561375)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cancelar'
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624167930382939416)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102395949763561327.231123)
,p_translate_from_id=>wwv_flow_api.id(41102395949763561327)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Criar'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624168149459939416)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102419516741561437.231123)
,p_translate_from_id=>wwv_flow_api.id(41102419516741561437)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Criar'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624168318553939416)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102385077281561305.231123)
,p_translate_from_id=>wwv_flow_api.id(41102385077281561305)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Acessar'
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624168531869939416)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102412948007561388.231123)
,p_translate_from_id=>wwv_flow_api.id(41102412948007561388)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Criar'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624168790570939417)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102417129425561434.231123)
,p_translate_from_id=>wwv_flow_api.id(41102417129425561434)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cancelar'
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624169023196939451)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624169274379939451)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231123)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624169407748939451)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231123)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624169684328939451)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624169854254939451)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Senha'
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624170077362939451)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231123)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624170268481939452)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231123)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624170423614939452)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231123)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Lembrar nome do usu\00E1rio')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624170612259939452)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231123)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624170870896939452)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source'
,p_translate_from_text=>'Xliff Source'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624171093450939452)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Nome do Usu\00E1rio')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624171209604939452)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624171429075939452)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231123)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624171667921939453)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624171990098939488)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231123)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Seletor de Idioma'
,p_translate_from_text=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624172029695939488)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('XLIFF tradu\00E7\00E3o')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624172207237939489)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231123)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('bot\00E3o')
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624172437183939489)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102396762051561368.231123)
,p_translate_from_id=>wwv_flow_api.id(41102396762051561368)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624172678009939489)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231123)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('bot\00E3o')
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624172835392939489)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231123)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624173095963939489)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102411153200561387.231123)
,p_translate_from_id=>wwv_flow_api.id(41102411153200561387)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumbs'
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624173263862939489)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102413667405561430.231123)
,p_translate_from_id=>wwv_flow_api.id(41102413667405561430)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624173407750939489)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231123)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff Files'
,p_translate_from_text=>'Cwr Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624173616462939490)
,p_page_id=>1
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231123)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('XLIFF tradu\00E7\00E3o')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624173846160939490)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102394131636561324.231123)
,p_translate_from_id=>wwv_flow_api.id(41102394131636561324)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumbs'
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624174055225939490)
,p_page_id=>1
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102446874054561482.231123)
,p_translate_from_id=>wwv_flow_api.id(41102446874054561482)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('Navega\00E7\00E3o por P\00E1gina')
,p_translate_from_text=>unistr('\30DA\30FC\30B8\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3')
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624174259814939491)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231123)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624174453604939491)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231123)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624174739715939529)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102389739616561314.231123)
,p_translate_from_id=>wwv_flow_api.id(41102389739616561314)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624174913765939530)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102447780089561483.231123)
,p_translate_from_id=>wwv_flow_api.id(41102447780089561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624175157444939530)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231123)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624175311932939530)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102388275952561311.231123)
,p_translate_from_id=>wwv_flow_api.id(41102388275952561311)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('In\00EDcio')
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624175520937939530)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102446159764561482.231123)
,p_translate_from_id=>wwv_flow_api.id(41102446159764561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624175770073939530)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102407522830561381.231123)
,p_translate_from_id=>wwv_flow_api.id(41102407522830561381)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624175923968939531)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102448134661561484.231123)
,p_translate_from_id=>wwv_flow_api.id(41102448134661561484)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sair'
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A2\30A6\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624176170420939531)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102446531075561482.231123)
,p_translate_from_id=>wwv_flow_api.id(41102446531075561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624176321775939536)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624176574903939536)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624176715765939537)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624176902737939537)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624177136503939538)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624177357855939538)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624177593929939539)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624177784783939539)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624177921776939539)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624178161397939540)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102379728695561278.231123)
,p_translate_from_id=>wwv_flow_api.id(41102379728695561278)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Gostaria de executar esta a\00E7\00E3o de exclus\00E3o?')
,p_translate_from_text=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624178398991939540)
,p_translated_flow_id=>231123
,p_translate_to_id=>51127.231123
,p_translate_from_id=>51127
,p_translate_column_id=>80
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF tradu\00E7\00E3o')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624178518593939543)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102237960359561143.231123)
,p_translate_from_id=>wwv_flow_api.id(41102237960359561143)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('In\00EDcio')
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624178746164939543)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102394569073561325.231123)
,p_translate_from_id=>wwv_flow_api.id(41102394569073561325)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624178957235939543)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102411543260561387.231123)
,p_translate_from_id=>wwv_flow_api.id(41102411543260561387)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624179145872939544)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102383780759561303.231123)
,p_translate_from_id=>wwv_flow_api.id(41102383780759561303)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Lembrar nome do usu\00E1rio')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624179453826939545)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231123)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('Se voc\00EA marcar esta caixa de sele\00E7\00E3o, o aplicativo salvar\00E1 seu nome de usu\00E1rio em um cookie de browser persistente chamado "LOGIN_USERNAME_COOKIE".'),
unistr('Quando voc\00EA for at\00E9 a p\00E1gina de log-in na pr\00F3xima vez, '),
unistr('o campo de nome do usu\00E1rio ser\00E1 preenchido automaticamente com esse valor.'),
'</p>',
'<p>',
unistr('Se voc\00EA desmarcar esta caixa de sele\00E7\00E3o e o seu nome de usu\00E1rio j\00E1 estiver salvo no cookie,'),
unistr('o aplicativo o substituir\00E1 por um valor vazio.'),
unistr('Voc\00EA tamb\00E9m pode usar as ferramentas de desenvolvedor do seu browser para remover completamente o cookie.'),
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624179640466939545)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231123)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624179811096939548)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231123)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624180071154939548)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231123)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624180264653939548)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231123)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_translate_from_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624180460291939549)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231123)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Dados n\00E3o encontrados')
,p_translate_from_text=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624180798877939585)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231123)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624180920731939586)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231123)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624181193660939586)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231123)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624181344068939586)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231123)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624181509795939586)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231123)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624181766348939586)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231123)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624181946779939586)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231123)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624182332930939620)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231123)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624182426860939621)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231123)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624182653101939621)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231123)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624182844504939621)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231123)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Id'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624183036015939621)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231123)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624183243204939621)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231123)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624183431458939621)
,p_page_id=>2
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231123)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624183753713939633)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231123)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Privil\00E9gios insuficientes; o usu\00E1rio n\00E3o \00E9 um Administrador')
,p_translate_from_text=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\7BA1\7406\8005\3067\306F\3042\308A\307E\305B\3093')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624184287218939668)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624184449043939669)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231123)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624184655173939669)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231123)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624184895143939669)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624185058785939669)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624185243857939669)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231123)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624185474313939670)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231123)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624185643142939670)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231123)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624185820698939670)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231123)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624186008479939670)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'DB_COLUMN'
,p_translate_from_text=>'DB_COLUMN'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624186204602939670)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624186486765939670)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624186670250939670)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231123)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624186816691939671)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624187042541939705)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624187140762939705)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231123)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624187359202939705)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_MIMETYPE'
,p_translate_from_text=>'XLIFF_SOURCE_MIMETYPE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624187559403939705)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624187760140939705)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624187991629939705)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624188189606939739)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624188327096939740)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231123)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624188577169939740)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_FILENAME'
,p_translate_from_text=>'XLIFF_SOURCE_FILENAME'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624188760563939740)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624188965058939740)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624189132142939740)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624189473232939774)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624189636384939774)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231123)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624189870603939774)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_CHARSET'
,p_translate_from_text=>'XLIFF_SOURCE_CHARSET'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624190099416939774)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624190218666939774)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624190400976939775)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624190746006939808)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624190857624939808)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231123)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624191027845939809)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_LASTUPD'
,p_translate_from_text=>'XLIFF_SOURCE_LASTUPD'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624191223173939809)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624191589769939809)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231123)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624191789846939809)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>273
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624191966043939810)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>275
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'attachment'
,p_translate_from_text=>'attachment'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624192166894939843)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102386787092561306.231123)
,p_translate_from_id=>wwv_flow_api.id(41102386787092561306)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624192394405939844)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231123)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624192581238939844)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231123)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624192799907939844)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231123)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624192965933939845)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231123)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624193154175939845)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231123)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624193309023939845)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231123)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624193542980939845)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231123)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624193786785939845)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231123)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624193987261939846)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231123)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624194149496939846)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231123)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624194355962939846)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231123)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624194582045939846)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231123)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624194848071939881)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102237169673561138.231123)
,p_translate_from_id=>wwv_flow_api.id(41102237169673561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624195043773939881)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231123)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'fa-star'
,p_translate_from_text=>'fa-star'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624195257370939881)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102236853289561138.231123)
,p_translate_from_id=>wwv_flow_api.id(41102236853289561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624195498848939882)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102235342731561137.231123)
,p_translate_from_id=>wwv_flow_api.id(41102235342731561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'modern'
,p_translate_from_text=>'modern'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624195642764939882)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231123)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624195833110939882)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102235697482561137.231123)
,p_translate_from_id=>wwv_flow_api.id(41102235697482561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624196076338939882)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231123)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624196274320939882)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231123)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>299
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624196437524939883)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231123)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624196671705939883)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231123)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>301
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#VALUE#'
,p_translate_from_text=>'#VALUE#'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624196815951939883)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231123)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH_CB'
,p_translate_from_text=>'SWITCH_CB'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624197057734939917)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624197139734939918)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231123)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624197361175939918)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231123)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624197563614939918)
,p_page_id=>1
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231123)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624197985002939952)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624198127281939953)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231123)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624198341824939953)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231123)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624198515690939953)
,p_page_id=>1
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231123)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624198731235939988)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624198872212939988)
,p_page_id=>5
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231123)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624199062745939989)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231123)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624199221626939989)
,p_page_id=>1
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231123)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624199504432939991)
,p_page_id=>3
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231123)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>319
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'INLINE'
,p_translate_from_text=>'INLINE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624199764592939994)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231123)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624200068164939997)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231123)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624300228014939999)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('Nome do Usu\00E1rio')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624300484806940000)
,p_page_id=>9999
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231123)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Senha'
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624300676142940000)
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41102376776579561264.231123)
,p_translate_from_id=>wwv_flow_api.id(41102376776579561264)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\00C1rea de Trabalho')
,p_translate_from_text=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624300919372940037)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624301192017940037)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624301399734940037)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624301699526940072)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624301840951940072)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231123)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624302071179940072)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223512614461043.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223512614461043)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624302211287940072)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624302400878940073)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231123)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624302632327940073)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624302838825940073)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624303065259940073)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231123)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624303207025940074)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624303411116940074)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624303610179940074)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624303891243940074)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624304028719940075)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231123)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624304254696940077)
,p_page_id=>4
,p_translated_flow_id=>231123
,p_translate_to_id=>wwv_flow_api.id(41106224268990461050.231123)
,p_translate_from_id=>wwv_flow_api.id(41106224268990461050)
,p_translate_column_id=>451
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_translate_from_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624304414832940079)
,p_translated_flow_id=>231123
,p_translate_to_id=>51127.231123
,p_translate_from_id=>51127
,p_translate_column_id=>476
,p_translate_to_lang_code=>'pt-br'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF tradu\00E7\00E3o')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624304718888940123)
,p_page_id=>1
,p_translated_flow_id=>231127
,p_translate_to_id=>1.231127
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\4E3B\9875')
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624304874775940123)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>2.231127
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624305076634940123)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>4.231127
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624305386238940123)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>5.231127
,p_translate_from_id=>5
,p_translate_column_id=>5
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624305565996940123)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>3.231127
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624305789433940124)
,p_page_id=>0
,p_translated_flow_id=>231127
,p_translate_to_id=>.231127
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\5168\5C40\9875 - \684C\9762')
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624305985554940124)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>9999.231127
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\767B\5F55\9875')
,p_translate_from_text=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624306227126940163)
,p_page_id=>1
,p_translated_flow_id=>231127
,p_translate_to_id=>1.231127
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF\7FFB\8BD1')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624306409097940163)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>2.231127
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624306648068940163)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>4.231127
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624306862564940163)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>5.231127
,p_translate_from_id=>5
,p_translate_column_id=>6
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624307055394940163)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>3.231127
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624307274569940163)
,p_page_id=>0
,p_translated_flow_id=>231127
,p_translate_to_id=>.231127
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\5168\5C40\9875 - \684C\9762')
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624307461965940164)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>9999.231127
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624307643293940176)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>2.231127
,p_translate_from_id=>2
,p_translate_column_id=>12
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\8981\67E5\627E\6570\636E, \8BF7\5728\641C\7D22\5BF9\8BDD\6846\4E2D\8F93\5165\641C\7D22\8BCD, \6216\8005\5355\51FB\5217\6807\9898\4EE5\9650\5236\8FD4\56DE\7684\8BB0\5F55\3002</p>'),
'',
unistr('<p>\5355\51FB<strong>\64CD\4F5C</strong>\6309\94AE\53EF\4EE5\6267\884C\591A\79CD\529F\80FD\3002\8FD9\5305\62EC\9009\62E9\663E\793A/\9690\85CF\7684\5217\53CA\5176\663E\793A\987A\5E8F, \4EE5\53CA\591A\79CD\6570\636E\548C\683C\5F0F\529F\80FD\3002\8FD8\53EF\4F7F\7528\56FE\8868, \5206\7EC4\65B9\5F0F\548C\6570\636E\900F\89C6\8868\9009\9879\5B9A\4E49\6570\636E\7684\5176\4ED6\89C6\56FE\3002</p>'),
'',
unistr('<p>\5982\679C\8981\4FDD\5B58\5B9A\5236\8BBE\7F6E, \8BF7\9009\62E9\62A5\544A, \6216\8005\5355\51FB\4E0B\8F7D\4EE5\5378\8F7D\6570\636E\3002\5728\8981\5B9A\671F\53D1\9001\7684\8BA2\9605\4E0B\8F93\5165\7535\5B50\90AE\4EF6\5730\5740\548C\65F6\95F4\8303\56F4\3002<p>'),
'',
unistr('<p>\6709\5173\8BE6\7EC6\4FE1\606F, \8BF7\5355\51FB\4F4D\4E8E\201C\64CD\4F5C\201D\83DC\5355\5E95\90E8\7684\201C\5E2E\52A9\201D\3002</p>'),
'',
unistr('<p>\5355\51FB<strong>\91CD\7F6E</strong>\6309\94AE\53EF\5C06\4EA4\4E92\5F0F\62A5\544A\91CD\7F6E\56DE\9ED8\8BA4\8BBE\7F6E\3002</p>')))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624307864346940177)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>4.231127
,p_translate_from_id=>4
,p_translate_column_id=>12
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\8981\67E5\627E\6570\636E, \8BF7\5728\641C\7D22\5BF9\8BDD\6846\4E2D\8F93\5165\641C\7D22\8BCD, \6216\8005\5355\51FB\5217\6807\9898\4EE5\9650\5236\8FD4\56DE\7684\8BB0\5F55\3002</p>'),
'',
unistr('<p>\5355\51FB<strong>\64CD\4F5C</strong>\6309\94AE\53EF\4EE5\6267\884C\591A\79CD\529F\80FD\3002\8FD9\5305\62EC\9009\62E9\663E\793A/\9690\85CF\7684\5217\53CA\5176\663E\793A\987A\5E8F, \4EE5\53CA\591A\79CD\6570\636E\548C\683C\5F0F\529F\80FD\3002\8FD8\53EF\4F7F\7528\56FE\8868, \5206\7EC4\65B9\5F0F\548C\6570\636E\900F\89C6\8868\9009\9879\5B9A\4E49\6570\636E\7684\5176\4ED6\89C6\56FE\3002</p>'),
'',
unistr('<p>\5982\679C\8981\4FDD\5B58\5B9A\5236\8BBE\7F6E, \8BF7\9009\62E9\62A5\544A, \6216\8005\5355\51FB\4E0B\8F7D\4EE5\5378\8F7D\6570\636E\3002\5728\8981\5B9A\671F\53D1\9001\7684\8BA2\9605\4E0B\8F93\5165\7535\5B50\90AE\4EF6\5730\5740\548C\65F6\95F4\8303\56F4\3002<p>'),
'',
unistr('<p>\6709\5173\8BE6\7EC6\4FE1\606F, \8BF7\5355\51FB\4F4D\4E8E\201C\64CD\4F5C\201D\83DC\5355\5E95\90E8\7684\201C\5E2E\52A9\201D\3002</p>'),
'',
unistr('<p>\5355\51FB<strong>\91CD\7F6E</strong>\6309\94AE\53EF\5C06\4EA4\4E92\5F0F\62A5\544A\91CD\7F6E\56DE\9ED8\8BA4\8BBE\7F6E\3002</p>')))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624309235499940216)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102404793277561377.231127)
,p_translate_from_id=>wwv_flow_api.id(41102404793277561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\5220\9664')
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624309319404940216)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102405595656561378.231127)
,p_translate_from_id=>wwv_flow_api.id(41102405595656561378)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\521B\5EFA')
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624309578511940216)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102419167005561436.231127)
,p_translate_from_id=>wwv_flow_api.id(41102419167005561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\5E94\7528\66F4\6539')
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624309773196940216)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102393347797561322.231127)
,p_translate_from_id=>wwv_flow_api.id(41102393347797561322)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\91CD\7F6E')
,p_translate_from_text=>unistr('\30EA\30BB\30C3\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624309966470940216)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102418745503561436.231127)
,p_translate_from_id=>wwv_flow_api.id(41102418745503561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\5220\9664')
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624310107028940217)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102405155322561377.231127)
,p_translate_from_id=>wwv_flow_api.id(41102405155322561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\5E94\7528\66F4\6539')
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624310342481940217)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102403182293561375.231127)
,p_translate_from_id=>wwv_flow_api.id(41102403182293561375)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\53D6\6D88')
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624310553789940217)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102395949763561327.231127)
,p_translate_from_id=>wwv_flow_api.id(41102395949763561327)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\521B\5EFA')
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624310729844940217)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102419516741561437.231127)
,p_translate_from_id=>wwv_flow_api.id(41102419516741561437)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\521B\5EFA')
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624310951266940217)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102385077281561305.231127)
,p_translate_from_id=>wwv_flow_api.id(41102385077281561305)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\767B\5F55')
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624311108109940217)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102412948007561388.231127)
,p_translate_from_id=>wwv_flow_api.id(41102412948007561388)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\521B\5EFA')
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624311333754940218)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102417129425561434.231127)
,p_translate_from_id=>wwv_flow_api.id(41102417129425561434)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\53D6\6D88')
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624311528686940253)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624311738528940254)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231127)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624311921321940254)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231127)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624312119966940254)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624312396417940254)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\5BC6\7801')
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624312598741940254)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231127)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624312780734940255)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231127)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624312955795940255)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231127)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\8BB0\4F4F\7528\6237\540D')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624313113169940255)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231127)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624313375156940255)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source'
,p_translate_from_text=>'Xliff Source'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624313537621940255)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\7528\6237\540D')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624313748729940256)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624313965756940256)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231127)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624314124848940256)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624314407671940292)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231127)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\8BED\8A00\9009\62E9\5668')
,p_translate_from_text=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624314589266940292)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('XLIFF\7FFB\8BD1')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624314773977940292)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231127)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\6309\94AE')
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624314985569940292)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102396762051561368.231127)
,p_translate_from_id=>wwv_flow_api.id(41102396762051561368)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624315181433940292)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231127)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\6309\94AE')
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624315341839940293)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231127)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624315503754940293)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102411153200561387.231127)
,p_translate_from_id=>wwv_flow_api.id(41102411153200561387)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\9762\5305\5C51')
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624315736457940293)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102413667405561430.231127)
,p_translate_from_id=>wwv_flow_api.id(41102413667405561430)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624315993321940293)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231127)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff Files'
,p_translate_from_text=>'Cwr Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624316101262940293)
,p_page_id=>1
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231127)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('XLIFF\7FFB\8BD1')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624316379831940293)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102394131636561324.231127)
,p_translate_from_id=>wwv_flow_api.id(41102394131636561324)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\9762\5305\5C51')
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624316512048940293)
,p_page_id=>1
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102446874054561482.231127)
,p_translate_from_id=>wwv_flow_api.id(41102446874054561482)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\9875\5BFC\822A')
,p_translate_from_text=>unistr('\30DA\30FC\30B8\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624316709943940294)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231127)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624316978270940294)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231127)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624317300329940331)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102389739616561314.231127)
,p_translate_from_id=>wwv_flow_api.id(41102389739616561314)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624317574393940331)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102447780089561483.231127)
,p_translate_from_id=>wwv_flow_api.id(41102447780089561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624317722139940331)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231127)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624317961815940331)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102388275952561311.231127)
,p_translate_from_id=>wwv_flow_api.id(41102388275952561311)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\4E3B\9875')
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624318129612940332)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102446159764561482.231127)
,p_translate_from_id=>wwv_flow_api.id(41102446159764561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624318379639940332)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102407522830561381.231127)
,p_translate_from_id=>wwv_flow_api.id(41102407522830561381)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624318552281940332)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102448134661561484.231127)
,p_translate_from_id=>wwv_flow_api.id(41102448134661561484)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\6CE8\9500')
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A2\30A6\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624318756585940332)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102446531075561482.231127)
,p_translate_from_id=>wwv_flow_api.id(41102446531075561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624318997272940336)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624319164687940336)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624319308319940337)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624319563512940337)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624319795218940337)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624319936339940338)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624320104789940338)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624320302571940338)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624320506729940339)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624320769852940339)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102379728695561278.231127)
,p_translate_from_id=>wwv_flow_api.id(41102379728695561278)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\662F\5426\8981\6267\884C\6B64\5220\9664\64CD\4F5C?')
,p_translate_from_text=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624320974090940339)
,p_translated_flow_id=>231127
,p_translate_to_id=>51127.231127
,p_translate_from_id=>51127
,p_translate_column_id=>80
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF\7FFB\8BD1')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624321186845940341)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102237960359561143.231127)
,p_translate_from_id=>wwv_flow_api.id(41102237960359561143)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\4E3B\9875')
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624321320908940342)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102394569073561325.231127)
,p_translate_from_id=>wwv_flow_api.id(41102394569073561325)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624321555893940342)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102411543260561387.231127)
,p_translate_from_id=>wwv_flow_api.id(41102411543260561387)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624321798924940342)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102383780759561303.231127)
,p_translate_from_id=>wwv_flow_api.id(41102383780759561303)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\8BB0\4F4F\7528\6237\540D')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624321914719940343)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231127)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('\5982\679C\9009\4E2D\6B64\590D\9009\6846\FF0C\5219\5E94\7528\7A0B\5E8F\4F1A\5C06\60A8\7684\7528\6237\540D\4FDD\5B58\5728\540D\4E3A "LOGIN_USERNAME_COOKIE" \7684\6301\4E45\6D4F\89C8\5668 cookie \4E2D\3002'),
unistr('\5728\60A8\4E0B\6B21\8F6C\5230\767B\5F55\9875\65F6\FF0C'),
unistr('\7528\6237\540D\5B57\6BB5\5C06\81EA\52A8\4F7F\7528\6B64\503C\586B\5145\3002'),
'</p>',
'<p>',
unistr('\5982\679C\53D6\6D88\9009\4E2D\6B64\590D\9009\6846\FF0C\5E76\4E14\60A8\7684\7528\6237\540D\5DF2\4FDD\5B58\5728 Cookie \4E2D\FF0C'),
unistr('\5219\5E94\7528\7A0B\5E8F\5C06\4F7F\7528\7A7A\7684\503C\6765\8986\76D6\5B83\3002'),
unistr('\60A8\8FD8\53EF\4EE5\4F7F\7528\6D4F\89C8\5668\7684\5F00\53D1\8005\5DE5\5177\6765\5F7B\5E95\5220\9664 Cookie\3002'),
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624322213036940344)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231127)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624322468561940346)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231127)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624322694479940346)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231127)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624322853342940346)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231127)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_translate_from_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624323009226940347)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231127)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\672A\627E\5230\6570\636E')
,p_translate_from_text=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624323337060940381)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231127)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624323546135940381)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231127)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624323782076940381)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231127)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624323978389940381)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231127)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624324132280940382)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231127)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624324388179940382)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231127)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624324570968940382)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231127)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624324881397940416)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231127)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624324931518940417)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231127)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624325186228940417)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231127)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624325332593940417)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231127)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624325577750940417)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231127)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624325722802940417)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231127)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624325983471940418)
,p_page_id=>2
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231127)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624326124681940426)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231127)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\6743\9650\4E0D\8DB3, \7528\6237\4E0D\662F\7BA1\7406\5458')
,p_translate_from_text=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\7BA1\7406\8005\3067\306F\3042\308A\307E\305B\3093')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624326458142940461)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624326603329940462)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231127)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624326832379940462)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231127)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624327012309940462)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624327271205940462)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624327472724940462)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231127)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624327693385940462)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231127)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624327805137940463)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231127)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624328098721940463)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231127)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624328263801940463)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'DB_COLUMN'
,p_translate_from_text=>'DB_COLUMN'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624328428118940463)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624328669337940463)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624328872082940463)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231127)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624329084432940463)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624330749270940499)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624330808212940499)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231127)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624331033116940499)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_MIMETYPE'
,p_translate_from_text=>'XLIFF_SOURCE_MIMETYPE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624331269465940499)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624331450377940500)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624331653301940500)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624332027554940535)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624332281304940535)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231127)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624332471415940535)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_FILENAME'
,p_translate_from_text=>'XLIFF_SOURCE_FILENAME'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624332647125940535)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624332802472940535)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624333083052940536)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624333945544940570)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624334186884940570)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231127)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624334333339940570)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_CHARSET'
,p_translate_from_text=>'XLIFF_SOURCE_CHARSET'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624334526887940570)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624334795769940571)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624334986506940571)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624335286341940605)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624335384464940605)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231127)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624335558675940605)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_LASTUPD'
,p_translate_from_text=>'XLIFF_SOURCE_LASTUPD'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624335760651940605)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624335901014940606)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231127)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624336118953940606)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>273
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624336319511940606)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>275
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'attachment'
,p_translate_from_text=>'attachment'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624336598978940640)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102386787092561306.231127)
,p_translate_from_id=>wwv_flow_api.id(41102386787092561306)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624336780594940640)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231127)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624336951224940641)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231127)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624337153917940641)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231127)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624337363010940641)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231127)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624337576656940641)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231127)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624337799958940642)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231127)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624337954087940642)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231127)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624338191418940642)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231127)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624338399401940642)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231127)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624338590667940643)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231127)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624338772142940643)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231127)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624338955243940643)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231127)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624339352528940678)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102237169673561138.231127)
,p_translate_from_id=>wwv_flow_api.id(41102237169673561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624339559349940678)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231127)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'fa-star'
,p_translate_from_text=>'fa-star'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624339721127940678)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102236853289561138.231127)
,p_translate_from_id=>wwv_flow_api.id(41102236853289561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624339966935940678)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102235342731561137.231127)
,p_translate_from_id=>wwv_flow_api.id(41102235342731561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'modern'
,p_translate_from_text=>'modern'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624340199951940678)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231127)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624340376893940679)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102235697482561137.231127)
,p_translate_from_id=>wwv_flow_api.id(41102235697482561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624340532266940679)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231127)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624340743452940679)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231127)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>299
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624340943585940680)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231127)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624341163704940680)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231127)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>301
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#VALUE#'
,p_translate_from_text=>'#VALUE#'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624341335942940680)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231127)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH_CB'
,p_translate_from_text=>'SWITCH_CB'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624341673880940714)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624341790754940715)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231127)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624341953643940715)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231127)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624342148681940715)
,p_page_id=>1
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231127)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624342481607940749)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624342629573940749)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231127)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624342810043940750)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231127)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624343034607940750)
,p_page_id=>1
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231127)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624347105504940784)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624347350532940784)
,p_page_id=>5
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231127)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624347528395940785)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231127)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624347719503940785)
,p_page_id=>1
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231127)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624347937339940786)
,p_page_id=>3
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231127)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>319
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'INLINE'
,p_translate_from_text=>'INLINE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624348171359940788)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231127)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624348270352940790)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231127)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624348458809940792)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\7528\6237\540D')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624348666739940792)
,p_page_id=>9999
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231127)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\5BC6\7801')
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624348963902940792)
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41102376776579561264.231127)
,p_translate_from_id=>wwv_flow_api.id(41102376776579561264)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\684C\9762')
,p_translate_from_text=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624349174715940829)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624349365110940829)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624349582421940829)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624349988297940866)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624350106574940866)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231127)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624350336573940866)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223512614461043.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223512614461043)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624350559317940867)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624350764264940867)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231127)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624350921034940867)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624351131910940867)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624351349763940868)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231127)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624351503632940868)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624351767502940868)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624351932369940869)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624352170932940869)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624352305427940869)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231127)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624352561453940871)
,p_page_id=>4
,p_translated_flow_id=>231127
,p_translate_to_id=>wwv_flow_api.id(41106224268990461050.231127)
,p_translate_from_id=>wwv_flow_api.id(41106224268990461050)
,p_translate_column_id=>451
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_translate_from_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624352703737940872)
,p_translated_flow_id=>231127
,p_translate_to_id=>51127.231127
,p_translate_from_id=>51127
,p_translate_column_id=>476
,p_translate_to_lang_code=>'zh-cn'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF\7FFB\8BD1')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624353050204940913)
,p_page_id=>1
,p_translated_flow_id=>231124
,p_translate_to_id=>1.231124
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624353116371940913)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>2.231124
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624353378858940914)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>4.231124
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624353588815940914)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>5.231124
,p_translate_from_id=>5
,p_translate_column_id=>5
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624353752805940914)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>3.231124
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624353959656940914)
,p_page_id=>0
,p_translated_flow_id=>231124
,p_translate_to_id=>.231124
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624354183657940914)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>9999.231124
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Login Page'
,p_translate_from_text=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624354582461940953)
,p_page_id=>1
,p_translated_flow_id=>231124
,p_translate_to_id=>1.231124
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF Translation'
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624354778548940953)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>2.231124
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624354965769940953)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>4.231124
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624355136876940953)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>5.231124
,p_translate_from_id=>5
,p_translate_column_id=>6
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624355357917940954)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>3.231124
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624355511787940954)
,p_page_id=>0
,p_translated_flow_id=>231124
,p_translate_to_id=>.231124
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Global Page - Desktop'
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624355757706940954)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>9999.231124
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624355953984940967)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>2.231124
,p_translate_from_id=>2
,p_translate_column_id=>12
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624356124059940967)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>4.231124
,p_translate_from_id=>4
,p_translate_column_id=>12
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624356404401941005)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102404793277561377.231124)
,p_translate_from_id=>wwv_flow_api.id(41102404793277561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Delete'
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624356501452941005)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102405595656561378.231124)
,p_translate_from_id=>wwv_flow_api.id(41102405595656561378)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Create'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624356761710941005)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102419167005561436.231124)
,p_translate_from_id=>wwv_flow_api.id(41102419167005561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Apply Changes'
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624356964137941005)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102393347797561322.231124)
,p_translate_from_id=>wwv_flow_api.id(41102393347797561322)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Reset'
,p_translate_from_text=>unistr('\30EA\30BB\30C3\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624357173908941006)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102418745503561436.231124)
,p_translate_from_id=>wwv_flow_api.id(41102418745503561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Delete'
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624357325499941006)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102405155322561377.231124)
,p_translate_from_id=>wwv_flow_api.id(41102405155322561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Apply Changes'
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624357501221941006)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102403182293561375.231124)
,p_translate_from_id=>wwv_flow_api.id(41102403182293561375)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cancel'
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624357777345941006)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102395949763561327.231124)
,p_translate_from_id=>wwv_flow_api.id(41102395949763561327)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Create'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624357927531941006)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102419516741561437.231124)
,p_translate_from_id=>wwv_flow_api.id(41102419516741561437)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Create'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624358156735941006)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102385077281561305.231124)
,p_translate_from_id=>wwv_flow_api.id(41102385077281561305)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign In'
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624358353678941006)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102412948007561388.231124)
,p_translate_from_id=>wwv_flow_api.id(41102412948007561388)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Create'
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624358545260941007)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102417129425561434.231124)
,p_translate_from_id=>wwv_flow_api.id(41102417129425561434)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cancel'
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624358922096941041)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624359143649941041)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231124)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624359357076941041)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231124)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624359542329941041)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624359708193941041)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Password'
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624359980404941041)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231124)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624360189984941042)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231124)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624360343460941042)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231124)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624360534687941042)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231124)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624360766827941042)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source'
,p_translate_from_text=>'Xliff Source'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624360926971941042)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Username'
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624361118424941042)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624361346930941042)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231124)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624361544692941043)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624361744174941077)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231124)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Language Selector'
,p_translate_from_text=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624361968228941078)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'XLIFF Translation'
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624362184639941078)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231124)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'button'
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624362333392941078)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102396762051561368.231124)
,p_translate_from_id=>wwv_flow_api.id(41102396762051561368)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624362536504941078)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231124)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'button'
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624362794120941078)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231124)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624362944374941079)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102411153200561387.231124)
,p_translate_from_id=>wwv_flow_api.id(41102411153200561387)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumbs'
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624363104196941079)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102413667405561430.231124)
,p_translate_from_id=>wwv_flow_api.id(41102413667405561430)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624363361997941079)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231124)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff Files'
,p_translate_from_text=>'Cwr Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624363585058941079)
,p_page_id=>1
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231124)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'XLIFF Translation'
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624363746367941079)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102394131636561324.231124)
,p_translate_from_id=>wwv_flow_api.id(41102394131636561324)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumbs'
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624363907025941079)
,p_page_id=>1
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102446874054561482.231124)
,p_translate_from_id=>wwv_flow_api.id(41102446874054561482)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Page Navigation'
,p_translate_from_text=>unistr('\30DA\30FC\30B8\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624364107685941080)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231124)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624364310660941081)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231124)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624364534017941117)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102389739616561314.231124)
,p_translate_from_id=>wwv_flow_api.id(41102389739616561314)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624364631543941117)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102447780089561483.231124)
,p_translate_from_id=>wwv_flow_api.id(41102447780089561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624364816247941117)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231124)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624365052535941117)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102388275952561311.231124)
,p_translate_from_id=>wwv_flow_api.id(41102388275952561311)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624365251140941118)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102446159764561482.231124)
,p_translate_from_id=>wwv_flow_api.id(41102446159764561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624365458213941118)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102407522830561381.231124)
,p_translate_from_id=>wwv_flow_api.id(41102407522830561381)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624365628717941118)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102448134661561484.231124)
,p_translate_from_id=>wwv_flow_api.id(41102448134661561484)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Sign Out'
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A2\30A6\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624365823959941118)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102446531075561482.231124)
,p_translate_from_id=>wwv_flow_api.id(41102446531075561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624366053078941122)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624366225712941123)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624366416175941123)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624366651674941123)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624366856622941124)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624367014538941124)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624367278074941124)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624367475720941125)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624367661746941125)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624367815983941125)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102379728695561278.231124)
,p_translate_from_id=>wwv_flow_api.id(41102379728695561278)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Would you like to perform this delete action?'
,p_translate_from_text=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624368023452941126)
,p_translated_flow_id=>231124
,p_translate_to_id=>51127.231124
,p_translate_from_id=>51127
,p_translate_column_id=>80
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF Translation'
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624368244897941128)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102237960359561143.231124)
,p_translate_from_id=>wwv_flow_api.id(41102237960359561143)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Home'
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624368406867941128)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102394569073561325.231124)
,p_translate_from_id=>wwv_flow_api.id(41102394569073561325)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624368660062941128)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102411543260561387.231124)
,p_translate_from_id=>wwv_flow_api.id(41102411543260561387)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624368895395941129)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102383780759561303.231124)
,p_translate_from_id=>wwv_flow_api.id(41102383780759561303)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Remember username'
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624369010809941130)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231124)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624369271709941130)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231124)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624369492248941132)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231124)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624369607908941132)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231124)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624369890794941133)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231124)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_translate_from_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624370017469941133)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231124)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found'
,p_translate_from_text=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624370350521941166)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231124)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624370578319941167)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231124)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624370752490941167)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231124)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624370962145941167)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231124)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624371131097941167)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231124)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624371361309941167)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231124)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624371565086941167)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231124)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624373025511941202)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231124)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624373125568941202)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231124)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624373348077941202)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231124)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624373525856941203)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231124)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Id'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624373713171941203)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231124)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624373940376941203)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231124)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624374191207941203)
,p_page_id=>2
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231124)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624374350908941212)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231124)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insufficient privileges, user is not an Administrator'
,p_translate_from_text=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\7BA1\7406\8005\3067\306F\3042\308A\307E\305B\3093')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624374675825941247)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624374829757941247)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231124)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624375071170941248)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231124)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624375224753941248)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624375464541941248)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624375722081941248)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231124)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624375948136941248)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231124)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624376132407941249)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231124)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624376362591941249)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231124)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624376523806941249)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'DB_COLUMN'
,p_translate_from_text=>'DB_COLUMN'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624376779569941249)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624376923988941249)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624377182487941249)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231124)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624377382220941250)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624377791604941285)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624377977212941285)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231124)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624378121813941285)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_MIMETYPE'
,p_translate_from_text=>'XLIFF_SOURCE_MIMETYPE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624378371284941285)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624378533705941285)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624378774258941286)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624378963359941321)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624379080013941321)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231124)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624379222548941321)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_FILENAME'
,p_translate_from_text=>'XLIFF_SOURCE_FILENAME'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624379497405941321)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624379655097941321)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624379801771941322)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624380050074941356)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624380213770941356)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231124)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624380450311941356)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_CHARSET'
,p_translate_from_text=>'XLIFF_SOURCE_CHARSET'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624380601243941356)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624380845361941356)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624381041597941357)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624381366172941392)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624381464491941392)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231124)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624381643345941392)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_LASTUPD'
,p_translate_from_text=>'XLIFF_SOURCE_LASTUPD'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624381848463941392)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624382002640941393)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231124)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624382269010941393)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>273
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624382471095941394)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>275
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'attachment'
,p_translate_from_text=>'attachment'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624382850528941429)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102386787092561306.231124)
,p_translate_from_id=>wwv_flow_api.id(41102386787092561306)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624383063598941430)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231124)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624383249038941430)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231124)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624383453975941430)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231124)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624383615736941431)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231124)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624383821089941431)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231124)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624384087085941431)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231124)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624384298598941432)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231124)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624384467413941432)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231124)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624384606749941432)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231124)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624384847696941433)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231124)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624385051458941433)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231124)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624385282728941433)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231124)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624385426976941471)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102237169673561138.231124)
,p_translate_from_id=>wwv_flow_api.id(41102237169673561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624385602656941471)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231124)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'fa-star'
,p_translate_from_text=>'fa-star'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624385825019941471)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102236853289561138.231124)
,p_translate_from_id=>wwv_flow_api.id(41102236853289561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624386003424941471)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102235342731561137.231124)
,p_translate_from_id=>wwv_flow_api.id(41102235342731561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'modern'
,p_translate_from_text=>'modern'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624386219108941472)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231124)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624386481303941472)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102235697482561137.231124)
,p_translate_from_id=>wwv_flow_api.id(41102235697482561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624386678625941472)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231124)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624386873485941473)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231124)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>299
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624387000765941473)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231124)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624387244468941474)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231124)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>301
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#VALUE#'
,p_translate_from_text=>'#VALUE#'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624387547060941474)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231124)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH_CB'
,p_translate_from_text=>'SWITCH_CB'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624387986905941510)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624388049387941510)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231124)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624388244982941510)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231124)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624388422601941510)
,p_page_id=>1
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231124)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624388628596941544)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624388810863941545)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231124)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624389033072941545)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231124)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624389224299941545)
,p_page_id=>1
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231124)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624389442947941579)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624389630160941579)
,p_page_id=>5
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231124)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624389832760941579)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231124)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624390034901941579)
,p_page_id=>1
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231124)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624390345122941581)
,p_page_id=>3
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231124)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>319
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'INLINE'
,p_translate_from_text=>'INLINE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624390513004941583)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231124)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624390707477941585)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231124)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624390977340941586)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Username'
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624391160151941587)
,p_page_id=>9999
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231124)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Password'
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624391389725941587)
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41102376776579561264.231124)
,p_translate_from_id=>wwv_flow_api.id(41102376776579561264)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Desktop'
,p_translate_from_text=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624391579817941623)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624391633803941623)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624391892925941623)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624392163503941658)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624392390168941658)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231124)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624392537853941658)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223512614461043.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223512614461043)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624392741139941658)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624392930881941659)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231124)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624393141356941659)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624393333364941659)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624393531370941660)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231124)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624393790356941660)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624393990110941660)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624394196570941660)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624394316567941661)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624394576980941661)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231124)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624394772683941662)
,p_page_id=>4
,p_translated_flow_id=>231124
,p_translate_to_id=>wwv_flow_api.id(41106224268990461050.231124)
,p_translate_from_id=>wwv_flow_api.id(41106224268990461050)
,p_translate_column_id=>451
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_translate_from_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624394951830941664)
,p_translated_flow_id=>231124
,p_translate_to_id=>51127.231124
,p_translate_from_id=>51127
,p_translate_column_id=>476
,p_translate_to_lang_code=>'en'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF Translation'
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624395132763941705)
,p_page_id=>1
,p_translated_flow_id=>231128
,p_translate_to_id=>1.231128
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\D648')
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624395282933941705)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>2.231128
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624395473854941705)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>4.231128
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624395639121941706)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>5.231128
,p_translate_from_id=>5
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624395801407941706)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>3.231128
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624396052989941706)
,p_page_id=>0
,p_translated_flow_id=>231128
,p_translate_to_id=>.231128
,p_translate_from_id=>0
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C804\C5ED \D398\C774\C9C0 - \B370\C2A4\D06C\D1B1')
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624396231732941706)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>9999.231128
,p_translate_from_id=>9999
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\B85C\ADF8\C778 \D398\C774\C9C0')
,p_translate_from_text=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624396582094941744)
,p_page_id=>1
,p_translated_flow_id=>231128
,p_translate_to_id=>1.231128
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF \BC88\C5ED')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624396763664941745)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>2.231128
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624396994758941745)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>4.231128
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624397127176941745)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>5.231128
,p_translate_from_id=>5
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624397366038941745)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>3.231128
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624397545614941745)
,p_page_id=>0
,p_translated_flow_id=>231128
,p_translate_to_id=>.231128
,p_translate_from_id=>0
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C804\C5ED \D398\C774\C9C0 - \B370\C2A4\D06C\D1B1')
,p_translate_from_text=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624397775595941746)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>9999.231128
,p_translate_from_id=>9999
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624397988835941758)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>2.231128
,p_translate_from_id=>2
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\B370\C774\D130\B97C \AC80\C0C9\D558\B824\BA74 \AC80\C0C9 \B300\D654\C0C1\C790\C5D0 \AC80\C0C9\C5B4\B97C \C785\B825\D558\AC70\B098 \C5F4 \C81C\BAA9\C744 \B20C\B7EC \BC18\D658\B418\B294 \B808\CF54\B4DC\B97C \C81C\D55C\D569\B2C8\B2E4.</p>'),
'',
unistr('<p><strong>\C791\C5C5</strong> \B2E8\CD94\B97C \B20C\B7EC \B2E4\C591\D55C \AE30\B2A5\C744 \C218\D589\D560 \C218 \C788\C2B5\B2C8\B2E4. \C5EC\AE30\C5D0\B294 \D45C\C2DC\B418\AC70\B098 \C228\ACA8\C9C4 \C5F4 \C120\D0DD, \D45C\C2DC \C2DC\D000\C2A4\C640 \B2E4\C591\D55C \B370\C774\D130 \BC0F \D615\C2DD \C9C0\C815 \AE30\B2A5\C774 \D3EC\D568\B429\B2C8\B2E4. \CC28\D2B8, \ADF8\B8F9 \AE30\C900, \D53C\BC97 \C635\C158\C744 \C0AC\C6A9\D558\C5EC \B370\C774\D130 \BDF0\B97C \CD94\AC00\B85C \C815\C758\D560 \C218\B3C4 \C788\C2B5\B2C8\B2E4.</p>'),
'',
unistr('<p>\C0AC\C6A9\C790\C815\C758 \B0B4\C6A9\C744 \C800\C7A5\D558\B824\BA74 \BCF4\ACE0\C11C\B97C \C120\D0DD\D558\AC70\B098 \B2E4\C6B4\B85C\B4DC\B97C \B20C\B7EC \B370\C774\D130\B97C \C5B8\B85C\B4DC\D569\B2C8\B2E4. \AC00\C785 \C2DC \C815\AE30\C801\C73C\B85C \B370\C774\D130\B97C \C804\C1A1\D560 \C804\C790\BA54\C77C \C8FC\C18C\C640 \C2DC\AC04\BC94\C704\B97C \C785\B825\D569\B2C8\B2E4.<p>'),
'',
unistr('<p>\CD94\AC00 \C815\BCF4\B97C \BCF4\B824\BA74 [\C791\C5C5] \BA54\B274\C758 \C544\B798\CABD\C5D0 \C788\B294 [\B3C4\C6C0\B9D0]\C744 \B204\B974\C2ED\C2DC\C624.</p>'),
'',
unistr('<p>\B300\D654\C2DD \BCF4\ACE0\C11C\B97C \AE30\BCF8 \C124\C815\C73C\B85C \C7AC\C124\C815\D558\B824\BA74 <strong>\C7AC\C124\C815</strong> \B2E8\CD94\B97C \B204\B985\B2C8\B2E4.</p>')))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624398184232941759)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>4.231128
,p_translate_from_id=>4
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\B370\C774\D130\B97C \AC80\C0C9\D558\B824\BA74 \AC80\C0C9 \B300\D654\C0C1\C790\C5D0 \AC80\C0C9\C5B4\B97C \C785\B825\D558\AC70\B098 \C5F4 \C81C\BAA9\C744 \B20C\B7EC \BC18\D658\B418\B294 \B808\CF54\B4DC\B97C \C81C\D55C\D569\B2C8\B2E4.</p>'),
'',
unistr('<p><strong>\C791\C5C5</strong> \B2E8\CD94\B97C \B20C\B7EC \B2E4\C591\D55C \AE30\B2A5\C744 \C218\D589\D560 \C218 \C788\C2B5\B2C8\B2E4. \C5EC\AE30\C5D0\B294 \D45C\C2DC\B418\AC70\B098 \C228\ACA8\C9C4 \C5F4 \C120\D0DD, \D45C\C2DC \C2DC\D000\C2A4\C640 \B2E4\C591\D55C \B370\C774\D130 \BC0F \D615\C2DD \C9C0\C815 \AE30\B2A5\C774 \D3EC\D568\B429\B2C8\B2E4. \CC28\D2B8, \ADF8\B8F9 \AE30\C900, \D53C\BC97 \C635\C158\C744 \C0AC\C6A9\D558\C5EC \B370\C774\D130 \BDF0\B97C \CD94\AC00\B85C \C815\C758\D560 \C218\B3C4 \C788\C2B5\B2C8\B2E4.</p>'),
'',
unistr('<p>\C0AC\C6A9\C790\C815\C758 \B0B4\C6A9\C744 \C800\C7A5\D558\B824\BA74 \BCF4\ACE0\C11C\B97C \C120\D0DD\D558\AC70\B098 \B2E4\C6B4\B85C\B4DC\B97C \B20C\B7EC \B370\C774\D130\B97C \C5B8\B85C\B4DC\D569\B2C8\B2E4. \AC00\C785 \C2DC \C815\AE30\C801\C73C\B85C \B370\C774\D130\B97C \C804\C1A1\D560 \C804\C790\BA54\C77C \C8FC\C18C\C640 \C2DC\AC04\BC94\C704\B97C \C785\B825\D569\B2C8\B2E4.<p>'),
'',
unistr('<p>\CD94\AC00 \C815\BCF4\B97C \BCF4\B824\BA74 [\C791\C5C5] \BA54\B274\C758 \C544\B798\CABD\C5D0 \C788\B294 [\B3C4\C6C0\B9D0]\C744 \B204\B974\C2ED\C2DC\C624.</p>'),
'',
unistr('<p>\B300\D654\C2DD \BCF4\ACE0\C11C\B97C \AE30\BCF8 \C124\C815\C73C\B85C \C7AC\C124\C815\D558\B824\BA74 <strong>\C7AC\C124\C815</strong> \B2E8\CD94\B97C \B204\B985\B2C8\B2E4.</p>')))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624398520125941800)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102404793277561377.231128)
,p_translate_from_id=>wwv_flow_api.id(41102404793277561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0AD\C81C')
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624398660604941801)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102405595656561378.231128)
,p_translate_from_id=>wwv_flow_api.id(41102405595656561378)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0DD\C131')
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624398880774941801)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102419167005561436.231128)
,p_translate_from_id=>wwv_flow_api.id(41102419167005561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\BCC0\ACBD\C0AC\D56D \C801\C6A9')
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624399137698941801)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102393347797561322.231128)
,p_translate_from_id=>wwv_flow_api.id(41102393347797561322)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C7AC\C124\C815')
,p_translate_from_text=>unistr('\30EA\30BB\30C3\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624399376838941801)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102418745503561436.231128)
,p_translate_from_id=>wwv_flow_api.id(41102418745503561436)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0AD\C81C')
,p_translate_from_text=>unistr('\524A\9664')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624399548598941801)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102405155322561377.231128)
,p_translate_from_id=>wwv_flow_api.id(41102405155322561377)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\BCC0\ACBD\C0AC\D56D \C801\C6A9')
,p_translate_from_text=>unistr('\5909\66F4\306E\9069\7528')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624399729090941801)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102403182293561375.231128)
,p_translate_from_id=>wwv_flow_api.id(41102403182293561375)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\CDE8\C18C')
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624399918295941802)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102395949763561327.231128)
,p_translate_from_id=>wwv_flow_api.id(41102395949763561327)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0DD\C131')
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624400163991941802)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102419516741561437.231128)
,p_translate_from_id=>wwv_flow_api.id(41102419516741561437)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0DD\C131')
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624400343742941802)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102385077281561305.231128)
,p_translate_from_id=>wwv_flow_api.id(41102385077281561305)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0AC\C778\C778')
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A4\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624400565658941802)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102412948007561388.231128)
,p_translate_from_id=>wwv_flow_api.id(41102412948007561388)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0DD\C131')
,p_translate_from_text=>unistr('\4F5C\6210')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624400781265941803)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102417129425561434.231128)
,p_translate_from_id=>wwv_flow_api.id(41102417129425561434)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\CDE8\C18C')
,p_translate_from_text=>unistr('\53D6\6D88')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624401054616941837)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624401214885941837)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231128)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624401417921941837)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231128)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624401611290941837)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624401894460941838)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\BE44\BC00\BC88\D638')
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624402011926941838)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231128)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624402253106941838)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231128)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624402458976941838)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231128)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0AC\C6A9\C790 \C774\B984 \AE30\C5B5')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624402602137941838)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231128)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624402870136941838)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source'
,p_translate_from_text=>'Xliff Source'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624403046281941838)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0AC\C6A9\C790 \C774\B984')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624403250840941839)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624403437952941839)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231128)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624403676305941839)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624403951954941874)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231128)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\C5B8\C5B4 \C120\D0DD\AE30')
,p_translate_from_text=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624404167832941874)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('XLIFF \BC88\C5ED')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624404377583941874)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231128)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\B2E8\CD94')
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624404592377941874)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102396762051561368.231128)
,p_translate_from_id=>wwv_flow_api.id(41102396762051561368)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff File'
,p_translate_from_text=>'Cwr Xliff File'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624404785622941875)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231128)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\B2E8\CD94')
,p_translate_from_text=>unistr('\30DC\30BF\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624404939144941875)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231128)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624405127251941875)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102411153200561387.231128)
,p_translate_from_id=>wwv_flow_api.id(41102411153200561387)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\C774\B3D9 \ACBD\B85C')
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624405392513941875)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102413667405561430.231128)
,p_translate_from_id=>wwv_flow_api.id(41102413667405561430)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Message'
,p_translate_from_text=>'Cwr Message'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624405696325941875)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231128)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Cwr Xliff Files'
,p_translate_from_text=>'Cwr Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624405851523941875)
,p_page_id=>1
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231128)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('XLIFF \BC88\C5ED')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624406078047941876)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102394131636561324.231128)
,p_translate_from_id=>wwv_flow_api.id(41102394131636561324)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\C774\B3D9 \ACBD\B85C')
,p_translate_from_text=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624406241738941876)
,p_page_id=>1
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102446874054561482.231128)
,p_translate_from_id=>wwv_flow_api.id(41102446874054561482)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>unistr('\D398\C774\C9C0 \D0D0\C0C9')
,p_translate_from_text=>unistr('\30DA\30FC\30B8\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624406533586941877)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231128)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624406765507941877)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102387097430561307.231128)
,p_translate_from_id=>wwv_flow_api.id(41102387097430561307)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'apex_lang.emit_language_selector_list;'
,p_translate_from_text=>'apex_lang.emit_language_selector_list;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624407049023941914)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102389739616561314.231128)
,p_translate_from_id=>wwv_flow_api.id(41102389739616561314)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624407168368941914)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102447780089561483.231128)
,p_translate_from_id=>wwv_flow_api.id(41102447780089561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'---'
,p_translate_from_text=>'---'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624407328854941914)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231128)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_USER.'
,p_translate_from_text=>'&APP_USER.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624407595260941914)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102388275952561311.231128)
,p_translate_from_id=>wwv_flow_api.id(41102388275952561311)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\D648')
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624407700322941915)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102446159764561482.231128)
,p_translate_from_id=>wwv_flow_api.id(41102446159764561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624407936279941915)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102407522830561381.231128)
,p_translate_from_id=>wwv_flow_api.id(41102407522830561381)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624408186860941915)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102448134661561484.231128)
,p_translate_from_id=>wwv_flow_api.id(41102448134661561484)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0AC\C778\C544\C6C3')
,p_translate_from_text=>unistr('\30B5\30A4\30F3\30A2\30A6\30C8')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624408363548941915)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102446531075561482.231128)
,p_translate_from_id=>wwv_flow_api.id(41102446531075561482)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624408594841941919)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624408716839941920)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624408958433941920)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624409117265941921)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624409369072941921)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624409575840941921)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624409774064941922)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624409954730941922)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624410149281941922)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624410336208941923)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102379728695561278.231128)
,p_translate_from_id=>wwv_flow_api.id(41102379728695561278)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C774 \C0AD\C81C \C791\C5C5\C744 \C218\D589\D558\ACA0\C2B5\B2C8\AE4C?')
,p_translate_from_text=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624410515821941923)
,p_translated_flow_id=>231128
,p_translate_to_id=>51127.231128
,p_translate_from_id=>51127
,p_translate_column_id=>80
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF \BC88\C5ED')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624410725427941925)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102237960359561143.231128)
,p_translate_from_id=>wwv_flow_api.id(41102237960359561143)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\D648')
,p_translate_from_text=>unistr('\30DB\30FC\30E0')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624410927557941925)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102394569073561325.231128)
,p_translate_from_id=>wwv_flow_api.id(41102394569073561325)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624411114738941925)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102411543260561387.231128)
,p_translate_from_id=>wwv_flow_api.id(41102411543260561387)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Messages'
,p_translate_from_text=>'Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624411343236941926)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102383780759561303.231128)
,p_translate_from_id=>wwv_flow_api.id(41102383780759561303)
,p_translate_column_id=>103
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0AC\C6A9\C790 \C774\B984 \AE30\C5B5')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624411565704941927)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231128)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>111
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('\C774 \CCB4\D06C\BC15\C2A4\B97C \C120\D0DD\D560 \ACBD\C6B0 \C560\D50C\B9AC\CF00\C774\C158\C740 \C774\B984\C774 "LOGIN_USERNAME_COOKIE"\C778 \C601\AD6C \BE0C\B77C\C6B0\C800 \CFE0\D0A4\C5D0 \C0AC\C6A9\C790 \C774\B984\C744 \C800\C7A5\D569\B2C8\B2E4.'),
unistr('\B2E4\C74C \BC88\C5D0 \B85C\ADF8\C778 \D398\C774\C9C0\B85C \C774\B3D9\D558\BA74'),
unistr('\C790\B3D9\C73C\B85C \C0AC\C6A9\C790 \C774\B984 \D544\B4DC\C5D0 \C774 \AC12\C774 \CC44\C6CC\C9D1\B2C8\B2E4.'),
'</p>',
'<p>',
unistr('\C0AC\C6A9\C790 \C774\B984\C774 \CFE0\D0A4\C5D0 \C774\BBF8 \C800\C7A5\B41C \C0C1\D0DC\C5D0\C11C \C774 \CCB4\D06C\BC15\C2A4\C758 \C120\D0DD\C744 \D574\C81C\D560 \ACBD\C6B0'),
unistr('\C560\D50C\B9AC\CF00\C774\C158\C740 \C0AC\C6A9\C790 \C774\B984\C744 \BE48 \AC12\C73C\B85C \ACB9\CCD0\C501\B2C8\B2E4.'),
unistr('\BE0C\B77C\C6B0\C800\C758 \AC1C\BC1C\C790 \B3C4\AD6C\B97C \C0AC\C6A9\D558\C5EC \CFE0\D0A4\B97C \C644\C804\D788 \C81C\AC70\D560 \C218\B3C4 \C788\C2B5\B2C8\B2E4.'),
'</p>'))
,p_translate_from_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624411728174941927)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102355852902561239.231128)
,p_translate_from_id=>wwv_flow_api.id(41102355852902561239)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624411975423941929)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102390428569561317.231128)
,p_translate_from_id=>wwv_flow_api.id(41102390428569561317)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Files'
,p_translate_from_text=>'Xliff Files'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624412106342941929)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102408235277561383.231128)
,p_translate_from_id=>wwv_flow_api.id(41102408235277561383)
,p_translate_column_id=>143
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Cwr Messages'
,p_translate_from_text=>'Cwr Messages'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624412392943941930)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231128)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_translate_from_text=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624412501517941930)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102390592778561317.231128)
,p_translate_from_id=>wwv_flow_api.id(41102390592778561317)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\B370\C774\D130\B97C \CC3E\C744 \C218 \C5C6\C2B5\B2C8\B2E4')
,p_translate_from_text=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624412779931941963)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231128)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624412992641941963)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231128)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624413178507941964)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231128)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624413375437941964)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231128)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624413542133941964)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231128)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624413716070941964)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231128)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624413931364941964)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231128)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624414376357941998)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102392536522561321.231128)
,p_translate_from_id=>wwv_flow_api.id(41102392536522561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Charset'
,p_translate_from_text=>'Xliff Source Charset'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624414498778941998)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102391384822561320.231128)
,p_translate_from_id=>wwv_flow_api.id(41102391384822561320)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624414603859941998)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102391797538561321.231128)
,p_translate_from_id=>wwv_flow_api.id(41102391797538561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Filename'
,p_translate_from_text=>'Xliff Source Filename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624414852000941999)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102390941200561319.231128)
,p_translate_from_id=>wwv_flow_api.id(41102390941200561319)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID'
,p_translate_from_text=>'ID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624415000333941999)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102392180579561321.231128)
,p_translate_from_id=>wwv_flow_api.id(41102392180579561321)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Mimetype'
,p_translate_from_text=>'Xliff Source Mimetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624415282842941999)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106219727162461005.231128)
,p_translate_from_id=>wwv_flow_api.id(41106219727162461005)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Result'
,p_translate_from_text=>'Xliff Result'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624415481849941999)
,p_page_id=>2
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102392907773561322.231128)
,p_translate_from_id=>wwv_flow_api.id(41102392907773561322)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Xliff Source Lastupd'
,p_translate_from_text=>'Xliff Source Lastupd'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624415613525942008)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231128)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>257
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\AD8C\D55C\C774 \CDA9\BD84\D558\C9C0 \C54A\C2B5\B2C8\B2E4. \C0AC\C6A9\C790\AC00 \AD00\B9AC\C790\AC00 \C544\B2D9\B2C8\B2E4.')
,p_translate_from_text=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\7BA1\7406\8005\3067\306F\3042\308A\307E\305B\3093')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624415852284942041)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398775426561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398775426561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624416009107942041)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102413933315561431.231128)
,p_translate_from_id=>wwv_flow_api.id(41102413933315561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624416279128942041)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102397110894561369.231128)
,p_translate_from_id=>wwv_flow_api.id(41102397110894561369)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624416477991942042)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624416676472942042)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624416845981942042)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102399509426561372.231128)
,p_translate_from_id=>wwv_flow_api.id(41102399509426561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624417055003942042)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102399905087561372.231128)
,p_translate_from_id=>wwv_flow_api.id(41102399905087561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624417258931942042)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102384142341561304.231128)
,p_translate_from_id=>wwv_flow_api.id(41102384142341561304)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'1'
,p_translate_from_text=>'1'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624417467090942042)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231128)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624417633654942043)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'DB_COLUMN'
,p_translate_from_text=>'DB_COLUMN'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624417847366942043)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624418075813942043)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624418267871942043)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102399152969561372.231128)
,p_translate_from_id=>wwv_flow_api.id(41102399152969561372)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624418421519942043)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624418750062942077)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624418956326942077)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231128)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624419160231942077)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_MIMETYPE'
,p_translate_from_text=>'XLIFF_SOURCE_MIMETYPE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624419356363942078)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624419544546942078)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624419766855942078)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624419995258942111)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624420041057942112)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231128)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624420235294942112)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_FILENAME'
,p_translate_from_text=>'XLIFF_SOURCE_FILENAME'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624420456615942112)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624420639038942112)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624420843780942112)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624421190067942146)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624421301514942146)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231128)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624421546147942146)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_CHARSET'
,p_translate_from_text=>'XLIFF_SOURCE_CHARSET'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624421756935942147)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624421971658942147)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102415100682561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102415100682561432)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624422170002942147)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624422310915942180)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414788733561432.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414788733561432)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624422589688942181)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102397503361561370.231128)
,p_translate_from_id=>wwv_flow_api.id(41102397503361561370)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624422791564942181)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'XLIFF_SOURCE_LASTUPD'
,p_translate_from_text=>'XLIFF_SOURCE_LASTUPD'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624422917725942181)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624423184249942181)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102414362352561431.231128)
,p_translate_from_id=>wwv_flow_api.id(41102414362352561431)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624423341442942182)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>273
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624423551222942182)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>275
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'attachment'
,p_translate_from_text=>'attachment'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624423877724942216)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102386787092561306.231128)
,p_translate_from_id=>wwv_flow_api.id(41102386787092561306)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624423906286942216)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231128)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624424145137942216)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231128)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624424368738942216)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231128)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'REGION_SOURCE'
,p_translate_from_text=>'REGION_SOURCE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624424558389942217)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231128)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624424719722942217)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231128)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624424969431942217)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231128)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>282
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624425168316942218)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231128)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624425325071942218)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231128)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624425542584942218)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231128)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>283
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624425763270942219)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102406394566561378.231128)
,p_translate_from_id=>wwv_flow_api.id(41102406394566561378)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624425944662942219)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106224164767461049.231128)
,p_translate_from_id=>wwv_flow_api.id(41106224164767461049)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624426126892942219)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102420394639561438.231128)
,p_translate_from_id=>wwv_flow_api.id(41102420394639561438)
,p_translate_column_id=>285
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624426408721942253)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102237169673561138.231128)
,p_translate_from_id=>wwv_flow_api.id(41102237169673561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'IG'
,p_translate_from_text=>'IG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624426640730942253)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231128)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'fa-star'
,p_translate_from_text=>'fa-star'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624426805027942253)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102236853289561138.231128)
,p_translate_from_id=>wwv_flow_api.id(41102236853289561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624427086514942253)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102235342731561137.231128)
,p_translate_from_id=>wwv_flow_api.id(41102235342731561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'modern'
,p_translate_from_text=>'modern'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624427227896942253)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231128)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624427462734942254)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102235697482561137.231128)
,p_translate_from_id=>wwv_flow_api.id(41102235697482561137)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624427620412942254)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231128)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624427821605942254)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(17782874896560669.231128)
,p_translate_from_id=>wwv_flow_api.id(17782874896560669)
,p_translate_column_id=>299
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624428023703942255)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231128)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624428244879942255)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102235918956561138.231128)
,p_translate_from_id=>wwv_flow_api.id(41102235918956561138)
,p_translate_column_id=>301
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#VALUE#'
,p_translate_from_text=>'#VALUE#'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624428411961942256)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102236258839561138.231128)
,p_translate_from_id=>wwv_flow_api.id(41102236258839561138)
,p_translate_column_id=>302
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'SWITCH_CB'
,p_translate_from_text=>'SWITCH_CB'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624430361361942290)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624430456422942290)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231128)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624430679334942290)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231128)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624430803598942290)
,p_page_id=>1
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231128)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624434242668942324)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624434421689942325)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231128)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624434699407942325)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231128)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624434800130942325)
,p_page_id=>1
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231128)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624436693196942359)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382132688561299.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382132688561299)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624436825751942359)
,p_page_id=>5
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102416776481561434.231128)
,p_translate_from_id=>wwv_flow_api.id(41102416776481561434)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624437032009942360)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102402769485561375.231128)
,p_translate_from_id=>wwv_flow_api.id(41102402769485561375)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624437275957942360)
,p_page_id=>1
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102389101694561313.231128)
,p_translate_from_id=>wwv_flow_api.id(41102389101694561313)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624437454738942361)
,p_page_id=>3
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102398338858561371.231128)
,p_translate_from_id=>wwv_flow_api.id(41102398338858561371)
,p_translate_column_id=>319
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'INLINE'
,p_translate_from_text=>'INLINE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624438213538942364)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102379348105561277.231128)
,p_translate_from_id=>wwv_flow_api.id(41102379348105561277)
,p_translate_column_id=>343
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'return true;'
,p_translate_from_text=>'return true;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624439499293942365)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102447235879561483.231128)
,p_translate_from_id=>wwv_flow_api.id(41102447235879561483)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'has-username'
,p_translate_from_text=>'has-username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624439603676942367)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102382650151561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102382650151561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\C0AC\C6A9\C790 \C774\B984')
,p_translate_from_text=>unistr('\30E6\30FC\30B6\30FC\540D')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624439895119942367)
,p_page_id=>9999
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102383028322561301.231128)
,p_translate_from_id=>wwv_flow_api.id(41102383028322561301)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\BE44\BC00\BC88\D638')
,p_translate_from_text=>unistr('\30D1\30B9\30EF\30FC\30C9')
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624440055682942367)
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41102376776579561264.231128)
,p_translate_from_id=>wwv_flow_api.id(41102376776579561264)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('\B370\C2A4\D06C\D1B1')
,p_translate_from_text=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7')
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624443021636942403)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624443110331942404)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Language'
,p_translate_from_text=>'Message Language'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624443396529942404)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>421
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Message Text'
,p_translate_from_text=>'Message Text'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624444559610942437)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624444846998942437)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231128)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624445159113942438)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223512614461043.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223512614461043)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624445505095942438)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>422
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624446032441942438)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231128)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624446379678942438)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624446573737942439)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>423
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624446754661942439)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106224044723461048.231128)
,p_translate_from_id=>wwv_flow_api.id(41106224044723461048)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624446996941942439)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624447165340942439)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>424
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624447396596942440)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223833941461046.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223833941461046)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624447526295942440)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223675395461044.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223675395461044)
,p_translate_column_id=>425
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624447877513942440)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106223705347461045.231128)
,p_translate_from_id=>wwv_flow_api.id(41106223705347461045)
,p_translate_column_id=>426
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624448055502942442)
,p_page_id=>4
,p_translated_flow_id=>231128
,p_translate_to_id=>wwv_flow_api.id(41106224268990461050.231128)
,p_translate_from_id=>wwv_flow_api.id(41106224268990461050)
,p_translate_column_id=>451
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_translate_from_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(3624448277142942443)
,p_translated_flow_id=>231128
,p_translate_to_id=>51127.231128
,p_translate_from_id=>51127
,p_translate_column_id=>476
,p_translate_to_lang_code=>'ko'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>unistr('XLIFF \BC88\C5ED')
,p_translate_from_text=>unistr('XLIFF\306E\7FFB\8A33')
);
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
 p_id=>wwv_flow_api.id(41102379728695561278)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
end;
/
prompt --application/shared_components/security/authentications/username_password
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(3625195926539996717)
,p_name=>'Username = Password'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'my_authentication'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function my_authentication (',
'    p_username in varchar2,',
'    p_password in varchar2 )',
'    return boolean',
'is',
'begin',
'    return upper(p_username) = upper(p_password);',
'end;'))
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/application_express認証
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(41102237417564561139)
,p_name=>unistr('Application Express\8A8D\8A3C')
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
 p_id=>wwv_flow_api.id(41102376776579561264)
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
,p_navigation_list_id=>wwv_flow_api.id(41102238255566561143)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(41102343820777561226)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(41102376424505561263)
,p_nav_bar_list_template_id=>wwv_flow_api.id(41102343400388561225)
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
,p_user_interface_id=>wwv_flow_api.id(41102376776579561264)
,p_name=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_step_title=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200924023236'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(41102376776579561264)
,p_name=>unistr('\30DB\30FC\30E0')
,p_alias=>'HOME'
,p_step_title=>unistr('XLIFF\306E\7FFB\8A33')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200924023238'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102389101694561313)
,p_plug_name=>unistr('XLIFF\306E\7FFB\8A33')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(41102282266294561179)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102446874054561482)
,p_plug_name=>unistr('\30DA\30FC\30B8\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(41102264476543561166)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(41102445754385561481)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(41102331885384561216)
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(41102376776579561264)
,p_name=>'Xliff Files'
,p_alias=>'XLIFF-FILES'
,p_step_title=>'Xliff Files'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200924051150'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102390428569561317)
,p_plug_name=>'Cwr Xliff Files'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41102289980310561184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(XLIFF_RESULT) XLIFF_RESULT,',
'       XLIFF_SOURCE_FILENAME,',
'       XLIFF_SOURCE_MIMETYPE,',
'       XLIFF_SOURCE_CHARSET,',
'       XLIFF_SOURCE_LASTUPD',
'  from CWR_XLIFF_FILES'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Xliff Files'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(41102390592778561317)
,p_name=>'Xliff Files'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.:::3:P3_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>41102390592778561317
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41102390941200561319)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41102391384822561320)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41102391797538561321)
,p_db_column_name=>'XLIFF_SOURCE_FILENAME'
,p_display_order=>5
,p_column_identifier=>'C'
,p_column_label=>'Xliff Source Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41102392180579561321)
,p_db_column_name=>'XLIFF_SOURCE_MIMETYPE'
,p_display_order=>6
,p_column_identifier=>'D'
,p_column_label=>'Xliff Source Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41102392536522561321)
,p_db_column_name=>'XLIFF_SOURCE_CHARSET'
,p_display_order=>7
,p_column_identifier=>'E'
,p_column_label=>'Xliff Source Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41102392907773561322)
,p_db_column_name=>'XLIFF_SOURCE_LASTUPD'
,p_display_order=>8
,p_column_identifier=>'F'
,p_column_label=>'Xliff Source Lastupd'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41106219727162461005)
,p_db_column_name=>'XLIFF_RESULT'
,p_display_order=>38
,p_column_identifier=>'H'
,p_column_label=>'Xliff Result'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:CWR_XLIFF_FILES:XLIFF_RESULT:ID::XLIFF_SOURCE_MIMETYPE:XLIFF_SOURCE_FILENAME:XLIFF_SOURCE_LASTUPD:XLIFF_SOURCE_CHARSET:attachment::'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(41102421882648561446)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'411024219'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:XLIFF_RESULT'
,p_sort_column_1=>'NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102394131636561324)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41102301279973561194)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(41102237766815561142)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(41102355603049561236)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102393347797561322)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41102390428569561317)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(41102354317976561235)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102395949763561327)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41102390428569561317)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4F5C\6210')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41102395039446561325)
,p_name=>unistr('\30EC\30DD\30FC\30C8\306E\7DE8\96C6 - \30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(41102390428569561317)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41102395540553561326)
,p_event_id=>wwv_flow_api.id(41102395039446561325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41102390428569561317)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(41102376776579561264)
,p_name=>'Cwr Xliff File'
,p_alias=>'CWR-XLIFF-FILE'
,p_page_mode=>'MODAL'
,p_step_title=>'Cwr Xliff File'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200925055856'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102396762051561368)
,p_plug_name=>'Cwr Xliff File'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41102264476543561166)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CWR_XLIFF_FILES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102402769485561375)
,p_plug_name=>unistr('\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41102265419362561167)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102403182293561375)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41102402769485561375)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102404793277561377)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41102402769485561375)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102405155322561377)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41102402769485561375)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102405595656561378)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41102402769485561375)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4F5C\6210')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102397110894561369)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_item_source_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353487754561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102397503361561370)
,p_name=>'P3_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_item_source_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353123873561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102398338858561371)
,p_name=>'P3_XLIFF_SOURCE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_item_source_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_prompt=>'Xliff Source'
,p_source=>'XLIFF_SOURCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(41102353123873561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'XLIFF_SOURCE_MIMETYPE'
,p_attribute_03=>'XLIFF_SOURCE_FILENAME'
,p_attribute_04=>'XLIFF_SOURCE_CHARSET'
,p_attribute_05=>'XLIFF_SOURCE_LASTUPD'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102398775426561371)
,p_name=>'P3_XLIFF_SOURCE_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_item_source_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Xliff Source Filename'
,p_source=>'XLIFF_SOURCE_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353123873561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102399152969561372)
,p_name=>'P3_XLIFF_SOURCE_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_item_source_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Xliff Source Mimetype'
,p_source=>'XLIFF_SOURCE_MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353123873561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102399509426561372)
,p_name=>'P3_XLIFF_SOURCE_CHARSET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_item_source_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Xliff Source Charset'
,p_source=>'XLIFF_SOURCE_CHARSET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353123873561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102399905087561372)
,p_name=>'P3_XLIFF_SOURCE_LASTUPD'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_item_source_plug_id=>wwv_flow_api.id(41102396762051561368)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Xliff Source Lastupd'
,p_source=>'XLIFF_SOURCE_LASTUPD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353123873561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41102403221251561375)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41102403182293561375)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41102404007960561376)
,p_event_id=>wwv_flow_api.id(41102403221251561375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41102406394566561378)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(41102396762051561368)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\30D7\30ED\30BB\30B9\30FB\30D5\30A9\30FC\30E0Cwr Xliff File')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41106219319439461001)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\7FFB\8A33')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_xml  xmltype;',
'   l_blob blob;',
'begin',
'   -- from BLOB to XML',
'   select xliff_source into l_blob from cwr_xliff_files where id = :P3_ID;',
'   l_xml := xmltype.createXML(l_blob, NLS_CHARSET_ID(''AL32UTF8''), null);',
'   -- translate XLIFF',
'   cwr_translate_xliff(l_xml);',
'   -- from XML to BLOB',
'   l_blob := l_xml.getblobval(NLS_CHARSET_ID(''AL32UTF8''));',
'   update cwr_xliff_files set xliff_result = l_blob where id = :P3_ID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41102406716896561379)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41102405955325561378)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(41102396762051561368)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0Cwr Xliff File')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(41102376776579561264)
,p_name=>'Messages'
,p_alias=>'MESSAGES'
,p_step_title=>'Messages'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
,p_last_updated_by=>'DEMO'
,p_last_upd_yyyymmddhh24miss=>'20201219010247'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102408235277561383)
,p_plug_name=>'Cwr Messages'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41102289980310561184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CWR_MESSAGES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Cwr Messages'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(41106223512614461043)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(41106223675395461044)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(41106223705347461045)
,p_name=>'MESSAGE_LANGUAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MESSAGE_LANGUAGE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Message Language'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(41106223833941461046)
,p_name=>'MESSAGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MESSAGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Message Text'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(41106223924244461047)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(41106224044723461048)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(41106224268990461050)
,p_name=>unistr('\7DE8\96C6')
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ID:&ID.'
,p_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(41106223404835461042)
,p_internal_uid=>41106223404835461042
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(41141574527800563178)
,p_interactive_grid_id=>wwv_flow_api.id(41106223404835461042)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(41141574672781563178)
,p_report_id=>wwv_flow_api.id(41141574527800563178)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41141575174389563180)
,p_view_id=>wwv_flow_api.id(41141574672781563178)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(41106223512614461043)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41141575696358563183)
,p_view_id=>wwv_flow_api.id(41141574672781563178)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(41106223675395461044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41141576111067563185)
,p_view_id=>wwv_flow_api.id(41141574672781563178)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(41106223705347461045)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41141576687465563187)
,p_view_id=>wwv_flow_api.id(41141574672781563178)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(41106223833941461046)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41141577040147563189)
,p_view_id=>wwv_flow_api.id(41141574672781563178)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(41106223924244461047)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41141577920473563193)
,p_view_id=>wwv_flow_api.id(41141574672781563178)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(41106224268990461050)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102411153200561387)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41102301279973561194)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(41102237766815561142)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(41102355603049561236)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102412948007561388)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41102408235277561383)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4F5C\6210')
,p_button_position=>'ABOVE_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41102412081118561387)
,p_name=>unistr('\30EC\30DD\30FC\30C8\306E\7DE8\96C6 - \30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(41102408235277561383)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41102412514126561388)
,p_event_id=>wwv_flow_api.id(41102412081118561387)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41102408235277561383)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41106224164767461049)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(41102408235277561383)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('Cwr Messages - \5BFE\8A71\30B0\30EA\30C3\30C9\30FB\30C7\30FC\30BF\306E\4FDD\5B58')
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
,p_user_interface_id=>wwv_flow_api.id(41102376776579561264)
,p_name=>'Cwr Message'
,p_alias=>'CWR-MESSAGE'
,p_page_mode=>'MODAL'
,p_step_title=>'Cwr Message'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200924023238'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102413667405561430)
,p_plug_name=>'Cwr Message'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41102264476543561166)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CWR_MESSAGES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102416776481561434)
,p_plug_name=>unistr('\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41102265419362561167)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102417129425561434)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41102416776481561434)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102418745503561436)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41102416776481561434)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102419167005561436)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41102416776481561434)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102419516741561437)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41102416776481561434)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4F5C\6210')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102413933315561431)
,p_name=>'P5_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41102413667405561430)
,p_item_source_plug_id=>wwv_flow_api.id(41102413667405561430)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353487754561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102414362352561431)
,p_name=>'P5_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(41102413667405561430)
,p_item_source_plug_id=>wwv_flow_api.id(41102413667405561430)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353123873561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102414788733561432)
,p_name=>'P5_MESSAGE_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(41102413667405561430)
,p_item_source_plug_id=>wwv_flow_api.id(41102413667405561430)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Message Language'
,p_source=>'MESSAGE_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353123873561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102415100682561432)
,p_name=>'P5_MESSAGE_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(41102413667405561430)
,p_item_source_plug_id=>wwv_flow_api.id(41102413667405561430)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Message Text'
,p_source=>'MESSAGE_TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102353123873561234)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41102417294191561434)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41102417129425561434)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41102418023679561435)
,p_event_id=>wwv_flow_api.id(41102417294191561434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41102420394639561438)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(41102413667405561430)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\30D7\30ED\30BB\30B9\30FB\30D5\30A9\30FC\30E0Cwr Message')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41102420792635561438)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41102419901502561437)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(41102413667405561430)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0Cwr Message')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(41102376776579561264)
,p_name=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
,p_alias=>'LOGIN'
,p_step_title=>unistr('XLIFF\306E\7FFB\8A33 - \30B5\30A4\30F3\30A4\30F3')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(41102244459626561150)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200924023237'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102382132688561299)
,p_plug_name=>unistr('XLIFF\306E\7FFB\8A33')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41102290582085561185)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41102387097430561307)
,p_plug_name=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
,p_parent_plug_id=>wwv_flow_api.id(41102382132688561299)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(41102264476543561166)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41102385077281561305)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(41102382132688561299)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41102354257801561235)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30B5\30A4\30F3\30A4\30F3')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102382650151561301)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41102382132688561299)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_placeholder=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102352855381561233)
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
 p_id=>wwv_flow_api.id(41102383028322561301)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(41102382132688561299)
,p_prompt=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_placeholder=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(41102352855381561233)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41102384142341561304)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(41102382132688561299)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(41102383334021561302)||'.'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(41102352855381561233)
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
 p_id=>wwv_flow_api.id(41102385805619561306)
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
 p_id=>wwv_flow_api.id(41102385481884561305)
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
 p_id=>wwv_flow_api.id(41102386787092561306)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\30DA\30FC\30B8\30FB\30AD\30E3\30C3\30B7\30E5\306E\30AF\30EA\30A2')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41102386222413561306)
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
null;
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
