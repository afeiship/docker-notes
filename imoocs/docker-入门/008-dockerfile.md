# Dockerfile
> 编写简单的文件生成 image


## Dockerfile hello:
1. dockerfile
```dockerfile
FROM alpine latest
MAINTAINER afeiship
CMD echo 'hello docker'
```
2. commands
```shell
docker build -t hello_docker .
```
3. docker run
```shell
docker run hello_docker
```


