Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "ubuntu"
  # Provider for VirtualBox
  config.vm.provider :virtualbox do |vb|
    vb.memory = "1024"
    vb.cpus = 2
  end
  # Provider for Docker
  config.vm.provider :docker do |docker, override|
    override.vm.box = nil
    docker.image = "rofrano/vagrant-provider:ubuntu"
    docker.remains_running = true
    docker.has_ssh = true
    docker.privileged = true
    docker.volumes = ["/sys/fs/cgroup:/sys/fs/cgroup:ro"]
  end
  # Provision Docker Engine and pull down PostgreSQL
  config.vm.provision :docker do |d|
    d.pull_images "postgres:alpine"
    d.run "postgres:alpine",
       args: "-d -p 5432:5432 -e POSTGRES_PASSWORD=postgres"
  end
end
