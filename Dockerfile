FROM phusion/baseimage
MAINTAINER Wolfgang Frank <https://github.com/wfrank2509>

WORKDIR /usr/src/app

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -

RUN apt-get update && apt-get install -y \
        curl \
        python \
        make \
        g++ \
		nodejs

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install pm2 -g
RUN mkdir -p /usr/src/app

VOLUME ["/usr/src/app"]

ADD start.sh /start.sh
RUN chmod 755 /start.sh

CMD ["/start.sh"]