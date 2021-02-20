FROM node:14.15-alpine

USER node

RUN mkdir -p /home/node/.wrangler && mkdir -p /home/node/app

COPY package.json /home/node/.wrangler/package.json

RUN cd /home/node/.wrangler && npm install

CMD [ "/home/node/.wrangler/bin/wrangler" ]