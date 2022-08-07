#!/bin/bash

# Get sharelist
mkdir -p /sharelist
mkdir -p /sharelist/cache
if [ "$sharelistVersion" != "latest" ]; then
    wget --no-check-certificate "https://github.com/reruin/sharelist/releases/download/$sharelistVersion/sharelist_linux_amd64.tar.gz" -O /sharelist/sharelist.tar.gz
else
    sharelistVersion=$(wget -qO- "https://api.github.com/repos/reruin/sharelist/releases/latest" | sed -n -r -e 's/.*"tag_name".+?"([vV0-9\.]+?)".*/\1/p')
    wget --no-check-certificate "https://github.com/reruin/sharelist/releases/download/$sharelistVersion/sharelist_linux_amd64.tar.gz" -O /sharelist/sharelist.tar.gz
fi
tar xzfv "/sharelist/sharelist.tar.gz" -C "/sharelist"
rm -rf "/sharelist/sharelist.tar.gz"

# Get config
if echo "$sharelistConfig" | grep -q -i "^http"; then
    wget --no-check-certificate "$sharelistConfig" -O /sharelist/cache/config.json
else
    echo -e "$sharelistConfig" >/sharelist/cache/config.json
fi

# Start
/sharelist/sharelist
