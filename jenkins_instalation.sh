
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
