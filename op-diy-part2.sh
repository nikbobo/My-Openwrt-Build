#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/^\(PKG_VERSION:=\)\(.*\)/\14.27.0/' feeds/lienol/v2ray/Makefile
sed -i 's/^\(PKG_HASH:=\)\(.*\)/\15e1b0146953398a5422611b20f5e62c3a9c3efd62cd42295762f6f39d8eff31e/' feeds/lienol/v2ray/Makefile
sed -i 's/$(STAGING_DIR_HOST)\/bin\/upx --lzma --best $(GO_PKG_BUILD_BIN_DIR)\/v2ray-plugin//' feeds/lienol/v2ray-plugin/Makefile
sed -i 's/ln_start_bin "$(first_type $(config_t_get global_app xray_file) xray)" xray $log_file -config="$config_file"/ln_start_bin "ln_start_bin "$(first_type $(config_t_get global_app xray_file) v2ray)" v2ray $log_file -config="$config_file"/' feeds/lienol/luci-app-passwall/root/usr/share/passwall/app.sh
