# Always run script with bash
#! /bin/bash

# Build Docker image
docker build -t bdunlop/dockerized-react-app:latest .

# Create and run container from Docker image
# Publish the containers port outside of the containers network
# and map them to the host machines port
docker run -p 3000:3000 bdunlop/dockerized-react-app
# docker run -it -p 3000:3000 bdunlop/dockerized-react-app