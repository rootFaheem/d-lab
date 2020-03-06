# Flow for writing a Docker file

# STEPS
# 1. Specify a base image
# 2. Run commands to install dependencies
# 3. Specify a command to run on startup of contianer


# COMMANDS USED
# "FROM" is used to specify a base image 
# "RUN" is to give the instructions to run on the base image
# "CMD" is to run command whenever the container is ready


# Step 1
FROM node:alpine


# Specify the working directory before running the commands
WORKDIR /usr/app

# Step 2
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Step 3 
CMD ["npm", "start"]