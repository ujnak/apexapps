/*
対話グリッドのリージョンの静的IDはIGTRANS、インライン・ダイアログの静的IDはTRANSLATEとする。
*/
const OPEN_TRANSLATE_DIALOG = {
    name: "open-translate-dialog",
    action: function( event, element, args ) {
        let view = apex.region("IGTRANS").call("getCurrentView"),
            model = view.model;
        let record = model.getRecord(args.id);
        apex.item(args.id_item).setValue(args.id);
        apex.item(args.source_item).setValue(model.getValue(record,"SOURCE_TEXT"));
        apex.item(args.target_item).setValue(model.getValue(record,"TARGET_TEXT"));
        apex.theme.openRegion("TRANSLATE");
    }
};

const CLOSE_TRANSLATE_DIALOG = {
    name: "close-translate-dialog",
    action: function( event, element, args ) {
        let view = apex.region("IGTRANS").call("getCurrentView"),
            model = view.model;
        let record = model.getRecord(apex.item(args.id_item).getValue());
        model.setValue(record, "TARGET_TEXT", apex.item(args.target_item).getValue());
        apex.theme.closeRegion("TRANSLATE");
    }
};