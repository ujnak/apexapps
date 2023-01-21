const COPY_BY_BUTTON =
{
    name: "copy-by-button",
    action: function( event, element, args ) {
        let text = document.getElementById(args.id).textContent;
        // クリップボードにコピー。
        navigator.clipboard.writeText(text);
    }
};