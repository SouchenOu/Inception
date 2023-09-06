#!/bin/bash
	apt-get -y install wget
 	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar; 
	mv wp-cli.phar /usr/local/bin/wp; 
	cd /var/www/html;
	chmod -R 755 /var/www/html
	# download wordpress using wp-CLI 
	wp core download --allow-root
	touch wp-config.php
	# wget https://wordpress.org/latest.tar.gz -P /var/www
    # cd /var/www && tar -xzvf latest.tar.gz && rm latest.tar.gz
	sed -i "s/database_name_here/${SQL_DATABASE}/g" "/var/www/html/wp-config-sample.php"
	sed -i "s/username_here/${SQL_USER}/g" "/var/www/html/wp-config-sample.php"
	sed -i "s/password_here/${SQL_PASSWORD}/g" "/var/www/html/wp-config-sample.php"
	sed -i "s/localhost/${db_host}/g" "/var/www/html/wp-config-sample.php"
	cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
	
exec "$@"