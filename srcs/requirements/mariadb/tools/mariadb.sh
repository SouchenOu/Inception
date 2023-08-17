#!/bin/bash
service mysql start
mysql  -u root -p -e "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE";
mysql -u root -p -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD'" ;
mysql -u root -p -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';" ;
mysql  -u root -p -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;
mysql  -u root -p -e "FLUSH PRIVILEGES;"
exec mysqld_safe



# /bin/sh is an executable representing the system shell and usually implemented as a symbolic link pointing to the executable for whichever shell is the system shell. The system shell is basically the default shell that the script should use










