# Flow for writing a Docker file

# STEPS
# 1. Specify a base image
# 2. Run commands to install dependencies
# 3. Specify a command to run on startup of contianer


# Step 1
FROM alpine

# Step 2
RUN apk add --update redis

# Step 3 
CMD ["redis-server"]