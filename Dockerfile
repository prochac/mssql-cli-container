FROM debian:buster-slim

RUN apt update && apt install -y \
    openssh-client \
    vim \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1 && \
    update-alternatives --install /usr/bin/pip    pip    /usr/bin/pip3    1
    
RUN pip install mssql-cli
