# Faster V2Ray Heroku App Image
[![Docker Pulls](https://img.shields.io/docker/pulls/pansila/v2ray_heroku.svg?style=flat-square&label=Pulls&logo=docker&color=green)](https://hub.docker.com/r/pansila/v2ray_heroku)
[![Docker Version](https://img.shields.io/docker/v/pansila/v2ray_heroku?sort=date&style=flat-square&label=Version&logo=docker&color=blue)](https://hub.docker.com/r/pansila/v2ray_heroku)
![Downloads](https://img.shields.io/endpoint?url=https%3a%2f%2fstats.mideuu.tk%2fbadge)
[![Join the chat at https://gitter.im/pansila/v2ray_heroku](https://img.shields.io/gitter/room/pansila/v2ray_heroku?style=flat-square&color=9cf&label=Chat)](https://gitter.im/pansila/v2ray_heroku)
[![Chat on discord](https://img.shields.io/discord/852170555855732756?color=9cf&label=Discord&style=flat-square)](https://discord.gg/W7gwgsYZG5)

This repo builds v2ray docker image for heroku app and helps you deploy it.

[中文文档](https://github.com/pansila/v2ray_heroku/blob/main/README_ZH.md)

## Attention
Free heroku app is overwhelmed and hence become slower over the time, please treat it with kid gloves. Stop being a Yang Mao Dang! Consider turning to a paid proxy service if you want a better user experience.

## Deploy to Heroku In One Click
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://stats.mideuu.tk/?redirect=https%3A%2F%2Fdashboard.heroku.com/new?template=https%3A%2F%2Fgithub.com%2Fpansila%2Fv2ray_heroku)

*A redirection will be made to collect the clicks statistics.*

## Why Another Docker Image?
It's inspired by [v2ray-heroku](https://github.com/bclswl0827/v2ray-heroku), but the original one downloads and deflates the latest v2ray everytime the heroku app boots, incuring a large latency to respondences to the initial proxy requests (Free Heroku App will force to stop after a while of idle).

This project builds the docker image with v2ray included and pushs to the docker hub.

The fallback this way is that the v2ray is not always up to date, to do so you need to:
1. fork this repo.
2. connect the forked repo to your heroku app in the heroku dashboard `Deploy` tab (choose the deployment menthod `GitHub`).
3. choose automatic deploy, tick `Wait for CI to pass before deploy`.
4. enable actions in the `actions` tab as it's disabled when forked. The repo has a workflow that runs periodically to check the new release and triggers auto deploy when found one.

## Before Running Github Action
You need a secret `DOCKER_PASSWORD` for github action to run, for how to set it please refer to [here](https://docs.github.com/cn/actions/reference/encrypted-secrets).

## ENV Settings During Deployment
### UUID
There is a default one, you can generate your own `UUID` at the end of the deploy if you are concern of the default one. [Generate now](https://www.uuidgenerator.net/version4).
### DoH
Set to 'true' to enable DoH (DNS over HTTPS) to protect your DNS queries, although it will increase a little delay to your DNS queries. 'false' to disable it.

## v2ray Configurations
Please find v2ray config files in the repo. `config.json.server` is used by heroku app, `config.json.client` is for your v2ray client, please modify it to suit your case.

## Security and Privacy
1. All stuffs here are open sourced, you can check them line by line.
2. V2ray is downloaded from the its offical github release page.
3. You can check the SHA digest of the images in the [building results](https://github.com/pansila/v2ray_heroku/actions) and the docker image digest in the [docker hub](https://hub.docker.com/r/pansila/v2ray_heroku/tags) (Digest changes even with the same building stuffs for different docker image buildings).
4. You can further check the building steps of a docker image in the docker hub.
5. If you are still not convinced, you can fork the repositary, build the image by yourself and deploy it.
