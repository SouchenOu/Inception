#!/bin/bash
service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE";
mysql -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD'" ;
mysql -e "GRANT ALL ON $SQL_DATABASE.* TO '$SQL_USER'@'%'" ;
mysql -e "FLUSH PRIVILEGES;"
mysql -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;
mysql -e "FLUSH PRIVILEGES;"

service mysql stop
# kill 

exec "$@"


#FLUSH PRIVILEGES ---> Plus qu’à rafraichir tout cela pour que MySQL le prenne en compte.

# /bin/sh is an executable representing the system shell and usually implemented as a symbolic link pointing to the executable for whichever shell is the system shell. The system shell is basically the default shell that the script should use

#Do note that there is no need to use this mechanism to create the root superuser, that user gets created by default with the password specified by the MYSQL_ROOT_PASSWORD variable.


# If you want to give the privileges of all the databases and tables to a user. You can run the following command using the “*.*”

#example on privileges ---> insert, select, delete ... 





