#!/bin/bash

set -e

cd /server

# Download downloader only if missing
if [ ! -f hytale-downloader ]; then
    wget -N https://downloader.hytale.com/hytale-downloader.zip
    unzip -o hytale-downloader.zip -d .
    chmod +x hytale-downloader
fi

# Run updater/downloader
./hytale-downloader

# Start the server
exec java $JAVA_OPTS \
    -XX:AOTCache=HytaleServer.aot \
    -jar HytaleServer.jar \
    --assets Assets.zip
