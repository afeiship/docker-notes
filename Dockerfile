# Version 0.1

# base image:
FROM daocloud.io/centos:7

# maintainer info:
MAINTAINER 1290657123@qq.com

# use aliyun repositry:

# install nodejs/git/vim:
RUN yum install -y nodejs git vim
