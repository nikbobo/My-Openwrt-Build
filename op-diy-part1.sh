#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git lienol https://github.com/xiaorouji/openwrt-passwall^914fb36c25dae4062fe043064d859dee692dd1ba' feeds.conf.default
# sudo mkdir -p tools/upx
# sudo mkdir -p tools/ucl
# [ -e '../upx/Makefile' ] && mv '../upx/Makefile' tools/upx/Makefile
# [ -e '../ucl/Makefile' ] && mv '../ucl/Makefile' tools/ucl/Makefile
