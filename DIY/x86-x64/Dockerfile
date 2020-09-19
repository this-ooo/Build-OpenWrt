FROM scratch
ADD openwrt-x86-64-generic-rootfs-patched.tar /
EXPOSE 22 80 443
# using exec format so that /sbin/init is proc 1 (see procd docs)
ENTRYPOINT ["/sbin/init"]
