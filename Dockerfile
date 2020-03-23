# 1. Specify a  Base Image to be used
FROM alpine

# 2. Install dependencies
COPY . .
RUN yarn

# 3.  Command to be run when the container is ready
CMD ["yarn", "start"]