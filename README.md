# 月夜祓（Tsukiyobarai）

祓い清めと16タイプ性格診断の一枚物ウェブアプリです。ビルドも依存もなく、`index.html` と `norito.mp3` だけで動きます。

## どのPCでも始める

### A. ブラウザだけで（インストール不要）

[claude.ai/code](https://claude.ai/code) を開き、リポジトリ `daodantyo/oharai` を選んで作業を始めます。作業はクラウド上で行われ、結果は GitHub に残ります。

### B. 手元のPCで

初回だけ clone します（Macでの詳しい手順は次の節）。

```sh
git clone https://github.com/daodantyo/oharai.git
```

2回目以降は、次のどちらか1つで「最新を取り込む → アプリを開く」まで済みます。

- Mac / Linux: `./start.sh`
- Windows: `start.bat` をダブルクリック

`start.bat` は Windows 実機での動作確認をしていません。

## Macで動かす

```sh
git clone https://github.com/daodantyo/oharai.git
cd oharai
git checkout claude/lucid-cannon-p2dtav   # mainに取り込み済みなら不要
open index.html                           # 既定のブラウザで開く
```

`open index.html` で表示されない・音が出ないときは、ローカルサーバー経由で開きます。

```sh
python3 -m http.server 8000   # → http://localhost:8000
```

`python3` が無いMacでは、初回に Xcode Command Line Tools のインストールを求められます。

### 注意

- 祝詞（`norito.mp3`）の再生には、画面上の「神」を押す操作が必要です（ブラウザの自動再生規制のため）。
- フォント（Shippori Mincho / Zen Kaku Gothic New）は Google Fonts から読み込むため、初回はネット接続が必要です。オフラインでは代替フォントで表示されます。
- 方位磁針（方位の画面）はスマホの方位センサー用です。センサーのないMacでは、押して数秒後に「この端末では方位センサーが働いていないようです」と表示されます。
- 参拝・おみくじ・診断の記録はブラウザの `localStorage` に保存されます。ブラウザやPCが違えば引き継がれません。
- Mac実機のSafariでの動作確認は、まだ行っていません。
