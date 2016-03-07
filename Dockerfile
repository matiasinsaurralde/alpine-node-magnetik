FROM mhart/alpine-node
RUN npm install -g gulp
RUN apk add libsass libsass-dev --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing --allow-untrusted
