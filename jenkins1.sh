 ## install Git
 sudo yum install git -y
 yum install unzip -y

 ## Install Java 11:
#sudo amazon-linux-extras install java-openjdk11 -y

 sudo yum install java-11* -y
 ## Install Jenkins then Enable the Jenkins service to start at boot :
 sudo yum install jenkins -y
sudo systemctl enable jenkins

 ## Start Jenkins as a service:
sudo systemctl start jenkins

## Display Initial Jenkins Password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
 ## Take ip to the browser and access it on port 8080 ( example: 198.40.2.78:8080 )
# *** troubleshoot jenkins:

 sudo rm -rf /etc/yum.repos.d/jenkins.repo
 sudo yum install -y wget
 sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
 sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y jenkins
 sudo systemctl start jenkins
 sudo systemctl enable jenkins

