# ----------------------------------
# Birdflop Core Dockerfile
# Environment: caddy
# ----------------------------------
FROM        caddy

LABEL       author="Birdflop" maintainer="development@birdflop.com"

RUN apk update \
 && apk add curl ca-certificates openssl git tar sqlite fontconfig tzdata iproute2 \
 && adduser -h /home/container -D container
 
USER container
ENV  USER=container HOME=/home/container

USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
