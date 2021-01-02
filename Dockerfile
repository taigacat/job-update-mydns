FROM alpine:3.5

WORKDIR /usr/local/bin

RUN apk --update add wget

ARG MYDNS_USER
ARG MYDNS_PASSWORD

CMD ["/bin/sh", "-c", "wget -O - http://${MYDNS_USER}:${MYDNS_PASSWORD}@www.mydns.jp/login.html"]
