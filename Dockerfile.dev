# Specify a base image
FROM node:alpine

# Assign initial working directory - any commands will execute relative to this directory
WORKDIR /home/app

# First check if we've installed any new dependencies prior to running npm install
COPY ./package.json ./
# Install dependencies
RUN npm install

# Copy over the rest of our project files
COPY ./ ./

# Default command
CMD [ "npm", "start" ]