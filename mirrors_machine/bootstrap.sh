#!/usr/bin/env bash
cp sources.list /etc/apt/sources.list
#Add the new GPG key
apt-get update
apt-get install vim --force-yes -y
apt-get install dpkg-dev --force-yes -y
apt-get install apache2 --force-yes -y
if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -fs /vagrant /var/www
fi
export LC_ALL=C
cd /var/www/html
dpkg-scanpackages soft/ /dev/null | gzip > /var/www/html/dists/trusty/main/binary-amd64/Packages.gz
dpkg-scanpackages soft/ /dev/null | gzip > /var/www/html/dists/trusty/main/binary-i386/Packages.gz