# volume:
> 提供独立于容器之外的持久化存储

## mac 的虚拟层
```conf
mac 下不能直接看到 volumn的路径的，而是通过一个虚拟层的 alpine 的ngnix 实现的
```

## steps:
```shell
docker run -d -v /usr/share/nginx/html hello_nginx
```
## inspect:
docker inspect hello_nginx

## 登录进去看下：
docker exec -it hello_nginx /bin/bash

## 几种方式：
```shell
# -v
docker run -d -p 80:80 -v $PWD/html:/usr/shared/html hello_nginx

# --volumns-from
```