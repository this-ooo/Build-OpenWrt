#!/bin/sh

ebtables -t broute -A BROUTING -p ! ipv6 -j DROP -i wan
brctl addif br-lan wan
/etc/init.d/odhcpd stop
#/etc/init.d/odhcpd disable

exit 0
