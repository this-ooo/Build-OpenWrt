#!/bin/bash

TAG=latest
if [ ! -z "$1" ];then
	TAG=$1
fi

TMPDIR=openwrt_rootfs
OUTDIR=/opt/imgs
IMG_NAME=openwrt-armvirt-64-default

[ -d "$TMPDIR" ] && rm -rf "$TMPDIR"

mkdir -p "$OUTDIR"  && \
mkdir -p "$TMPDIR"  && \
gzip -dc ${IMG_NAME}-rootfs.tar.gz | ( cd "$TMPDIR" && tar xf - ) && \
cp -f rc.local "$TMPDIR/etc/" && \
rm -f "$TMPDIR/etc/bench.log" && \
echo "17 3 * * * /etc/coremark.sh" >> "$TMPDIR/etc/crontabs/root" && \
(cd "$TMPDIR" && tar cf ../${IMG_NAME}-rootfs-patched.tar .) && \
docker build -t ${IMG_NAME}:${TAG} . && \
rm -f  ${IMG_NAME}-rootfs-patched.tar && \
rm -rf "$TMPDIR" && \
docker save ${IMG_NAME}:${TAG} | pigz -9 > $OUTDIR/docker-img-${IMG_NAME}-${TAG}.gz
