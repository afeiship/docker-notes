# commands

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