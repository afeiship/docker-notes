# commands
- https://www.runoob.com/docker/docker-dockerfile.html


## COPY
> 将目标进行 copy
```shell
COPY data app
```

## CMD
1. 执行一条 shell
2. 如果出现多个，只有最后一个会被执行

## VOLUMN
- https://larrylu.blog/using-volumn-to-persist-data-in-container-a3640cc92ce4
```shell
docker volume create --name data
```

## WORKDIR
> 后面执行的 run 会以 workdir 为上下文，而不需要 cd build & run xxx.

```dockerfile
RUN mkdir /kellis-ng-front
COPY . /kellis-ng-front
WORKDIR /kellis-ng-front
```

## LONG CMD
> 长的命令换行处理。
> DEPLOY_ENV/URL 来源于.env 或者 gitlab/github 等 variables 的配置。

```dockerfile
RUN echo "environment ${DEPLOY_ENV}" && \
NODE_ENV=${DEPLOY_ENV} URL=${URL} npm run build
```

## RUN/MIN
> Dockerfile 的指令每执行一次（RUN）都会在 docker 上新建一层。所以过多无意义的层，会造成镜像膨胀过大

```dockerfile
FROM centos
RUN yum install wget
RUN wget -O redis.tar.gz "http://download.redis.io/releases/redis-5.0.3.tar.gz"
RUN tar -xvf redis.tar.gz
# 以上执行会创建 3 层镜像。可简化为以下格式：
FROM centos
RUN yum install wget \
    && wget -O redis.tar.gz "http://download.redis.io/releases/redis-5.0.3.tar.gz" \
    && tar -xvf redis.tar.gz
```

## CMD
> 类似于 RUN 指令，用于运行程序，但二者运行的时间点不同:

~~~
CMD 在docker run 时运行。
RUN 是在 docker build。
~~~

> CMD 与 ENTRYPOINT 搭配使用
```dockerfile
FROM nginx

ENTRYPOINT ["nginx", "-c"] # 定参
CMD ["/etc/nginx/nginx.conf"] # 变参 
```

## docker-compose up
```shell
docker-compose --verbose up
```

## docker exec
```shell
docker exec -it shebao-rails_web_1 /bin/bash
```