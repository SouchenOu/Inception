#!/bin/bash
mkdir -p /run/php/;
	touch /run/php/php7.3-fpm.pid; 
	sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf"
 if [ ! -f /var/www/wordpress/wp-config.php ]; then
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; 
	chmod +x wp-cli.phar; 
	mv wp-cli.phar /usr/local/bin/wp; 
	cd /var/www;
	wget https://wordpress.org/latest.tar.gz -P /var/www
    cd /var/www && tar -xzvf latest.tar.gz && rm latest.tar.gz
	sed -i "s/database_name_here/${SQL_DATABASE}/g" "/var/www/wordpress/wp-config-sample.php"
	sed -i "s/username_here/${SQL_USER}/g" "/var/www/wordpress/wp-config-sample.php"
	sed -i "s/password_here/${SQL_PASSWORD}/g" "/var/www/wordpress/wp-config-sample.php"
	sed -i "s/localhost/${db_host}/g" "/var/www/wordpress/wp-config-sample.php"
	cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php;
 fi
# exec "$@"