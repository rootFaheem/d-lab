# 1. Specify a  Base Image to be used
FROM node:alpine

WORKDIR /app
# 2. Install dependencies
COPY . .
RUN yarn

# 3.  Command to be run when the container is ready
CMD ["yarn", "start"]