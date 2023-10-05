#!/bin/bash
service mariadb start

#password that will be set for the Mysql root superuser account
mysqladmin -u root password "${MYSQL_ROOT_PASSWORD}"

mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e  "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE";
mysql -u root -p"$MYSQL_ROOT_PASSWORD"  -e  "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD'" ;
mysql -u root -p"$MYSQL_ROOT_PASSWORD"  -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';" ;
mysql -u root -p"$MYSQL_ROOT_PASSWORD"  -e  "FLUSH PRIVILEGES;"

#redemarer MYSQL pour tout cela soit effectif
mysqladmin -u root -p"$MYSQL_ROOT_PASSWORD" shutdown

#Je commence deja par eteindre MYSQL (Turn off)
exec mysqld