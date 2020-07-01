## OnkeyOpenwrt 基于原生Lean大 OpenWRT 的固件(AS IS, NO WARRANTY!!!)

### 发布地址：
https://github.com/sirpdboy/OnkeyOpenwrt

### 追新党可以在Action中取每日更新（可能会翻车，风险自担）：
https://github.com/sirpdboy/OnkeyOpenwrt/actions

### 本地一键编译命令（注意装好依赖）：
git clone https://github.com/sirpdboy/onekeyopenwrtlean &&cd OnkeyOpenwrt&&bash onekeyopenwrtlean.sh

### 注意事项：
1.IRQ脚本依赖nohup组件，fork后自行魔改的用户请补全依赖

2.登陆IP：192.168.1.1 密码：password

3.OP内置升级可用

4.SSRP使用姿势： ①添加你要的订阅链接 ②再在最后加一行空行 ③右下角点一下保存并应用 ④更新所有订阅服务器节点

5.遇到上不了网的，请自行排查自己的ipv6联通情况，或禁用ipv6（同时禁用WAN和LAN的ipv6）

### 版本信息：
LUCI版本：LEAN当日最新

### 特性及功能：
1.优化界面和菜单分类更直观合理

2.内置二款主题，包含SSRP，openclash，ADBYBY，微信推送，网易云解锁，SmartDNS，网络唤醒，DDNS，UPNP，FullCone(防火墙中开启)，BBR（默认开启）



OpenWrt 一键安装常用插件
说明

软件不定期同步大神库更新，适合一键下载到package目录下，用于openwrt编译

src-git mypackages https://github.com/siropboy/mypackages

openwrt 固件编译自定义主题与软件
luci-app-autopoweroff ------------------openclash图形
luci-app-advancedsetting ------------------系统高级设置
luci-app-control-mia ------------------时间控制
luci-app-control-timewol ------------------定时唤醒
luci-app-control-webrestriction ------------------访问控制
luci-app-control-weburl -----------------网址过滤
luci-app-cpulimit ------------------CPU限制
luci-app-eqos ------------------EQS网速控制
luci-app-flowoffload-leo -----------------ACC加速工具
luci-app-koolddns ------------------KOOL域名DNS解析工具
luci-app-koolproxyR ------------------经典去广告
luci-theme-opentomcat ------------------仿LEDE主题（适配18.06）

感谢LEAN大，感谢LEO大，感谢SIRPDBOY等大神分享源码，你可以随意使用其中的源码，但请注明出处。