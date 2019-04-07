# Define base image
FROM node:8

# Create and set working directory
ENV HOME=/usr/src/app
# RUN mkdir -p $HOME
WORKDIR $HOME

# Copy app dependencies
COPY package.json .
COPY yarn.lock .

# Install app dependecies
RUN yarn install

# Copy app source
COPY . .

# Expose PORT
EXPOSE 3000

# Start app
# CMD ["yarn", "start"]
CMD yarn start


