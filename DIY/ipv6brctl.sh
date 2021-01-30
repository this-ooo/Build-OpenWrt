#!/bin/sh

ebtables -t broute -A BROUTING -p ! ipv6 -j DROP -i $(uci -q get network.wan6.ifname)
brctl addif br-lan $(uci -q get network.wan6.ifname)
/etc/init.d/odhcpd stop
#/etc/init.d/odhcpd disable

exit 0
