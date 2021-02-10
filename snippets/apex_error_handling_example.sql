create or replace function apex_error_handling_example (
    p_error in apex_error.t_error )
    return apex_error.t_error_result
is
    l_result          apex_error.t_error_result;
    l_reference_id    number;
    l_constraint_name varchar2(255);
begin
    l_result := apex_error.init_error_result (
                    p_error => p_error );

    -- APEXの内部エラー、例えばSQL文の不正であったり、PL/SQLコードが実行できない、などは
    -- エラーを報告する文字列にセキュリティ上、開示すべきではない情報が含まれる場合があります。
    -- このようなセキュリティ上の問題の発生を避けるため、このようなエラーのテキストをより一般的な
    -- エラー・メッセージに書き換え、元々のメッセージを別途ログとして保存し、問題の調査に利用できる
    -- ようにします。
    if p_error.is_internal_error then
	-- 一般的なエラー(ページやアプリケーションのアクセス不許可といった
	-- 認可やセッション、セッション・ステートに関するエラー)を除いた
	-- すべてのエラーをマスクします。
        if not p_error.is_common_runtime_error then
	    -- 自律トランザクションによるエラーのロギングを実施します。
	    -- reference# としてl_reference_idを返します。
            -- l_reference_id := log_error (
            --                       p_error => p_error );
            --

	    -- セキュリティ上の問題を含む全てのメッセージを一般的なエラー・メッセージに
	    -- 置き換えます。
            l_result.message         := 'An unexpected internal application error has occurred. '||
                                        'Please get in contact with XXX and provide '||
                                        'reference# '||to_char(l_reference_id, '999G999G999G990')||
                                        ' for further investigation.';
            l_result.additional_info := null;
        end if;
    else
        -- エラーはいつでもインラインで表示します。
        -- 注意: マニュアルで表形式フォームを作成した場合(apex_item/htmldb_itemをSQL文
        --       にて使用)は、"エラー・ページ"を選択し、入力データを失わないようにできます。
        l_result.display_location := case
                                       when l_result.display_location = apex_error.c_on_error_page then apex_error.c_inline_in_notification
                                       else l_result.display_location
                                     end;

        -- 注意: もし、ORAエラーのメッセージをわかりやすくしたいだけであれば、
	--       名前が APEX.ERROR.ORA-番号 というパターンのテキスト・メッセージとして登録できます。
        --       カスタム・コードを実装する必要はありません。
        --

        -- もし、以下の様な制約に関する違反の場合は
        --
        --   -) ORA-00001: unique constraint violated
        --   -) ORA-02091: transaction rolled back (-> can hide a deferred constraint)
        --   -) ORA-02290: check constraint violated
        --   -) ORA-02291: integrity constraint violated - parent key not found
        --   -) ORA-02292: integrity constraint violated - child record found
        --
        -- 違反した制約名から、より分かりやすいエラー・メッセージに置き換えます。
        -- メッセージが見つからない場合は、元々のORAエラーのメッセージを使います。
        if p_error.ora_sqlcode in (-1, -2091, -2290, -2291, -2292) then
            l_constraint_name := apex_error.extract_constraint_name (
                                     p_error => p_error );

            -- ORIGINAL CODE IN EXAMPLE --
            -- begin
            --     select message
            --       into l_result.message
            --       from constraint_lookup
            --      where constraint_name = l_constraint_name;
            -- exception when no_data_found then null; -- not every constraint has to be in our lookup table
            -- end;

            -- REPLACED WITH THE CODE FROM ROEL HARTMAN'S ARTICLE
            -- 制約に対応したメッセージが見つからないときは、TODO として、
            -- テキスト・メッセージの更新を促します。
            l_result.message := apex_lang.message(l_constraint_name);
            if l_result.message = l_constraint_name then -- no message registered
                apex_lang.create_message(
                    p_application_id => v('APP_ID')
                    , p_name => l_constraint_name
                    , p_language => 'ja'
                    , p_message_text => 'TODO'
                );
                commit;
            end if;
            -- END OF CUSTOMIZED CODE.
        end if;

        -- ORAエラーが発生した場合、例えば raise_application_error(-20xxx, '...') 
        -- が表トリガーやAPEXのプロセスとして呼び出されたPL/SQLパッケージで発生した場合、
        -- 対応するメッセージが見つけられないときは、すべてのエラー・スタックの代わりに
        -- 実際のエラーのテキストを表示するようにします。
        if p_error.ora_sqlcode is not null and l_result.message = p_error.message then
            l_result.message := apex_error.get_first_ora_error_text (
                                    p_error => p_error );
        end if;

        -- 関連するアイテムや表形式フォームの列が設定されていない場合は、
        -- apex_error.auto_set_associated_item を使用して、影響を受けた領域を
        -- ORAエラーの種類や制約の名前、列の名前を元に、自動的に推定します。
        if l_result.page_item_name is null and l_result.column_alias is null then
            apex_error.auto_set_associated_item (
                p_error        => p_error,
                p_error_result => l_result );
        end if;
    end if;

    return l_result;
end apex_error_handling_example;
