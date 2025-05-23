FROM ubuntu:22.04

RUN groupadd -g 2024 eims && \
    useradd -r -u 2024 -g eims eims

RUN mkdir /util && \
    mkdir -p /home/eims && \
    chown -R eims:eims /util && \
    chown -R eims:eims /home/eims

RUN apt update && \
    apt install -y wget curl

