# cert configuration
> HTTPS 配置.

## steps
```shell
# 1. jump to dir
cd $HOME/github/docker-notes/docs/2020/2020-08/nginx-docker-demo

# 2. map to ports
docker container run \
  --rm \
  --name mynginx \
  --volume "$PWD/html":/usr/share/nginx/html \
  --volume "$PWD/nginx":/etc/nginx \
  -p 127.0.0.1:8080:80 \
  -p 127.0.0.1:8081:443 \
  -d \
  nginx
```

## 访问
- http://127.0.0.1:8080/
- https://127.0.0.1:8081/ (这个其实在 chrome下无法访问)

## resources
- https://www.jianshu.com/p/5f9bd492f186
- http://www.ruanyifeng.com/blog/2018/02/nginx-docker.html