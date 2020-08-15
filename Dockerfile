FROM ubuntu:latest

RUN apt update \
    && apt -y install software-properties-common \
    && add-apt-repository ppa:oisf/suricata-stable \
    && apt update \
    && apt -y install suricata \
    && suricata-update --no-test

COPY suricata.yaml /etc/suricata
COPY custom.rules /var/lib/suricata/rules
COPY entrypoint.sh /home

WORKDIR /home
CMD ["./entrypoint.sh"]
