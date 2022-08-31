FROM debian:buster-slim

RUN apt update && apt install -y \
    openssh-client \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install mssql-cli
