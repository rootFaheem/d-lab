
# BUILD PHASE
FROM node:alpine as builder
WORKDIR "/app"
COPY package.json .
RUN yarn
COPY . .
RUN yarn run build


# RUN PHASE
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html