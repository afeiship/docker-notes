# linux-instlall
> How to install in linux platform

## commands:
```shell
# sudo: 我是一个普通用户，但是以 root 方式来执行
# -q : 安静的输出
# -O : 输出到标准输出，而不是到文件
# | sh: 上一步的输出交给 sh 继续执行
sudo wget -qO https://get.docker.com | sh


# 把当前的用户加到 docker 组里，这样就不需要用 root 就可以执行 docker 命令[正常 docker 只能 root 运行] 
sudo usemod -aG docker feizheng

```