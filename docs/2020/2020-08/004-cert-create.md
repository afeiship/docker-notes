# cert
> 自签名证书

## steps
1. 首先，确定你的机器安装了 OpenSSL，然后执行下面的命令
```shell
sudo openssl req \
  -x509 \
  -nodes \
  -days 365 \
  -newkey rsa:2048 \
  -keyout example.key \
  -out example.crt
```
<img width="800" src="https://tva1.sinaimg.cn/large/007S8ZIlgy1gi9qeil050j316q0hsq7a.jpg"> 