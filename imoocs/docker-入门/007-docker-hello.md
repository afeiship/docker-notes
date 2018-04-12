# docker hello

## commands:

## run
```shell
## hello docker 
docker run ubuntu echo hello docker

## docker nginx [ 端口 => 本地: 远程 ]
docker run -p 8080:80 -d daocloud.io/nginx
# id: fg2313dsfj123123lsjdj
```

## cp:
```shell
## docker [ cp file]
## create a index.html & copy to nginx
docker cp index.html fg2313dsfj123123lsjdj://usr/share/nginx/html
```

## stop:
```shell
docker stop
```

## rmi
```shell
docker rmi fg2313dsfj123123lsjdj
```

## commit [每次的 实际上是产生了一个新的 image]
```shell
# 这个实际上是产生了一个新的 image [ 最后那个是名字 ]
docker commit - m "issue: save test" fg2313dsfj123123lsjdj
docker commit - m "issue: save test" fg2313dsfj123123lsjdj nginx-fun

## 删除历史用： docker rm 
```


## desc
```conf
# docker run ubuntu echo hello docker
1. docker 会先从本地去找 ubuntu ，如果没有，就会去远端找
2. 每次 stop 上次cp 等 操作都会释放
3. 每次 run 都会新产生id 
4. docker ps -a {列出所有的}
5. commit 命令可以保存
6. docker commands:

```

## 常用 commands:
```bash
docker pull: 拉取 image
docker build: 创建 image
docker imags: 列出 container
docker ps: 列出正在运行的 container
docker run : 运行 container 
docker info: 查看
docker rm : 删除已经结束的 container
docker rmi：删除image
docker cp : COPY
```