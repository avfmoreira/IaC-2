#!/bin/bash

echo "Atualizando o servidor"
apt update -y
apt upgrade -y

echo "Instalando servidor web"
apt install apache2 -y
apt install unzip
cd /temp

echo "Baixando arquivos"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/ 

echo "Rotina finalizada"

