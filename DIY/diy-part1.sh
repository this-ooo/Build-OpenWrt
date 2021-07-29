#!/bin/bash

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git liuran001_packages https://github.com/liuran001/openwrt-packages' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
git clone https://github.com/small-5/luci-app-adblock-plus.git package/luci-app-adblock-plus
#git clone https://github.com/liuran001/openwrt-packages package/liuran001
git clone https://github.com/Lienol/openwrt-package Lienol
cp -rf Lienol/luci-app-socat package/luci-app-socat

