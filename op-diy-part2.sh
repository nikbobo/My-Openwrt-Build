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
sed -i 's/^\(PKG_VERSION:=\)\(.*\)/\14.27.5/g' feeds/lienol/v2ray/Makefile
sed -i 's/^\(PKG_HASH:=\)\(.*\)/\1f289d8d85ab0851851a6e3c101226e77bed0052fd60f9185df8852b601e657f8/g' feeds/lienol/v2ray/Makefile
