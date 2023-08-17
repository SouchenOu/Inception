FROM debian:buster

RUN apt update && apt install -y mariadb-server
COPY ./tools/mariadb.sh /var/www/
COPY  ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x /var/www/mariadb.sh
ENTRYPOINT [ "/var/www/mariadb.sh" ]
















# FROM debian:buster
# RUN apt-get update
# RUN apt-get install -y mariadb-server
# COPY tools /var/www/
# RUN chmod +x /var/www/mariadb.sh
# RUN sed -i 's/bind-address/#bind-adress/' /etc/mysql/mariadb.conf.d/50-server.cnf
# ENTRYPOINT [ "/var/www/mariadb.sh" ]












# FROM debian:buster

# RUN apt update && apt install -y mariadb-server
# COPY tools /var/www/
# RUN chmod +x /var/www/add_db.sh
# RUN sed -i 's/bind-address/#bind-adress/' /etc/mysql/mariadb.conf.d/50-server.cnf
# ENTRYPOINT [ "/var/www/add_db.sh" ]



# FROM debian:buster

# RUN apt update; \
#     apt install -y mariadb-server

# COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
# COPY ./conf/createdb.sql /

# RUN service mysql start && mysql < createdb.sql && rm -f createdb.sql

# EXPOSE 3306

# CMD /usr/bin/mysqld_safevim m 