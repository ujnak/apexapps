var mediaRecorder = null;
var mimeType = '';
var chunks = [];
var recording = null; // 録音のBlobデータ

const CONSTRAINTS = {"video": false, "audio": true};

/*
 * 録音を開始する。
 */
const START_AUDIO_RECORDING = {
    name: "start-audio-recording",
    action: function(event, element, args) {
        if (mediaRecorder.state == "inactive") {
            console.log("start audio recording");
            mediaRecorder.start();
        }
    }
};

/*
 * 録音を停止する。
 */
const STOP_AUDIO_RECORDING = {
    name: "stop-audio-recording",
    action: function(event, element, args) {
        if (mediaRecorder.state == "recording") {
            console.log("stop audio recording");
            mediaRecorder.stop();
        }
    }
};

/*
 * Whisper APIを呼び出して、文字起こしを実行する。
 * 文字列はargs.targetとして指定されたページ・アイテムに保存する。
 */
const WHISPER_TRANSCRIBE = {
    name: "whisper-transcribe",
    action: function(event, element, args) {
        if (recording !== null) {
            let formData = new FormData();
            formData.append("file", recording);
            let request = new XMLHttpRequest();

            request.onreadystatechange = () => {
                if (request.readyState === 4) {
                    let response_json = JSON.parse(request.response);
                    $s(args.target, response_json.text);
                }
            };
            request.open("POST", args.url);
            request.send(formData);
        }
    }
}

/*
 * ページ・ロード時に実行する。 
 */
window.onload = () => {

/* アクションの初期化 */
apex.actions.add([START_AUDIO_RECORDING,STOP_AUDIO_RECORDING,WHISPER_TRANSCRIBE]);

/*
 * 音声レコーダーの初期化。
 */
navigator.mediaDevices
    .getUserMedia(CONSTRAINTS)
    .then((stream) => {
    mediaRecorder = new MediaRecorder(stream);
    /* 再生の準備ができたときに呼ばれる */
    mediaRecorder.ondataavailable = (e) => {
        mimeType = e.data.type;
        chunks.push(e.data);
        console.log("data available", e.data);
    };
    /* 録音を停止したときに呼ばれる。 */
    mediaRecorder.onstop = () => {
        recording = new Blob(chunks, {'type': mimeType});
        chunks = []; // 今までの録音は削除。
        player.src = window.URL.createObjectURL(recording);
        console.log("audio recorder stopped.");
    };
})
.catch(function (e) {
    alert(e);
});
/* onload終了 */
}