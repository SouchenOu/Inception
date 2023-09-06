#!/bin/bash

# starting the mysql service
service mysql start

# change the bind to 0.0.0.0 only accept client connections made to 0.0.0.0 (accept connection to any address)
# sed -i 's/bind-address= 127.0.0.1/bind-address = 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

# create the database if not exist
mysql -u root -p $MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE;"

# create the user if not exist
mysql -u root -p $MYSQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD';"

# grant all priviliges on the created database to the user
mysql -u root -p $MYSQL_ROOT_PASSWORD-e "GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO '$SQL_USER'@'%';"

# this command tell the MySQL or MariaDB server to reload the grant tables and update its internal data structures with the current contents of the grant tables.
mysql -u root -p $MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

# set the password to the root
mysql -u root -p $MYSQL_ROOT_PASSWORD-e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"

# killing the porcess of mysqld to not restarting while waiting the wordpress to get setup
kill `cat /var/run/mysqld/mysqld.pid`

exec "$@"

#FLUSH PRIVILEGES ---> Plus qu’à rafraichir tout cela pour que MySQL le prenne en compte.

# /bin/sh is an executable representing the system shell and usually implemented as a symbolic link pointing to the executable for whichever shell is the system shell. The system shell is basically the default shell that the script should use

#Do note that there is no need to use this mechanism to create the root superuser, that user gets created by default with the password specified by the MYSQL_ROOT_PASSWORD variable.


# If you want to give the privileges of all the databases and tables to a user. You can run the following command using the “*.*”

#example on privileges ---> insert, select, delete ... 





