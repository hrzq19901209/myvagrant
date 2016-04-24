#!/usr/bin/env bash
cp sources.list /etc/apt/sources.list
#Add the new GPG key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 
echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install vim --force-yes -y
apt-get install git --force-yes -y
apt-get install tree --force-yes -y
apt-get install docker-engine --force-yes -y
tar -C /usr/local -xzf go1.6.2.linux-amd64.tar.gz
echo 'export GOPATH=/vagrant/GO' >> .bashrc
echo 'export PATH=$PATH:/usr/local/go/bin' >> .bashrc
source .bashrc