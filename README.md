mbentley/letsencrypt
====================

docker image for letsencrypt (https://github.com/Neilpang/acme.sh)
based off of debian:jessie

To pull this image:
`docker pull mbentley/letsencrypt`

Example usage:

`docker run -it --rm -v ~/letsencrypt:/root/.acme.sh mbentley/letsencrypt`

By default, this displays the help.  For additional documentation, see https://github.com/Neilpang/acme.sh/blob/master/README.md

Examples with the `dns_aws` [https://github.com/Neilpang/acme.sh/tree/master/dnsapi](DNS response plugin):

### Create new cert
```
docker run -it --rm \
  -v ~/letsencrypt:/root/.acme.sh \
  -e AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY \
  mbentley/letsencrypt:latest \
  --issue --domain '*.example.com' --dns dns_aws
```

### Renew a cert
```
docker run -it --rm \
  -v ~/letsencrypt:/root/.acme.sh \
  -e AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY \
  mbentley/letsencrypt:latest \
  --renew --domain '*.example.com' --dns dns_aws
```

**Note**: you should have the AWS keys exported in your current environment so they are available in the container or specifically pass them as environment variables on the CLI.
