#!/bin/bash
# CONFIG.SH 
# SETUPS THE ENVIRONMENT FOR FILES

mkdir /sites
mkdir /config
mkdir /html
mkdir /logs
cd /logs
touch nginx-error.log
touch access.log
touch error.log
apt update
apt upgrade -y
apt install nginx apache2-utils curl php7.4-fpm -y
cp ./conf/nginxconf /etc/nginx
cp ./conf/sites /sites
cp ./html /html