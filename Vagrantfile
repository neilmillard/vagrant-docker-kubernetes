# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provision :shell, path: "init.sh"
  config.vm.network "private_network", type: "dhcp"
  config.vm.box = "centos71"
  config.vm.box_url = "https://github.com/holms/vagrant-centos7-box/releases/download/7.1.1503.001/CentOS-7.1.1503-x86_64-netboot.box"

  config.vm.define "master1" do |manager1|
     manager1.vm.hostname = "manager1"
  end

  config.vm.define "minion1" do |worker1|
     worker1.vm.hostname = "worker1"
  end

  config.vm.define "minion2" do |worker2|
     worker2.vm.hostname = "worker2"
  end

  config.vm.define "minion3" do |worker3|
     worker2.vm.hostname = "worker3"
  end

end
