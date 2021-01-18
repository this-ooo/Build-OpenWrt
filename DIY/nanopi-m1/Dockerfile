FROM scratch
ADD openwrt-sunxi-cortexa7-friendlyarm_nanopi-m1-rootfs-patched.tar /
EXPOSE 22 80 443
# using exec format so that /sbin/init is proc 1 (see procd docs)
ENTRYPOINT ["/sbin/init"]
