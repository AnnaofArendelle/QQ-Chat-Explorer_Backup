==================================================
NapCat + QQ Chat Exporter - 完整包
==================================================
NapCat 版本: v4.18.2
QCE 版本: 5.5.64
平台: Linux-x64
构建时间: 2026-05-18 16:16:03
==================================================

包含内容:
- NapCat v4.18.2
- QQ Chat Exporter 插件 5.5.64
- 预配置的 Web 界面
- 独立模式支持（无需登录QQ）

如果你是第一次接触项目，优先使用 Shell 模式，不建议先折腾 Framework 模式。

使用方法:
1. 解压到任意目录
2. 完整模式: 运行 ./launcher-user.sh (需要登录QQ，支持导出新记录)
3. 独立模式: 运行 ./start-standalone.sh (无需登录，仅浏览已导出文件)
4. 浏览器访问: http://localhost:40653/qce-v4-tool
   完整模式需输入控制台显示的访问令牌

注意: 首次运行需执行: chmod +x launcher-user.sh start-standalone.sh

独立模式说明:
- 无需安装或登录QQ
- 可浏览已导出的聊天记录
- 可使用资源画廊（图片/视频/音频）
- 不支持导出新的聊天记录

自定义QQ路径:
- 如果QQ安装在非标准位置，可设置环境变量:
  export NAPCAT_QQ_PATH=/your/custom/path/qq
  ./launcher-user.sh

默认支持的QQ路径: /opt/QQ/qq, /usr/share/QQ/qq, /opt/linuxqq/qq

Linux 说明:
- 已预编译 qq_magic.so 解决 qq_magic_napi_register 符号问题
- 启动脚本会自动加载，无需额外配置

系统要求:
- 已安装的 QQNT（启动时会自动同步本机 QQNT 的版本信息）
- 下载地址: https://im.qq.com/
- 独立模式需要 Node.js 18+

常见问题:
- 如果启动时提示 `Cannot find package 'express'`，通常是当前安装包文件损坏或缺失了。
- 最简单的处理方式是重新下载官方完整包，完整解压后直接覆盖当前目录，再重新运行 `launcher-user.bat`。

支持:
- NapCat: https://github.com/NapNeko/NapCatQQ
- QCE 插件: https://github.com/shuakami/qq-chat-exporter
==================================================
