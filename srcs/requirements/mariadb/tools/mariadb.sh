#!/bin/bash
service mysql start
mysql -u root "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE";
mysql -u root "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD'" ;
mysql -u root "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';" ;
mysql -u root "FLUSH PRIVILEGES;"
mysql -u root "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;
mysql -u root "FLUSH PRIVILEGES;"
kill `cat /var/run/mysqld/mysqld.pid`
mysqld












# service mysql start
# mysql -e "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE";
# mysql -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD'" ;
# mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';" ;
# mysql -e "FLUSH PRIVILEGES;"
# mysql -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;
# mysql -e "FLUSH PRIVILEGES;"
# # kill `cat /var/run/mysqld/mysqld.pid`
# mysqld


