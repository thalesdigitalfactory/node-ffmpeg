FROM node:10-stretch

RUN apt-get update; \
    apt-get install ffmpeg -y

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "node" ]
