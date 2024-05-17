#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#


sed -i 's/192.168.1.1/192.168.31.25/g' package/base-files/files/bin/config_generate

git clone https://github.com/kenzok8/small-package package/small-package
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/sirpdboy/luci-app-partexp.git package/luci-app-partexp


rm -rf feeds/luci/themes/luci-theme-argon
rm -rf package/small-package/luci-app-openvpn-server
rm -rf package/small-package/openvpn-easy-rsa-whisky
rm -rf package/small-package/luci-app-wrtbwmon
rm -rf package/small-package/wrtbwmon
rm -rf package/small-package/luci-app-koolproxyR
rm -rf package/small-package/luci-app-godproxy
rm -rf package/small-package/luci-app-argon*
rm -rf package/small-package/luci-theme-argon*
rm -rf package/small-package/luci-app-amlogic
rm -rf package/small-package/luci-app-unblockneteasemusic
rm -rf package/small-package/upx-static
rm -rf package/small-package/upx
rm -rf package/small-package/firewall*
rm -rf package/small-package/opkg
rm -rf package/small-package/luci-app-partexp
rm -rf package/feeds/packages/aliyundrive-webdav
rm -rf feeds/packages/multimedia/aliyundrive-webdav
rm -rf package/feeds/packages/perl-xml-parser
rm -rf package/feeds/packages/lrzsz
rm -rf package/feeds/packages/xfsprogs
