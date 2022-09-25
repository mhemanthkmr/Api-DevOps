#! /bin/bash 
#Cloning Project
git clone https://github.com/mhemanthkmr/php-api.git /var/www/html
sed -i "s/font/cupcake/" ~/.bashrc
a2enmode rewrite


mkdir /home/htdocs
mkdir /home/htconfig

ln -s  /home/htdocs /var/www/html/
ln -s /home/htconfig/ /etc/apache2/sites-available/


echo "Completed Initial Setup"

/usr/sbin/apache2ctl -D FOREGROUND
