FROM eclipse-temurin:21-jre

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /server

COPY startup.sh /startup.sh

RUN chmod +x /startup.sh

# EXPOSE 5520

CMD ["/start.sh"]
