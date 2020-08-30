# nginx
- http://www.ruanyifeng.com/blog/2018/02/nginx-docker.html


## http service
```shell
docker container run \
  -d \
  -p 127.0.0.1:8080:80 \
  --name mynginx \
  nginx
```
- http://localhost:8080/



## errors1
>  The container name "/mynginx" is already in use by container
- https://www.cnblogs.com/luchuangao/p/8139805.html

```shell
docker rm -f mynginx
```

