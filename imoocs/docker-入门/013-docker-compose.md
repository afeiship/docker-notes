# docker compose

## linux-install-compose
```shell
# see github
```

## docker-compose.yml
```conf
## see ghost-app dir
## stop && rm images:
docker-compose stop
docker-compose rm 

## rebuild
docker-compose build

## start:
docker-compose up -d 
```

## commond:
```conf
build: 从本地创建一个 image
command:
depends_on
ports:
volumes:
image: pull 拉镜像

up: 启动
stop: 停止
rm: 删除
logs: 
ps: 列出所有相关容器
```