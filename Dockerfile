FROM node:14.15-alpine

ENV USER=node

USER node

RUN mkdir -p /home/node/.wrangler/config && mkdir -p /home/node/app

COPY package.json /home/node/.wrangler/package.json

RUN cd /home/node/.wrangler && npm install

WORKDIR /home/node/app

ENTRYPOINT [ "/home/node/.wrangler/bin/wrangler" ]