# Version 0.1

# base image:
FROM daocloud.io/centos

# maintainer info:
MAINTAINER 1290657123@qq.com

# use aliyun repositry:

# initial diretionay:
RUN cd ~ && mkdir soft git-oschina github

# install nodejs/git/vim:
# RUN yum install -y git vim
# RUN yum install -y nodejs npm
