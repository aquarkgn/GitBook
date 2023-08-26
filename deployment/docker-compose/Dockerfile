FROM node:14.6.0-alpine

RUN npm install -g gitbook-cli && \
    gitbook fetch && \
    npm cache clear --

WORKDIR /srv/gitbook

CMD ["gitbook", "serve"]ls
