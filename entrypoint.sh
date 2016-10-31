#!/bin/bash

/usr/bin/redis-server --daemonize yes 
export APACHE_LOG_DIR=/var/log/apache2
source /etc/apache2/envvars
exec apache2 -D FOREGROUND


