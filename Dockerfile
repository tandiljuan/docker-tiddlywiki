FROM node:9.8.0-alpine

COPY tiddlywiky.sh /opt/tiddlywiky

RUN chmod a+x /opt/tiddlywiky

RUN yarn global add tiddlywiki@5.1.4

WORKDIR /opt

EXPOSE 8080

ENTRYPOINT ["/opt/tiddlywiky"]
