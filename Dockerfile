FROM alpine:3.5

ADD run_v2ray.sh /usr/local/bin/run_v2ray.sh
ADD v2ray /usr/local/bin/v2ray
ADD v2ctl /usr/local/bin/v2ctl
RUN chmod +x /usr/local/bin/run_v2ray.sh
RUN chmod +x /usr/local/bin/v2ray
RUN chmod +x /usr/local/bin/v2ctl

RUN apk add --no-cache ca-certificates

# V2Ray new configuration
RUN install -d /usr/local/etc/v2ray
ADD config.json /usr/local/etc/v2ray/config.json

# Run V2Ray
ENTRYPOINT ["/usr/local/bin/run_v2ray.sh"]
