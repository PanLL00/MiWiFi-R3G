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

# 修改默认主机名
sed -i 's/OpenWrt/MiWiFi-R3G/g' ./package/base-files/files/bin/config_generate

# 修改默认管理IP
sed -i 's/192.168.1.1/192.168.131.1/g' ./package/base-files/files/bin/config_generate

# 修改默认Wi-Fi名称
sed -i "2i uci set wireless.@wifi-iface[0].ssid=Xiaomi_R3G" ./package/lean/default-settings/files/zzz-default-settings
sed -i "3i uci set wireless.@wifi-iface[1].ssid=Xiaomi_R3G_5G" ./package/lean/default-settings/files/zzz-default-settings
sed -i "4i uci commit wireless" ./package/lean/default-settings/files/zzz-default-settings
sed -i "5i wifi" ./package/lean/default-settings/files/zzz-default-settings

# 解决Android TV激活问题
sed -i "2i uci add dhcp domain" ./package/lean/default-settings/files/zzz-default-settings
sed -i "3i uci set dhcp.@domain[0]=domain" ./package/lean/default-settings/files/zzz-default-settings
sed -i "4i uci set dhcp.@domain[0].name='time.android.com'" ./package/lean/default-settings/files/zzz-default-settings
sed -i "5i uci set dhcp.@domain[0].ip='203.107.6.88'" ./package/lean/default-settings/files/zzz-default-settings
sed -i "6i uci commit dhcp" ./package/lean/default-settings/files/zzz-default-settings
sed -i "7i /etc/init.d/dnsmasq restart" ./package/lean/default-settings/files/zzz-default-settings
