
#!/bin/bash

# Update the system
sudo apt-get update

# Install Java (Jenkins requires Java)
sudo apt-get install -y openjdk-11-jdk

# Add the Jenkins repository key to your system
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Append the Debian package repository address to the server's sources.list
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the system so that apt-get can use the new repository
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins service to load during boot
sudo systemctl enable jenkins

# Output the initial admin password
#echo "Jenkins installation completed. The initial admin password is:i
#sudo cat /var/lib/jenkins/secrets/initialAdminPassword
-----------------------------------------------------------------
#for amazon linux2 
sudo yum update -y
# Jenkins repo is added to yum.repos.d
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import key from Jenkins
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Java-11
amazon-linux-extras install java-openjdk11 -y

# Install Jenkins
yum install jenkins -y

# You can enable the Jenkins service to start at boot with the command:
systemctl enable jenkins

# You can start the Jenkins service with the command:
systemctl start jenkins

# You can check the status of the Jenkins service using the command:
systemctl status jenkins
