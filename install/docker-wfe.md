## 安装docker + docker-compose

1. 安装docker
```shell
yum install -y docker
```
 
2. 检查version
```shell
docker version
```

3. 启动docker
```shell
service docker start
```

4. 安装compose
```shell
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
```
 
5. 修改权限
```shell
chmod +x /usr/local/bin/docker-compose
```
 
6. 检查版本号
```shell
docker-compose –version
```
 
7. 创建docker组
```shell
groupadd -g 501 docker
```
 
8. 把zhenbao加入到docker组
```shell
gpasswd -a zhenbao docker
```

9. 用新用户登录，权限检查
```shell
docker ps
```