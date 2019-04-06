# Specify a base image
FROM node:alpine as builder

# Assign initial working directory - any commands will execute relative to this directory
WORKDIR /home/app

# First check if we've installed any new dependencies prior to running npm install
COPY ./package.json ./
# Install dependencies
RUN npm install

# Copy over the rest of our project files
COPY ./ ./ 

# Build our react app
RUN npm run build

FROM nginx

COPY --from=builder /home/app/build /usr/share/nginx/html