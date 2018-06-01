## 安装docker + docker-compose

1. 安装docker
yum install -y docker
 
2. 检查version
docker version

3. 启动docker
service docker start

4. 安装compose
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
 
5. 修改权限
chmod +x /usr/local/bin/docker-compose
 
6. 检查版本号
docker-compose –version
 
7. 创建docker组
groupadd -g 501 docker
 
8. 把zhenbao加入到docker组
gpasswd -a zhenbao docker

9. 用新用户登录，权限检查
docker ps