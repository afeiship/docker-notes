# volumn html

## html
```shell
# 1. jump to dir
cd xxx/nginx-docker-demo

# 2. start docker image
docker container run \
  -d \
  -p 127.0.0.1:8080:80 \
  --rm \
  --name mynginx \
  --volume "$PWD/html":/usr/share/nginx/html \
  nginx
```