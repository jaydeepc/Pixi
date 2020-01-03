FROM node:6-alpine
RUN echo -e "http://dl-cdn.alpinelinux.org/alpine/v3.5/main\nhttp://dl-cdn.alpinelinux.org/alpine/v3.5/community" > /etc/apk/repositories
RUN apk add --no-cache make gcc g++ python
RUN rm -rf /usr/src/pixi/web/uploads
RUN mkdir -p /usr/src/pixi/web
WORKDIR /usr/src/pixi/web
COPY package.json /usr/src/pixi/web

RUN npm install --save
RUN npm install --save express

COPY . /usr/src/pixi/web
COPY uploads/ /usr/src/pixi/web/uploads/

EXPOSE 8000
CMD ["node", "/usr/src/pixi/web/server.js"]