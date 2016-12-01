#!/bin/bash

echo "Apache2 installing"
sudo apt-get update
sudo apt-get install apache2

echo "MySQL installing"
sudo apt-get install mysql-server php5-mysql
sudo mysql_install_db
sudo mysql_secure_installation

echo "PHP instaling"
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
sudo apt-get install php5-cli

echo "phpMyAdmin instaling"
sudo apt-get install phpmyadmin apache2-utils


################################
echo "Sublime Text installing"
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update && sudo apt-get install sublime-text-installer

sudo apt-add-repository ppa:webupd8team/atom
sudo apt update
sudo apt install atom
