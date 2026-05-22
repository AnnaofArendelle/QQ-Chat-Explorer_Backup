#!/bin/bash
# QCE 独立模式启动脚本

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

echo ""
echo "[QCE] 独立模式"
echo "[QCE] 无需登录QQ即可浏览已导出的聊天记录"
echo ""

# 检查 Node.js
if ! command -v node &> /dev/null; then
    echo "[错误] 未检测到 Node.js"
    echo ""
    echo "解决方案:"
    echo "  1. 安装 Node.js: https://nodejs.org/"
    echo "  2. 或使用完整版 NapCat+QCE 包（运行 ./launcher-user.sh）"
    echo ""
    exit 1
fi

echo "[信息] 正在启动独立模式服务器..."
echo ""
node plugins/qq-chat-exporter/standalone.mjs "$@"
