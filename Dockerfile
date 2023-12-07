FROM node:lts-alpine

ARG NODE_ENV=production

WORKDIR /app
COPY . .
RUN yarn install --production=false
RUN yarn build:${NODE_ENV}

FROM nginx
RUN mkdir /app
COPY --from=0 /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf