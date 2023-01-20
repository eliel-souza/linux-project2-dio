#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
echo "Instalando o apache..."
apt-get install apache2 -y
echo "Instalando o unzip..."
apt-get install unzip -y
echo "Acessando diretório tmp..."
cd /tmp
echo "Realizando o download..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando arquivo..."
unzip main.zip
echo "Acessando diretório descompactado..."
cd linux-site-dio-main
echo "Copiando arquivos para o diretório do apache..."
cp -R * /var/www/html/
echo "Tarefa finalizada"
