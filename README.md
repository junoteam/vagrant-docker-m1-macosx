## Vagrant Docker Provider for Apple M1
Vagrant Files and Scripts to run VM boxes in Docker with help of the Vagrant on top of MacOS M1 (Apple Silicon)

Most advanced VM is in - [./vm2-ubuntu20.04-debian](vm2-ubuntu20.04-debian)

## Why Vagrant with Docker?
VirtualBox not working on Apple M1 because VirtualBox requires an Intel processors.

## In Linux 
```bash
docker run --tmpfs /tmp --tmpfs /run -it -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 8081:80 -p 8080:8080 --name my_image <my_image>
```

## Credit
Thanks a lof for initial work to John Rofrano <rofrano@gmail.com>  
My repository was cloned from: https://github.com/rofrano/vagrant-docker-provider and modifed for my personal needs.
