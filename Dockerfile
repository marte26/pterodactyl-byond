FROM tgstation/byond:latest

RUN apt-get update \
    && apt-get upgrade \
    && adduser --disabled-password --gecos "" --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]