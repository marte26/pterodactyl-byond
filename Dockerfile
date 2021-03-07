FROM beestation/byond:latest

RUN apt-get update \
    && apt-get upgrade -y \
    && useradd -d /home/container -m container

USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
COPY        ./start.sh      /home/container/start.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
