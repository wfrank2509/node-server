#!/bin/bash

if [ -z "$NODE_ENV" ]; then
    export NODE_ENV=development
fi

cd /usr/src/app
npm install

echo "NODE_ENV=$NODE_ENV"

pm2 start -x $APP --env $NODE_ENV --no-daemon $NODE_ENV.json
