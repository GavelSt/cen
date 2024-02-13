#!/bin/bash
echo "Nachalo ystanovki"
# Установка необходимых пакетoв +
sudo yum install -y epel-release
 
# Установка Nginx
sudo yum install -y nginx

# Установка Docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker

# Установка Asterisk
sudo yum install -y asterisk

# Установка Zabbix
sudo yum install -y zabbix-agent

# Установка Ansible
sudo yum install -y ansible

# Установка Jenkins
sudo yum install -y java-1.8.0-openjdk jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Установка Python3
sudo yum install -y python3

# Установка Docker Compose
sudo yum install -y docker-compose

# Установка Kubernetes
echo "Для установки Kubernetes рекомендуется использовать инструкции от Kubernetes."
sudo yum -y install kubernetes

# Установка Prometheus
sudo yum install -y prometheus

echo "Установка завершена."

