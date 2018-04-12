# dockerfile nginx

## docker nginx
1. docker file
```dockerfile
FROM ubuntu
MAINTAINER afeiship
## 替换 ubntun 源
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.org/g' /etc/apt/sources.lsit
## 升级 ubuntu
RUN apt-get pdate
## 安装 nginx
RUN apt-get install -y nginx
## 自己准备一下 index.html
COPY index.html /var/www/html
## 让 nginx 在前台执行
ENTRYPOINT ['/usr/sbin/ngix', '-g', 'daemon off;'] 
EXPOSE 80
```

2. build
```shell
docker build -t afeiship/hello_nginx .
```

3. docker run hello_nginx
```shell
docker run -d p 80:80 afeiship/hello_nginx
```

4. test:
```shell
curl http://localhost
```

## desc:
```conf
FROM: basic image
RUN: 执行命令
ADD: 添加文件，可以加入远程的文件[FTP/HTTP]
COPY: COPY文件，或者目录
CMD: 执行命令
EXPOSE: 暴露端口
WORKDIR: 指定路径（啥？）
MATAINER: 维护者
ENV: 设定环境变量
ENTRYPOINT: 容器入口 和 CMD 类似
USER: 指定用户，执行该命令的用户
VOLUMN: mount point
```