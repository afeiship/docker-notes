# copy conf
> 拷贝配置

## steps
1. 把容器里面的 Nginx 配置文件拷贝到本地
   ```shell
   # 1. 运行 container
   docker container run \
    -d \
    -p 127.0.0.1:8080:80 \
    --rm \
    --name mynginx \
    --volume "$PWD/html":/usr/share/nginx/html \
    nginx

   # 2. copy config to local 
   docker container cp mynginx:/etc/nginx .
   ```
2. 映射配置目录
   ```shell
   # 1. jump to dir
   cd $HOME/github/docker-notes/docs/2020/2020-08/nginx-docker-demo

   # 2. map conf
   docker container run \
    --rm \
    --name mynginx \
    --volume "$PWD/html":/usr/share/nginx/html \
    --volume "$PWD/nginx":/etc/nginx \
    -p 127.0.0.1:8080:80 \
    -d \
    nginx
   ```