#!/bin/bash

# Modify default IP
#sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
sed -i 's/encryption=none/encryption=psk-mixed\n\t\t\tset wireless.default_radio${devidx}.key=123456789/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
cp -rf $GITHUB_WORKSPACE/DIY/dynv6.sh package/base-files/files/etc/dynv6.sh
cp -rf $GITHUB_WORKSPACE/DIY/dynv6.sh package/base-files/files/etc/dynv6up.sh
cp -rf $GITHUB_WORKSPACE/DIY/settings1 package/base-files/files/etc/uci-defaults/99_settings1
