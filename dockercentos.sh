#!/bin/bash
##Autor: zainil kabore
##Date: 07/28/2023
##---------docker installation in centos------
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine1~
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo1~
sudo yum install docker-ce docker-ce-cli containerd.io -y

sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
