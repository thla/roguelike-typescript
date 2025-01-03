ARG NODE_VERSION=20.13.1

# Use node image for base image for all stages.
FROM node:${NODE_VERSION}-alpine as base

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

# Set working directory for all build stages.
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
#COPY . .
#RUN npm run build

EXPOSE 8000

#ENTRYPOINT ["npm", "run", "dev"]
CMD ["/bin/sh"]