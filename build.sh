#!/bin/sh

sudo apt-get -y install wget unzip

wget -q https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip -O /tmp/v2ray/v2ray.zip
unzip /tmp/v2ray/v2ray.zip -d .

docker build . -t pansila/v2ray_heroku:latest
docker login
docker push pansila/v2ray_heroku:latest
