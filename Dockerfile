FROM debian:sid

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget tar nodejs\
    && apt autoremove -y

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh