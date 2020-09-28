# docker ubuntu

## installation

### 2020-02-17
```shell
# 1. install
sudo snap install docker

# 2. start
sudo snap start docker

# 3. sudo docker-compose
sudo docker-compose up -d

# 4. check
 sudo lsof -i -P -n | grep 83

# 5. check version(recommand)
docker --version
docker-compose --version
# Docker version 19.03.11, build dd360c7
# docker-compose version 1.25.5, build unknown
```

## uninstallation
```shell
sudo snap remove docker
```

--- 
~~~
wget -qO- https://get.docker.com/ | sh
~~~

~~~
    If you would like to use Docker as a non-root user, you should now consider
    adding your user to the "docker" group with something like:

    sudo usermod -aG docker runoob
   Remember that you will have to log out and back in for this to take effect!  
~~~

## start in services
~~~
systemctl:(centos)
$ sudo systemctl start docker

service:(ubuntu)
$ sudo service docker start
~~~

## resources
- https://www.runoob.com/docker/ubuntu-docker-install.html