service apache2 stop
update-rc.d -f apache2 remove
apt-get remove apache2

apt-get install lighttpd
apt-get install php5-fpm php5
cd /etc/lighttpd/conf-available/
cp 15-fastcgi-php.conf 15-fastcgi-php.conf.bak
vi 15-fastcgi-php.conf
lighttpd-enable-mod fastcgi
lighttpd-enable-mod fastcgi-php

ls -l /etc/lighttpd/conf-enabled
