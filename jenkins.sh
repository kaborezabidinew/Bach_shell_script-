#!bin/bash 
###-----------------------------------------------------------------------------------------------------------------#
### @Autor : zainil kabore 
### Description : This is the script that will take care of the installation of Java, 
###               Jenkins server and some utilitiess
### Date : 06/28/2023
###------------------------------------------------------------------------------------------------------------------#
#### Recover the ip address and update the server
IP=$(hostname -I | awk '{print $2}')
echo "START - install jenkins - "$IP
echo "=====> [1]: updating ...."
sudo yum update -y

#### Prerequisites tools(Wget, ...) for Jenkins
echo "=====> [2]: install prerequisite tools for Jenkins"
sudo yum install -y yum-presto
### Although not needed for Jenkins, I like to use vim, so let's make sure it is installed:
sudo yum install -y vim
### The Jenkins setup makes use of wget, sshpass and gnupg2
sudo yum install -y wget
sudo yum install -y sshpass
sudo yum install -y gnupg2

### Let's make sure that we have the EPEL and IUS repositories installed.
### This will allow us to use newer binaries than are found in the standard CentOS repositories.
sudo wget -N http://dl.iuscommunity.org/pub/ius/stable/CentOS/7/x86_64/ius-release-1.0-13.ius.centos7.noarch.rpm
sudo rpm -Uvh ius-release*.rpm
### gnupg2 openssl :
#sudo yum install -y openssl
### Jenkins on CentOS requires Java, but it won't work with the default (GCJ) version of Java. So, let's remove it:
sudo yum remove -y java
###install the OpenJDK version of Java 11:
sudo yum install java-11* -y
