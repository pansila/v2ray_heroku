# v2ray heroku
Build v2ray docker image for heroku app

## Attention
Free heroku app is overwhelmed and thus slow, please treat it with kid gloves. Consider using a paid proxy service if you want a better user experience.

## Why another docker image?
It's inspired by [v2ray-heroku](https://github.com/bclswl0827/v2ray-heroku), but the original one downloads and deflates the latest v2ray everytime the heroku app boots, incuring a large delay to respond to the proxy request.

This project builds the docker image with v2ray included and pushs to the docker hub, if you want the latest v2ray, just kick off the build in the github action manually or push a commit.

## Before github action
You need to add two secrets for github action to run, for how to set it please refer to [here](https://docs.github.com/cn/actions/reference/encrypted-secrets)
1. DOCKER_PASSWORD
2. HEROKU_APP_NAME

## Deploy to heroku:
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https%3A%2F%2Fgithub.com%2Fpansila%2Fv2ray_heroku)

## ENV setting
### UUID
generate your own `UUID` at the end of the deploy if you are concern of the default one.

## v2ray client config
1. websocket path should be `/`.
2. `alterId` should be 64.

