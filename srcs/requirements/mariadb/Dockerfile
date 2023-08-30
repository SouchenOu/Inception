FROM debian:buster

RUN apt update && apt install -y mariadb-server
COPY ./tools/mariadb.sh /var/www/
COPY  ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x /var/www/mariadb.sh

#run the mariadb.sh
ENTRYPOINT [ "/var/www/mariadb.sh" ]

# running mysqld daemon
CMD ["mysqld"]