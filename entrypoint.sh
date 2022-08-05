#!/bin/bash

# env
apt update -y
apt upgrade -y
apt install -y wget tar

cd /root
if [ -n "$Version" ]; then
    wget --no-check-certificate "https://github.com/reruin/sharelist/releases/download/$Version/sharelist_linux_amd64.tar.gz" -O /root/sharelist.tar.gz
else
    wget --no-check-certificate "https://github.com/reruin/sharelist/releases/download/v0.3.15/sharelist_linux_amd64.tar.gz" -O /root/sharelist.tar.gz
fi
tar xzfv sharelist.tar.gz -C /
rm -rf /sharelist.tar.gz
/sharelist
