#!/bin/sh

sudo apt-get -y install curl unzip docker-ce docker-ce-cli

curl -OJL https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip
unzip v2ray-linux-64.zip
version=$(./v2ray --version | head -n1 | awk '{print $2}')

docker build . -t pansila/v2ray_heroku:$version
docker tag pansila/v2ray_heroku:$version pansila/v2ray_heroku:latest
docker login -u pansila -p $DOCKER_PASSWORD
docker push pansila/v2ray_heroku:$version
docker push pansila/v2ray_heroku:latest
