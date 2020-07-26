FROM node:latest-alpine

WORKDIR /usr/src/app

COPY . .
RUN ["npm", "install"]

ENV NUXT_HOST 0.0.0.0

EXPOSE 3000

CMD ["npm", "run", "prod"]
