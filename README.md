mbentley/letsencrypt
====================

docker image for letsencrypt (https://github.com/Neilpang/acme.sh)
based off of debian:jessie

To pull this image:
`docker pull mbentley/letsencrypt`

Example usage:

`docker run -it --rm -v /data/letsencrypt:/root/.acme.sh mbentley/letsencrypt`

By default, this displays the help for letsencrypt.  For additional documentation, see https://github.com/Neilpang/acme.sh/blob/master/README.md

Example with a DNS response plugin:

`docker run -it --rm -v /data/letsencrypt:/root/.acme.sh mbentley/letsencrypt issue dns_r53 mbentley.net www.mbentley.net`

