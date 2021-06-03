#!/bin/sh

sed -i "s/\"__PORT\"/$PORT/" /usr/local/etc/v2ray/config.json
sed -i "s/\"__UUID\"/\"$UUID\"/" /usr/local/etc/v2ray/config.json

/usr/local/bin/v2ray -config /usr/local/etc/v2ray/config.json
