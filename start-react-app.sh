# Always run script with bash
#! /bin/bash

# Build Docker image
docker build -t bdunlop/dockerized-react-app:latest .

# Create and run container from Docker image
# docker run bdunlop/dockerized-react-app -  DOESN'T WORK
docker container run -it -p 3000:3000 bdunlop/dockerized-react-app