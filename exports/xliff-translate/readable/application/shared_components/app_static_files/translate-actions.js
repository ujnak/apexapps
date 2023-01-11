/*
対話グリッドのリージョンの静的IDはIGTRANS、インライン・ダイアログの静的IDはTRANSLATEとする。
ページ・アイテムとしてP3_GID、P3_SOURCE_TEXT、P3_TARGET_TEXTが参照可能であることが前提。
*/
const OPEN_TRANSLATE_DIALOG = {
    name: "open-translate-dialog",
    action: function( event, element, args ) {
        let view = apex.region("IGTRANS").call("getCurrentView"),
            model = view.model;
        let record = model.getRecord(args.id);
        apex.items.P3_GID.setValue(args.id);
        apex.items.P3_SOURCE_TEXT.setValue(model.getValue(record,"SOURCE_TEXT"));
        apex.items.P3_TARGET_TEXT.setValue(model.getValue(record,"TARGET_TEXT"));
        apex.theme.openRegion("TRANSLATE");
    }
};

const CLOSE_TRANSLATE_DIALOG = {
    name: "close-translate-dialog",
    action: function( event, element, args ) {
        let view = apex.region("IGTRANS").call("getCurrentView"),
            model = view.model;
        let record = model.getRecord(apex.items.P3_GID.getValue());
        model.setValue(record, "TARGET_TEXT", apex.items.P3_TARGET_TEXT.getValue());
        apex.theme.closeRegion("TRANSLATE");
    }
};

/* apex.actioins.addに渡す配列。 */
const TRANSLATE_ACTIONS = [OPEN_TRANSLATE_DIALOG, CLOSE_TRANSLATE_DIALOG];