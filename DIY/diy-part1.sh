#!/bin/bash

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git small8 https://github.com/kenzok8/small-package' feeds.conf.default