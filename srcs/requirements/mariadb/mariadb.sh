systemctl status mariadb
mysql_secure_installation
mysql -u root -p
CREATE DATABASE IF NOT EXIST $DB_NAME;
CREATE USER $DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSW';
GRANT ALL PRIVILEGES ON *.* to '$DB_USER'@'localhost';
FLUSH PRIVILEGES;


