FROM node:14.5-alpine

WORKDIR /usr/src/app

# Install app dependencies
RUN apk update && apk add yarn python g++ make && rm -rf /var/cache/apk/*

COPY . .
RUN ["npm", "install"]

ENV NUXT_HOST 0.0.0.0
EXPOSE 3000

# Command to run on container start
CMD ["npm", "run", "prod"]
