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

# 取消注释 Feed 来源
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加两个 Feed 软件源（SSR Plus+、passwall）
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 添加istore应用商店
echo 'src-git istore https://github.com/linkease/istore' >>feeds.conf.default
