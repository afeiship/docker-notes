# docker container
> 容器在 上层，复制了 image 的内容，在特定的环境中运行

## desc:
1. image 是不可以修改的 (RO)
2. container 是可以修改的 (RW)
3. 一个 image 可以生成多个 container
4. 这就解释了，为什么一个 image 可以在多处运行，而不受干扰
