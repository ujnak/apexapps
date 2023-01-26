/*
 * インライン・ポップアップを開く。
 */
const OPEN_INLINE_POPUP = {
    name: "open-inline-popup",
    action: (event, element, args) => {
        apex.item(args.target).setValue(
            apex.item(args.source).getValue()
        );
        apex.theme.openRegion(args.region);
    }
};

/*
 * インライン・ポップアップを閉じる。
 */
const CLOSE_INLINE_POPUP = {
    name: "close-inline-popup",
    action: (event, element, args) => {
        apex.item(args.target).setValue(
            apex.item(args.source).getValue()
        );
        apex.theme.closeRegion(args.region);
    }
};

/*
 * アクションの初期化。
 */
apex.jQuery(window).on('theme42ready', () => {
    apex.actions.add([OPEN_INLINE_POPUP,CLOSE_INLINE_POPUP]);
});