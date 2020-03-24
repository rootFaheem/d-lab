# 1. Specify a  Base Image to be used
FROM node:alpine

WORKDIR /usr/app

# 2. Install dependencies
COPY ./package.json ./
RUN yarn
COPY . .

# 3.  Command to be run when the container is ready
CMD ["yarn", "start"]