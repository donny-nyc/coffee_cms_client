# develop stage
FROM node:17-alpine as develop-stage
WORKDIR /app
COPY package*.json ./
RUN yarn install
COPY . .

# build stage
FROM develop-stage as build-stage
RUN yarn build

# production stage
FROM nginx:1.21.6-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
