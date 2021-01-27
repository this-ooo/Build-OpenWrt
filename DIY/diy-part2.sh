#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.123.3/g' package/base-files/files/bin/config_generate
#sed -i -e '21s/reboot/autoreboot/g' -e '26s/reboot/autoreboot/g' package/lean/luci-app-autoreboot/root/etc/init.d/autoreboot
sed -i 's/encryption=none/encryption=sae-mixed\n\t\t\tset wireless.default_radio${devidx}.key=123456789/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
