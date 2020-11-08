echo '修改时区'
#sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate
echo '添加软件包'
git clone https://github.com/sirpdboy/sirpbboy-package ./package/diy
svn co https://github.com/siropboy/luci-app-vssr-plus/trunk/ ./package/luci-app-vssr-plus
svn co https://github.com/jerrykuku/luci-app-vssr/trunk  ./package/new/luci-app-vssr
svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-package/trunk/package package/lienol
#git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
#sed -i '$a\chdbits.co\n\www.cnscg.club\n\pt.btschool.club\n\et8.org\n\www.nicept.net\n\pthome.net\n\ourbits.club\n\pt.m-team.cc\n\hdsky.me\n\ccfbits.org' ./package/luci-app-passwall/root/usr/share/passwall/rules/direct_host
#sed -i '$a\docker.com\n\docker.io' ./package/luci-app-passwall/root/usr/share/passwall/rules/proxy_host
#sed -i '/global_rules/a option auto_update 1\n option week_update 0\n option time_update 5' ./package/luci-app-passwall/root/etc/config/passwall
#sed -i '/global_subscribe/a option auto_update_subscribe 1\noption week_update_subscribe 7\noption time_update_subscribe 5' ./package/luci-app-passwall/root/etc/config/passwall

#rm -rf package/lean/v2ray && svn co https://github.com/xiaorouji/openwrt-package/trunk/package/v2ray diy/v2ray
#rm -rf package/lean/v2ray-plugin && svn co https://github.com/xiaorouji/openwrt-package/trunk/package/v2ray-plugin diy/v2ray-plugin
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/ssocks ./package/lienol/ssocks
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-plus ./package/lienol/trojan-plus
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-go ./package/lienol/trojan-go

rm -rf ./package/lean/luci-theme-argon
rm -rf ./package/lean/trojan
rm -rf ./package/lean/v2ray
rm -rf ./package/lean/v2ray-plugin
rm -rf ./package/lean/luci-app-netdata
rm -rf ./package/lean/luci-theme-opentomcat
rm -rf ./package/diy/autocore
# rm -rf ./package/diy/default-settings
# rm -rf ./package/lean/autocore
rm -rf ./package/lean/default-settings
# rm -rf ./package/lean/luci-theme-opentomcat
rm -rf ./feeds/packages/admin/netdata
rm -rf ./feeds/packages/net/mwan3
rm -rf ./feeds/packages/net/https-dns-proxy
# rm -rf ./feeds/packages/net/smartdns
# rm -rf ./feeds/packages/utils/ttyd
# rm -rf ./lean/luci-app-ttyd/root/etc/init.d/ttyd
sed -i 's/网络存储/存储/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/带宽监控/监控/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/Turbo ACC 网络加速/ACC网络加速/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/Turbo ACC 网络加速/ACC网络加速/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/解锁网易云灰色歌曲/解锁灰色歌曲/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
sed -i 's/家庭云//g' ./package/lean/luci-app-familycloud/luasrc/controller/familycloud.lua
sed -i '/filter_/d' ./package/network/services/dnsmasq/files/dhcp.conf
sed -i 's/$(VERSION_DIST_SANITIZED)/$(shell TZ=UTC-8 date +%Y%m%d)-ipv6-Mini/g' include/image.mk
echo "DISTRIB_REVISION='S$(TZ=UTC-8 date +%Y.%m.%d) ipv6-Mini'" > ./package/base-files/files/etc/openwrt_release1
sed -i "s/bootstrap/edge/g" feeds/luci/modules/luci-base/root/etc/config/luci
sed -i 's/bootstrap/edge/g' feeds/luci/collections/luci/Makefile
# svn co https://github.com/siropboy/siropboy-package/trunk/netdata ./feeds/packages/admin/netdata
# svn co https://github.com/siropboy/siropboy-package/trunk/luci-app-netdata ./package/lean/luci-app-netdata
# svn co https://github.com/siropboy/siropboy-package/trunk/mwan3 ./feeds/packages/net/mwan3
#svn co https://github.com/sirpdboy/sirpdboy-package/trunk/smartdns ./package/new/smartdns
# svn co https://github.com/sirpdboy/sirpdboy-package/trunk/AdGuardHome ./package/new/AdGuardHome
# svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-adguardhome ./package/new/luci-app-adguardhome
# curl -fsSL  https://raw.githubusercontent.com/siropboy/other/master/patch/default-settings/zzz-default-settings > ./package/lean/default-settings/files/zzz-default-settings
# svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy feeds/packages/net/https-dns-proxy
# sed -i "/mediaurlbase/d" package/*/luci-theme*/root/etc/uci-defaults/*
# sed -i "/mediaurlbase/d" feed/*/luci-theme*/root/etc/uci-defaults/*
# ./scripts/feeds update -i
