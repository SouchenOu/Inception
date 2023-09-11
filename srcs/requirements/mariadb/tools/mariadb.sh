#!/bin/bash

MYSQL_ROOT_PASSWORD=123456789
USER_EMAIL=souchen@student.1337.ma
SQL_DATABASE=wordp_db
SQL_USER=souchen
SQL_PASSWORD=123456789
db_host=localhost

service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE";
mysql -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD'" ;
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';" ;
mysql -e "FLUSH PRIVILEGES;"
mysql -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;
mysql -e "FLUSH PRIVILEGES;"
# kill `cat /var/run/mysqld/mysqld.pid`
mysqld


