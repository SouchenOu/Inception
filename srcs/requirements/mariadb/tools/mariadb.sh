#!/bin/bash
service mariadb start
#/etc/init.d/mariadb start

mysqladmin -u root password "${MYSQL_ROOT_PASSWORD}"

mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e  "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE";
mysql -u root -p"$MYSQL_ROOT_PASSWORD"  -e  "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD'" ;
mysql -u root -p"$MYSQL_ROOT_PASSWORD"  -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';" ;
mysql -u root -p"$MYSQL_ROOT_PASSWORD"  -e  "FLUSH PRIVILEGES;"

#mysql -u root -p"$MYSQL_ROOT_PASSWORD" << _EOF_
#CREATE DATABASE IF NOT EXISTS $SQL_DATABASE;
# CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD';
# GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';
# FLUSH PRIVILEGES;
# _EOF_

#mysql -u root -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;

mysqladmin -u root -p"$MYSQL_ROOT_PASSWORD" shutdown

exec mysqld