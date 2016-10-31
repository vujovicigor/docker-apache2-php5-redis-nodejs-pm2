FROM php:5.6-apache
MAINTAINER vujovichigor@gmail.com
COPY php.ini /usr/local/etc/php/
COPY entrypoint.sh /bin/entrypoint.sh
## COPY html/ /var/www/html/
## --link data:data 

RUN apt-get update && apt-get install -y -o Dpkg::Options::="--force-confdef" libapache2-mod-php5 mysql-client php5-mysql redis-server nodejs npm \
	&& ln -s /usr/bin/nodejs /usr/bin/node \
	&& npm install pm2 -g \
	&& a2enmod rewrite \
	&& chmod +x /bin/entrypoint.sh

EXPOSE 80 6379
####CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
##ENTRYPOINT ["/bin/entrypoint.sh"]
ENTRYPOINT ["/bin/entrypoint.sh"]

