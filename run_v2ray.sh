#!/bin/sh

# $PORT is 443 by default
sed -i -e "s/\"__PORT\"/$PORT/" -e "s/\"__UUID\"/\"$UUID\"/" /usr/local/etc/v2ray/config.json

if [ "$DoH" = "true" ]; then
    sed -i 's/^\(\s*\)\/\//\1/' /usr/local/etc/v2ray/config.json
fi

/usr/local/bin/v2ray -config /usr/local/etc/v2ray/config.json
