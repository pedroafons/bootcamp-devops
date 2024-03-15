#!/bin/bash

echo "Atualizando o servidor"
echo "----------------------"
sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando o Apache"
echo "-------------------"
sudo apt-get install apache2 -y

echo "Clonando o repositório da aplicação"
echo "-----------------------------------"
sudo git clone https://github.com/denilsonbonatti/mundo-invertido.git
cd mundo-invertido

echo "Copiando os arquivos do repositório para a pasta do Apache"
echo "----------------------------------------------------------"
sudo cp -R * /var/www/html

echo "Exibindo o atual IP do servidor"
echo "-------------------------------"
ip a