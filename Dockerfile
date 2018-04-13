FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

ENV LE_VERSION 2.7.8

RUN apk --no-cache add bash curl grep openssl sed

RUN curl -s "https://raw.githubusercontent.com/Neilpang/acme.sh/${LE_VERSION}/acme.sh" > /usr/local/bin/acme.sh &&\
  chmod +x /usr/local/bin/acme.sh

ENTRYPOINT ["/usr/local/bin/acme.sh"]
