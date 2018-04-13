FROM debian:stretch
MAINTAINER Matt Bentley <mbentley@mbentley.net>

ENV LE_VERSION 2.7.8

RUN apt-get update && apt-get install -y curl jq openssl python-pip vim-common &&\
  pip install awscli &&\
  rm -rf /var/lib/apt/lists/* &&\
  curl -s "https://raw.githubusercontent.com/Neilpang/acme.sh/${LE_VERSION}/acme.sh" > /usr/local/bin/acme.sh &&\
  chmod +x /usr/local/bin/acme.sh

ENTRYPOINT ["acme.sh"]
