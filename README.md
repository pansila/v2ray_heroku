# v2ray heroku app image
[![Docker Pulls](https://img.shields.io/docker/pulls/pansila/v2ray_heroku.svg?style=flat-square&label=Pulls&logo=docker&color=green)](https://hub.docker.com/r/pansila/v2ray_heroku)
[![Docker Version](https://img.shields.io/docker/v/pansila/v2ray_heroku?sort=date&style=flat-square&label=Version&logo=docker&color=blue)](https://hub.docker.com/r/pansila/v2ray_heroku)
[![Join the chat at https://gitter.im/pansila/v2ray_heroku](https://img.shields.io/gitter/room/pansila/v2ray_heroku?style=flat-square&color=9cf&label=Chat)](https://gitter.im/pansila/v2ray_heroku)
[![Chat on discord](https://img.shields.io/discord/852170555855732756?color=9cf&label=Discord&style=flat-square)](https://discord.gg/W7gwgsYZG5)

This repo builds v2ray docker image for heroku app and helps you deploy it.

[中文文档](https://github.com/pansila/v2ray_heroku/blob/main/README_ZH.md)

## Attention
Free heroku app is overwhelmed and thus slow, please treat it with kid gloves. Consider turning to a paid proxy service if you want a better user experience.

## Deploy to heroku in one click
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://stats.mideuu.tk/?redirect=https%3A%2F%2Fdashboard.heroku.com/new?template=https%3A%2F%2Fgithub.com%2Fpansila%2Fv2ray_heroku)

*A redirection will be made to collect the clicks statistics.*

## Why another docker image?
It's inspired by [v2ray-heroku](https://github.com/bclswl0827/v2ray-heroku), but the original one downloads and deflates the latest v2ray everytime the heroku app boots, incuring a large delay to respond to the proxy request.

This project builds the docker image with v2ray included and pushs to the docker hub, if you want the latest v2ray, just kick off the build in the github action manually or push a commit.

The fallback this way is that the v2ray is not always up to date, to do so you need to:
1. check whether a new docker image is published in the [dockerhub](https://hub.docker.com/r/pansila/v2ray_heroku).
2. fork this repo.
3. connect to it in the heroku dashboard `Deploy` tab.
4. manually deploy or auto deploy.

## Before running github action
You need a secret `DOCKER_PASSWORD` for github action to run, for how to set it please refer to [here](https://docs.github.com/cn/actions/reference/encrypted-secrets).

## ENV setting
### UUID
Generate your own `UUID` at the end of the deploy if you are concern of the default one. [Generate now](https://www.uuidgenerator.net/version4).

## v2ray configuration
Please find v2ray config files in the repo. `config.json.server` is used by heroku app, `config.json.client` is for your v2ray client, please modify it to suit your case.
