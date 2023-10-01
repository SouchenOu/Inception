FROM debian:buster
RUN apt update 
RUN apt install -y mariadb-server
COPY ./tools/mariadb.sh /var/www/
RUN chmod +x /var/www/mariadb.sh
RUN sed -i 's/bind-address/#bind-adress/' /etc/mysql/mariadb.conf.d/50-server.cnf
ENTRYPOINT [ "/var/www/mariadb.sh" ]
# # running mysqld daemon
# CMD ["mysqld"]