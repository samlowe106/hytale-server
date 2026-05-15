FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /server

COPY startup.sh /startup.sh

RUN chmod +x /startup.sh

EXPOSE 25565

CMD ["/start.sh"]
