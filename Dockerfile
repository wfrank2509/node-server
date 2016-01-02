FROM mhart/alpine-node:base-5.3
MAINTAINER Wolfgang Frank <https://github.com/wfrank2509>

WORKDIR /usr/src/app

#RUN apk add --update make gcc g++ python
#RUN npm install
#RUN npm i pm2 -g

#RUN apk del make gcc g++ python && \
#	rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp

ENV VIRTUAL_HOST=foo.bar.com

EXPOSE 8080
CMD ["node", "server.js"]