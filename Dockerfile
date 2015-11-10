FROM debian:jessie
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/letsencrypt/letsencrypt &&\
  cd letsencrypt &&\
 ./letsencrypt-auto --help &&\
  cd &&\
  rm -rf letsencrypt

ENTRYPOINT ["/root/.local/share/letsencrypt/bin/letsencrypt"]
CMD ["--help"]
