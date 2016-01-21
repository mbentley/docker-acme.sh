mbentley/letsencrypt
====================

docker image for letsencrypt (https://github.com/Neilpang/le)
based off of debian:jessie

To pull this image:
`docker pull mbentley/letsencrypt`

Example usage:
`docker run -it --rm -v /data/le:/root/.le mbentley/letsencrypt:latest`

By default, this displays the help for letsencrypt.

For additional documentation, see https://github.com/Neilpang/le/blob/master/README.md
