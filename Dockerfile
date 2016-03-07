FROM mhart/alpine-node

RUN apk add libsass --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing --allow-untrusted
RUN apk --update add --virtual build-dependencies g++ make python \
  && apk --update --virtual build-dependencies add libsass libsass-dev --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing --allow-untrusted \
  && npm install -g gulp node-sass \
  && apk del build-dependencies
