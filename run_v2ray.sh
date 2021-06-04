#!/bin/sh

sed -i -e "s/\"__PORT\"/$PORT/" -e "s/\"__UUID\"/\"$UUID\"/" /usr/local/etc/v2ray/config.json

/usr/local/bin/v2ray -config /usr/local/etc/v2ray/config.json
