#!/bin/bash

# Perbarui package repository
sudo yum update -y

# Instal Apache HTTP Server
sudo yum install -y httpd

# Instal PHP
sudo yum install -y php

# Mulai layanan httpd dan atur untuk memulai otomatis saat boot
sudo systemctl start httpd
sudo systemctl enable httpd

# Verifikasi instalasi
httpd_version=$(httpd -v)
php_version=$(php -v)

echo "Installed versions:"
echo "$httpd_version"
echo "$php_version"