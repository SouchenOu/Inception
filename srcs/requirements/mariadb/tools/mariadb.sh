#!/bin/bash
service mysql start
mysql  -u root -p -e "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE";
mysql -u root -p -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'localhost' IDENTIFIED BY '$SQL_PASSWORD'" ;
mysql -u root -p -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';" ;
mysql  -u root -p -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;
mysql  -u root -p -e "FLUSH PRIVILEGES;"
exec mysqld_safe



# /bin/sh is an executable representing the system shell and usually implemented as a symbolic link pointing to the executable for whichever shell is the system shell. The system shell is basically the default shell that the script should use

#Do note that there is no need to use this mechanism to create the root superuser, that user gets created by default with the password specified by the MYSQL_ROOT_PASSWORD variable.


# If you want to give the privileges of all the databases and tables to a user. You can run the following command using the “*.*”

#example on privileges ---> insert, select, delete ... 





