systemctl status mariadb
mysql_secure_installation
mysql -u root -p
CREATE DATABASE IF NOT EXIST $DB_NAME;
CREATE USER $DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSW';
GRANT ALL PRIVILEGES ON *.* to '$DB_USER'@'localhost';
FLUSH PRIVILEGES;





# service mysql start
# mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS $DB_NAME";
# mysql -u root -p -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PSSWRD'" ;
# mysql -u root -p -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%';" ;
# mysql -u root -p -e "FLUSH PRIVILEGES;"
# mysql -u root -p -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';" ;
# mysql -u root -p -e "FLUSH PRIVILEGES;"
# kill `cat /var/run/mysqld/mysqld.pid`
# mysqld


