#!/bin/bash


# Installation of Java

sudo apt update
sudo apt install fontconfig openjdk-17-jre  -y

# install jenkins Weekly release

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update 
sudo apt-get install jenkins -y 

# Start Jenkins

sudo systemctl enable jenkins

sudo systemctl start jenkins


