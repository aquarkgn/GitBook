FROM node:14-alpine

RUN npm install -g gitbook-cli && \
    gitbook fetch && \
    npm cache clear --

WORKDIR /srv/gitbook

CMD ["gitbook", "serve"]