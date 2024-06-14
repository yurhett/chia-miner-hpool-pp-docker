#!/bin/sh
if [ "$TARGETARCH" = "amd64" ] ; then ARCH=amd64;fi
if [ "$TARGETARCH" = "arm64" ] ; then ARCH=aarch64;fi
if [ "$TARGETARCH" = "arm" ] ; then ARCH=arm;fi

VER=$1
BUILD_VER=$2
echo ${VER}
echo ${BUILD_VER}
ZIP_URL="https://github.com/h9-dev/chiapp-miner/releases/download/v${VER}/H9-Miner-chia-pp-v${VER}-${BUILD_VER}-linux.zip"


echo ${ZIP_URL}
wget -q --no-check-certificate ${ZIP_URL} -O /tmp/chia-miner.zip && unzip -j /tmp/chia-miner.zip -d /tmp/linux
ls /tmp/linux -ahl
mv /tmp/linux/h9-miner-chia-linux-${ARCH} /opt/h9-chia-miner
chmod +x /opt/h9-chia-miner
