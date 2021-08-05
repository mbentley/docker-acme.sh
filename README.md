# mbentley/acme.sh

docker image for [acmesh-official/acme.sh](https://github.com/acmesh-official/acme.sh)
based off of alpine:latest

To pull this image:
`docker pull mbentley/acme.sh`

## Example usage

```
docker run -it --rm \
  -v ~/acme.sh:/root/.acme.sh \
  mbentley/acme.sh
```

By default, this displays the help.  For additional documentation, see [acmesh-official/acme.sh](https://github.com/acmesh-official/acme.sh)

### Examples with the `dns_aws` [DNS response plugins](https://github.com/acmesh-official/acme.sh/tree/master/dnsapi)

If you're looking to just try this out, I would highly suggest testing using the `--staging` CLI argument first to make sure that everything works as expected before generating your first certificates.  In order to use one of the DNS API response plugins, download the appropriate script and place it in your `~/.acme.sh` directory (or whatever you're using for your persistent data volume).  Keep the `.sh` extension but just reference the plugin by the name (e.g. - `dns_aws.sh` is referenced as `dns_aws`).

#### Create new cert

```
docker run -it --rm \
  -v ~/.acme.sh:/root/.acme.sh \
  -e AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY \
  mbentley/acme.sh:latest \
  --issue --domain '*.example.com' --dns dns_aws
```

#### Renew a cert

```
docker run -it --rm \
  -v ~/.acme.sh:/root/.acme.sh \
  -e AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY \
  mbentley/acme.sh:latest \
  --renew --domain '*.example.com' --dns dns_aws
```

**Note**: you should have the AWS keys exported in your current environment so they are available in the container or specifically pass them as environment variables on the CLI.
