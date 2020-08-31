# nginx
- http://www.ruanyifeng.com/blog/2018/02/nginx-docker.html



## basic
> 基本使用

## http service
```shell
docker container run \
  -rm \
  -d \
  -p 127.0.0.1:8080:80 \
  --name mynginx \
  nginx
```
- http://localhost:8080/

## 解释
-d: 在后台运行
-p: 容器的80端口映射到127.0.0.2:8080
--rm: 容器停止运行后，自动删除容器文件
--name: 容器的名字为mynginx


## stop docker nginx
```shell
docker container stop mynginx
```


## errors1
>  The container name "/mynginx" is already in use by container
- https://www.cnblogs.com/luchuangao/p/8139805.html

```shell
docker rm -f mynginx
```

