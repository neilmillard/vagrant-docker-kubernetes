echo "Installing Docker Engine"

# https://docs.docker.com/engine/installation/linux/centos/

sudo yum -y update
curl -fsSL https://get.docker.com/ | sh
sudo service docker start
sudo service firewalld stop

sudo groupadd docker
# DO NOT USE IN PRODUCTION!
sudo usermod -aG docker vagrant

sudo docker run --rm hello-world
