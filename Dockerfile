FROM ubuntu:latest

RUN apt update \
    && apt -y install software-properties-common \
    && add-apt-repository ppa:oisf/suricata-stable \
    && apt update \
    && apt -y install suricata \
    && suricata-update --no-test
