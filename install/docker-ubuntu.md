# docker ubuntu

## installation

### 2020-02-17
```shell
# 1. install
sudo snap install docker

# 2. start
sudo snap start docker
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