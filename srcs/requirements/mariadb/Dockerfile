FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server
COPY ./tools/mariadb.sh /var/www/
RUN chmod +x /var/www/mariadb.sh

#COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i 's/bind-address/#bind-address/g' /etc/mysql/mariadb.conf.d/50-server.cnf
ENTRYPOINT [ "/var/www/mariadb.sh" ]