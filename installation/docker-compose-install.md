# install:

## docker-compose
```bash

## docker componse
curl -L https://github.com/docker/compose/releases/download/1.20.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

## or:
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

## if has error:
pip install --upgrade --force-reinstall 'requests==2.6.0' urllib3

## checkversion
docker-compose --version
```