Introduction
============

The Vagrantfile and boot script init.sh in this repo are to help you to set up
the [Centos Kubernetes Guide](https://kubernetes.io/docs/getting-started-guides/centos/centos_manual_config/).

Four virtual machines will be created and configured
as one master and 3 minion nodes.

Note that Docker is installed using Centos 7 as the base VM image and Docker's own
install script is used.

Pre-requisites
--------------
* [Vagrant](https://www.vagrantup.com/docs/installation/) (and allow Vagrant to install VirtualBox for you)

Setup
-----

    cd <your local code directory>
    git clone https://github.com/neilmillard/vagrant-docker-kubernetes.git
    cd vagrant-docker-kubernetes
    vagrant up

Usage
-----
The three running VMs are named ```master1```, ```minion1```, ```minion2``` and ```minion3```.

SSH into ```master1```:

    vagrant ssh master1

Obtain the IP from the Private Network (should be on ```eth1``` and 172.28.128.X/24)

    ip addr show eth1

You can now follow the guide [from here](https://kubernetes.io/docs/getting-started-guides/centos/centos_manual_config/).

To SSH into the minions:

    vagrant ssh minion1
    vagrant ssh minion2
    vagrant ssh minion3

When you're finished, log out of the SSH sessions and stop:

    vagrant halt

...or destroy the VMs.

    vagrant destroy
