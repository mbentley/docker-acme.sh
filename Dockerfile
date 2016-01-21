FROM debian:jessie
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apt-get update && apt-get install -y curl openssl vim-common &&\
  rm -rf /var/lib/apt/lists/* &&\
  mkdir /le &&\
  curl -s "https://raw.githubusercontent.com/Neilpang/le/master/le.sh" > /le/le.sh &&\
  chmod +x /le/le.sh

ENTRYPOINT ["/le/le.sh"]
