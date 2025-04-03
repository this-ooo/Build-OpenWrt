FROM scratch
ADD openwrt*-rootfs-patched.tar /
ENV WAN6ETH='@lan'
ENV LANIP='192.168.8.1'
ENV LANGATEWAY='192.168.5.1'
ENV LANNETMASK='255.255.255.0'
ENV LANDNS='192.168.5.1'
ENV CLASH_URL='http://192.168.5.15:8060/clash/clash.yaml'
CMD ["/sbin/init"]
