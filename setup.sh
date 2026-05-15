#!/bin/bash

mkdir server
cd server

wget https://downloader.hytale.com/hytale-downloader.zip # consider -N for updating to newer versions
unzip hytale-downloader.zip -d .

./hytale-downloader
