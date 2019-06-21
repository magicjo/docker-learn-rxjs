FROM node:lts-alpine

LABEL maintainer="magicjo@tiglab.net"

# Copy package.json and install sources
WORKDIR /app
COPY package*.json ./
RUN npm ci

# Copy script to mount node_modules in host (for you ide as example)
COPY cp-nodemodules.sh .

ENTRYPOINT ["npm", "run"]
