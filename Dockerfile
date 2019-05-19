# Define base image
FROM node:8

# Declare environment variable
ENV HOME=/usr/app
# Create and set working directory
WORKDIR $HOME

# Copy app dependencies
COPY package.json .
COPY yarn.lock .

# Install app dependecies
RUN yarn install

# Copy app source
COPY . .

# The EXPOSE instruction does not actually publish the port
# It functions as a type of documentation
# between the person who builds the image and the person who runs the container,
# about which ports are intended to be published
EXPOSE 3000

# Start app
# CMD ["yarn", "start"]
CMD yarn start


