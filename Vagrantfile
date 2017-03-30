# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provision :shell, path: "init.sh"
  config.vm.network "private_network", type: "dhcp"
  config.vm.box = "centos71"
  config.vm.box_url = "https://github.com/holms/vagrant-centos7-box/releases/download/7.1.1503.001/CentOS-7.1.1503-x86_64-netboot.box"

  config.vm.define "master1" do |master1|
     master1.vm.hostname = "gru1"
  end

  config.vm.define "minion1" do |minion1|
     minion1.vm.hostname = "bob1"
  end

  config.vm.define "minion2" do |minion2|
     minion2.vm.hostname = "dave2"
  end

  config.vm.define "minion3" do |minion3|
     minion3.vm.hostname = "stuart3"
  end

end
