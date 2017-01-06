#fei-docker
> My docker files.


## how to build && run:
```bash
## build:
cd ~/github/fei-docker
docker build -t fei-docker .

## run
docker run -it fei-docker
```

## mount dir:
```bash
## must use absolute path:
docker run -it -v /Users/feizheng/git-oschina:/root/git-oschina fei-docker /bin/bash
```


## how to delete:
```bash
docker rmi fei-docker:latest --force
docker rmi daocloud.io/centos


REPOSITORY           TAG                 IMAGE ID            CREATED             SIZE
<none>               <none>              6167b5656dd1        3 days ago          326.3 MB
centos               latest              67591570dd29        3 weeks ago         191.8 MB
daocloud.io/centos   7                   67591570dd29        3 weeks ago         191.8 MB

docker rmi centos --force
docker rmi centos --force
docker rmi 6167b5656dd1 --force
docker rmi daocloud.io/centos --force

```

## install nodejs:
+ http://www.dahouduan.com/2014/12/25/centos-yum-install-nodejs-npm/
