FROM scratch
ADD openwrt-bcm27xx-bcm2709-rpi-2-rootfs-patched.tar /
EXPOSE 22 80 443
# using exec format so that /sbin/init is proc 1 (see procd docs)
ENTRYPOINT ["/sbin/init"]
