FROM drzef/s6base

MAINTAINER Dr Zef <drzef85@gmail.com>

COPY rootfs /
RUN apk add --no-cache squid

ENTRYPOINT ["/init"]
VOLUME /config
EXPOSE 3128
