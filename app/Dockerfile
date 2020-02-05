FROM node:6-alpine
ENV MONGODB_URI="mongodb://pixidb:27017/Pixidb"
RUN echo -e "http://dl-cdn.alpinelinux.org/alpine/v3.5/main\nhttp://dl-cdn.alpinelinux.org/alpine/v3.5/community" > /etc/apk/repositories && \
    echo 'http://dl-cdn.alpinelinux.org/alpine/v3.9/community' >> /etc/apk/repositories && \
    apk add --no-cache make gcc g++ python mongodb-tools && \
    rm -rf /usr/src/pixi/web/uploads &&\
    mkdir -p /usr/src/pixi/web

COPY . /usr/src/pixi/web

WORKDIR /usr/src/pixi/web

RUN npm install --save && \
    npm install --save express

EXPOSE 8000
CMD ["/usr/src/pixi/web/init.sh"]
