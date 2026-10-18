# 月夜祓（Tsukiyobarai）

## 構成

- `index.html` に HTML・CSS・JS がすべて入った一枚物。ビルド・依存・テストはない。
- `norito.mp3` は祝詞の音声（約4.8MB）。`<audio id="noritoAudio" preload="none">` から読む。
- フォントは Google Fonts（Shippori Mincho / Zen Kaku Gothic New）を `<link>` で読み込む。

## 画面

- 画面は `<section class="scene" id="sN">`（N = 1〜17）。`go(n)` で切り替え、`navStack` と `goBack()` で戻る。
- `go()` は画面を離れるたびに祝詞を止めて先頭に戻し、自動進行タイマーも解除する。
- s1 入口 / s2 手水 / s3 祝詞 / s4 作法 / s5 御札（参拝を記録）/ s6 運勢みくじ / s9 方位を知る（恵方と方位磁針）/ s11 恋みくじ / s13 金運みくじ / s14 御朱印 / s15 診断。`go()` の中の `if(n===…)` で各画面の初期化を呼ぶ。

## 保存

`localStorage` のキーは `mikuji-day`（一日一籤）、`sanpai`（参拝の記録）、`mbti`（診断結果）。

## 注意

- 方位磁針はスマホの方位センサー用。センサーの無いPCでは `startCompass()` が3秒後に案内を出して終わる。
- 画面の文言は日本語。既存の言い回し（です・ます調、祓い・参拝の語彙）に合わせる。
- コミットメッセージは、これまでの履歴に合わせて英語の短い命令形（例: `Weight the shimenawa and the shide`）。

## 複数のPCで作業する

作業の正本は GitHub（`daodantyo/oharai`）に置く。どのPCからでも続けられるようにするための決まり。

- 作業を始めるときは、まず最新を取り込む（`git pull`）。手元のPCでは `start.sh`（Mac / Linux）か `start.bat`（Windows）が、取り込みとアプリの起動をまとめてやる。
- 作業を終えるときは、コミットして GitHub へ push する。push していない作業は、他のPCから見えない。
- APIキー・トークンなどの秘密情報はコミットしない。
- PCごとの個人設定（`~/.claude/`）はリポジトリに入らない。共有したいものだけを `.claude/settings.json` や `.mcp.json` に移す。

## 確認方法

ブラウザで `index.html` を開く。音とフォントを確かめるときは `python3 -m http.server` 経由でも開く。
