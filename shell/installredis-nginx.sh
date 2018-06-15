#!/bin/bash

#redis
	
cd /opt
wget http://download.redis.io/releases/redis-4.0.9.tar.gz
tar -zxvf redis-4.0.9.tar.gz
cd redis-4.0.9
sudo make clean
sudo make install

#lua
 
cd /opt
wget http://www.lua.org/ftp/lua-5.3.4.tar.gz
tar -zxvf lua-5.3.4.tar.gz
cd lua-5.3.4
sudo make clean
sudo make linux
sudo make install
 
#pcre

cd /opt
wget http://downloads.sourceforge.net/project/pcre/pcre/8.35/pcre-8.35.tar.gz
tar -zxvf pcre-8.35.tar.gz
cd pcre-8.35
./configure
make && make install
pcre-config --version

#nginx

cd /opt
wget http://nginx.org/download/nginx-1.14.0.tar.gz
tar -zxvf nginx-1.14.0
./configure --prefix=/usr/local/webserver/nginx --with-http_stub_status_module --with-http_ssl_module --with-pcre=/usr/local/src/pcre-8.35
make
make install

sudo mv *.tar.gz ~/Downloads

#安装ssh服务

sudo apt-get install openssh-server


