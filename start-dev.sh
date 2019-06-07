# Always run script with bash
#! /bin/bash

# Docker CLI Commands

# Build and tag image
# docker build -f Dockerfile.dev -t bdunlop/dockerized-react-app-dev:latest .

# Run an interactive bash shell
# in a running container
# with connection to STDIN and STDOUT
# docker exec -it <container> yarn run test

# Overwrite default command
# and run new command in container on start up
# docker run bdunlop/docker-frontend-dev yarn run test

# Run an interactive bash shell in a container,
# with connection to STDIN and STDOUT
# Default is a connection to STDOUT only
# docker run -it bdunlop/docker-frontend-dev yarn run test

# Create and run container from image
# Publish the containers port outside of the containers network
# and map them to the host machines port
# docker run -p 3000:3000 bdunlop/dockerized-react-app-dev
# docker run -it -p 3000:3000 bdunlop/dockerized-react-app-dev

# Docker Compose Command

docker-compose up