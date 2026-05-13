#!/bin/sh
# IT 工具箱 - 本地 HTTP 服务器启动脚本
# 使用方法: sh /var/minis/shared/my-ios-app/start.sh

APP_DIR="/var/minis/shared/my-ios-app"
PORT="${1:-8765}"

cd "$APP_DIR" || exit 1

echo "=================================="
echo "  IT 工具箱 HTTP Server"
echo "=================================="
echo ""
echo "  地址: http://127.0.0.1:$PORT/"
echo "  目录: $APP_DIR"
echo ""
echo "  在 Safari 中打开上述地址，然后："
echo "  分享 → 添加到主屏幕"
echo ""
echo "  (Ctrl+C 停止服务器)"
echo "=================================="
echo ""

python3 -m http.server "$PORT"
