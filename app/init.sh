#!/usr/bin/env sh

mongoimport --uri=$MONGODB_URI --collection=counters --file=seed/counters.json --mode=merge --jsonArray
mongoimport --uri=$MONGODB_URI --collection=likes --file=seed/likes.json --mode=merge --jsonArray
mongoimport --uri=$MONGODB_URI --collection=loves --file=seed/loves.json --mode=merge --jsonArray
mongoimport --uri=$MONGODB_URI --collection=pictures --file=seed/pictures.json --mode=merge --jsonArray
mongoimport --uri=$MONGODB_URI --collection=users --file=seed/users.json --mode=merge --jsonArray

echo "Starting server"
node /usr/src/pixi/web/server.js