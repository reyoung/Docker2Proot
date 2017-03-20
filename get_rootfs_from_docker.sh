#!/bin/bash
cd `dirname $0`
set -e
IMG='docker.paddlepaddle.org/paddle:0.10.0rc2'
CONTAINER_NAME=proot_tmp_container_$RANDOM
docker pull $IMG
docker run -d --name $CONTAINER_NAME $IMG
docker export $CONTAINER_NAME > rootfs.tar
docker rm -f $CONTAINER_NAME
mkdir rootfs
cd rootfs
tar xf ../rootfs.tar
cd ..
rm rootfs.tar
