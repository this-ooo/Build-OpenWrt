#!/bin/bash

# Modify default IP
#sed -i 's/192.168.1.1/192.168.123.3/g' package/base-files/files/bin/config_generate
#sed -i -e '21s/reboot/autoreboot/g' -e '26s/reboot/autoreboot/g' package/lean/luci-app-autoreboot/root/etc/init.d/autoreboot
sed -i 's/encryption=none/encryption=sae-mixed\n\t\t\tset wireless.default_radio${devidx}.key=123456789/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
cp -rf $GITHUB_WORKSPACE/DIY/zzz-default-settings package/lean/default-settings/files/zzz-default-settings
cp -rf $GITHUB_WORKSPACE/DIY/hosts2 package/base-files/files/etc/hosts2
