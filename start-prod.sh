# Always run script with bash
#! /bin/bash

# Docker CLI Commands

# Build and tag image
docker build -t bdunlop/dockerized-react-app:latest .

# Create and run container from image
# Map host machine port to default NGINX port
docker run -p 8080:80 bdunlop/dockerized-react-app:latest

# Starting an NGINX container
# automatically starts NGINX server