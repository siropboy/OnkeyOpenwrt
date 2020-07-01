#=================================================
# Description: Build OpenWrt using GitHub Actions
# Author: sirpdboy
# https://github.com/sirpdboy/OnkeyOpenwrt
#!/bin/bash
git clone https://github.com/coolsnowwolf/lede.git
cd lede
git clone https://github.com/siropboy/mypackages package/mypackages
git clone https://github.com/siropboy/mysmall package/mysmall
./scripts/feeds update -a
sed -i 's/= "unreachable"/= "default"/g' feeds/luci/applications/luci-app-mwan3/luasrc/model/cbi/mwan/policyconfig.lua
sed -i 's/带宽监控/监控/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
rm -rf ./feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system/poweroff.htm
wget -P  ./feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system https://raw.githubusercontent.com/siropboy/other/master/patch/poweroff/poweroff.htm 
rm -rf ./feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/system.lua 
wget -P  ./feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin https://raw.githubusercontent.com/siropboy/other/master/patch/poweroff/system.lua 
#cp -rf  ../patch/system  feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system/system.lua
#cp -rf  ../patch/power.htm  feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system/poweroff.htm
#cp -rf  ../patch/policy  feeds/luci/applications/luci-app-mwan3/luasrc/model/cbi/mwan/policyconfig.lua
#sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
sed -i 's/实时流量监测/监测/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
sed -i 's/网络存储/存储/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/Turbo ACC 网络加速/ACC网络加速/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/解锁网易云灰色歌曲/解锁灰色歌曲/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
sed -i '/filter_aaaa/d' package/network/services/dnsmasq/files/dhcp.conf
#sed -i '/filter-aaaa/d' package/network/services/dnsmasq/files/dnsmasq.init
#sed -i 's/800/1/g' package/mypackages/luci-app-fileassistant/luasrc/controller/fileassistant.lua
#date=`date +%m.%d.%Y`
#sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D by sirpdboy'/g" package/base-files/files/etc/openwrt_release
#sed -i "s/# REVISION:=x/REVISION:= $date/g" include/version.mk
rm -rf ./package/lean/default-settings/files/zzz-default-settings
wget -P package/lean/default-settings/files  https://raw.githubusercontent.com/siropboy/other/master/patch/default-settings/zzz-default-settings
rm -rf ./package/lean/autocore/files/index.htm
wget -P package/lean/autocore/files  https://raw.githubusercontent.com/siropboy/other/master/patch/autocore/files/index.htm
rm -rf ./package/lean/autocore/files/cpuinfo
wget -P package/lean/autocore/files https://raw.githubusercontent.com/siropboy/other/master/patch/autocore/files/sbin/cpuinfo
##DDNS
#rm -rf ./feeds/packages/net/ddns-scripts
#rm -rf ./feeds/luci/applications/luci-app-ddns
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_aliyun package/lean/ddns-scripts_aliyun
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_dnspod package/lean/ddns-scripts_dnspod
#svn co https://github.com/openwrt/packages/branches/openwrt-18.06/net/ddns-scripts feeds/packages/net/ddns-scripts
#svn co https://github.com/openwrt/luci/branches/openwrt-18.06/applications/luci-app-ddns feeds/luci/applications/luci-app-ddns
./scripts/feeds install -a
cd ../
exit 0
