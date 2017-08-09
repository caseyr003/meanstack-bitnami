#!/bin/sh
sudo systemctl stop firewalld
sudo systemctl disable firewalld

yum install wget –y
wget -O bitnami-mean-linux-installer.run https://downloads.bitnami.com/files/stacks/meanstack/3.4.6-0/bitnami-meanstack-3.4.6-0-linux-x64-installer.run
chmod +x bitnami-mean-linux-installer.run
./bitnami-mean-linux-installer.run --mode unattended --enable-components rockmongo --apache_server_port 8080 --apache_server_ssl_port 8443 --mongodb_password welcome1

