#!/bin/bash
service mysql start
mysql -u root -password -e "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE";
mysql -u root -password -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD'" ;
mysql -u root -password -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';" ;
mysql -u root -password -e "FLUSH PRIVILEGES;"
mysql -u root -password -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;
mysql -u root -password -e "FLUSH PRIVILEGES;"
kill `cat /var/run/mysqld/mysqld.pid`
mysqld

