# Define base image
# and tag intermediate build stage
FROM node:8 as builder 

# Create and set working directory
WORKDIR /usr/app

# Copy app dependencies
COPY package.json .
COPY yarn.lock .

# Install app dependecies
RUN yarn install

# Copy app source
COPY . .

# Create build directory
# under /usr/app/build
RUN yarn run build

# New build stage
# FROM instruction 
# automatically begins a new stage
FROM nginx

# Copy from a different stage
# Copies only specified directory and files
# from specified stage
COPY --from=builder /usr/app/build /usr/share/nginx/html


# The EXPOSE instruction does not actually publish the port
# It functions as a type of documentation
# between the person who builds the image and the person who runs the container,
# about which ports are intended to be published
EXPOSE 8080
