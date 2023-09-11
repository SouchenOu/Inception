#!/bin/bash
	mkdir -p /run/php/;
	touch /run/php/php7.3-fpm.pid;
	sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf"
	apt-get -y install wget
	mkdir -p /var/www/html
 	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar; 
	mv wp-cli.phar /usr/local/bin/wp; 
	cd /var/www/html;
	# wget https://wordpress.org/latest.tar.gz -P /var/www
	wp core download --allow-root;
	# cd /var/www
	# tar -xzvf latest.tar.gz
	# cd /var/www/wordpress
	# chown -R root:root /var/www/wordpress
	touch /var/www/html/wp-config.php
	sed -i "s/database_name_here/${SQL_DATABASE}/g" "/var/www/html/wp-config-sample.php"
	sed -i "s/username_here/${SQL_USER}/g" "/var/www/html/wp-config-sample.php"
	sed -i "s/password_here/${SQL_PASSWORD}/g" "/var/www/html/wp-config-sample.php"
	sed -i "s/localhost/${db_host}/g" "/var/www/html/wp-config-sample.php"
	cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
	
exec "$@"