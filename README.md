## Vagrant Docker Provider for Apple M1
Vagrant Files and Scripts to run VM boxes in Docker with help of the Vagrant on top of MacOS M1 (Apple Silicon)

Most advanced VM is in - [./vm2-ubuntu22.04-debian](vm2-ubuntu22.04-debian)

## Why Vagrant with Docker?
VirtualBox not working on Apple M1 because VirtualBox requires an Intel processors.

## How to use
Build docker: 
```bash
cd ./vm2-ubuntu22.04-debian
make help
make build
````

or
```bash
cd ./vm2-ubuntu22.04-debian
docker build --file Dockerfile.ubuntu --tag rofrano/vagrant-provider:ubuntu-jammy .
```

run Vagrant
```bash
cd ./vm2-ubuntu22.04-debian
vagrant up
```

## Run Docker container with Systemd In Linux 
version of systemd installed inside Docker image should be >=247
```bash
docker run --tmpfs /tmp --tmpfs /run -it -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 8081:80 -p 8080:8080 --name my_image <my_image>:ubuntu-jammy
```

## Run Docker container with Systemd on M1 Mac 
```bash
docker run -ti --privileged -v /sys/fs/cgroup:/sys/fs/cgroup <my_image>:ubuntu-jammy
```

## Credit
Thanks a lof for initial work to John Rofrano <rofrano@gmail.com>  
My repository was cloned from: https://github.com/rofrano/vagrant-docker-provider and modifed for my personal needs.
