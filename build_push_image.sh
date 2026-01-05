#!/bin/bash

# Build image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Ubah nama image agar sesuai format Docker Hub
docker tag item-app:v1 hatakefira/item-app:v1

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u hatakefira --password-stdin

# Push image ke Docker Hub
docker push hatakefira/item-app:v1
