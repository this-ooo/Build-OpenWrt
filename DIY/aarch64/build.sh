#!/bin/bash

TAG=latest
if [ ! -z "$1" ];then
	TAG=$1
fi

TMPDIR=openwrt_rootfs
IMG_NAME=openwrt

[ -d "$TMPDIR" ] && rm -rf "$TMPDIR"

mkdir -p "$TMPDIR" && \
gzip -dc *-rootfs.tar.gz | ( cd "$TMPDIR" && tar xf - ) && \
(cd "$TMPDIR" && tar cf ../${IMG_NAME}-rootfs-patched.tar .) && \
docker build -t ${IMG_NAME}:${TAG} . && \
rm -f  ${IMG_NAME}-rootfs-patched.tar && \
rm -rf "$TMPDIR" && \
docker save ${IMG_NAME}:${TAG}  > docker-img-${IMG_NAME}-${TAG}.tar
