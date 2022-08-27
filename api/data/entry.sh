#! /bin/bash 
#Cloning Project
git clone https://github.com/mhemanthkmr/php-api.git /var/www/html
sed -i "s/font/cupcake/" ~/.bashrc
a2enmode rewrite


mkdir /home/htdocs
mkdir /home/htconfig

ln -s /var/www/html/  /home/htdocs
ln -s /etc/apache2/sites-available/ /home/htconfig/

/usr/sbin/apache2ctl -D FOREGROUND
