# docker ruby
- https://www.runoob.com/docker/docker-dockerfile.html

## build
```shell
# 正常的build
docker build -t ruby-demo .

# 带tag的build
docker build -t ruby:v1 .
```

## run docker
```shell
docker build -t ruby-demo .
docker run ruby-demo
```

## list/rm/stop
```shell
# list
docker ps -a

# rm
docker rm $(docker ps -aq)

# stop
docker stop $(docker ps -aq)
```