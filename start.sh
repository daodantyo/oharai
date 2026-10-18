#!/bin/sh
# Mac / Linux 用。最新を取り込んでから、アプリを開く。
cd "$(dirname "$0")" || exit 1

git pull --ff-only || echo "最新の取り込みに失敗しました（通信、または手元の変更とぶつかっています）。"

case "$(uname)" in
  Darwin) open index.html ;;
  *) xdg-open index.html 2>/dev/null || echo "ブラウザで $(pwd)/index.html を開いてください。" ;;
esac
