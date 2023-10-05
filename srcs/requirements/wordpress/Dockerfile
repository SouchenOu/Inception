FROM debian:bullseye

RUN apt-get update && apt-get install -y php php-fpm php-mysql wget
COPY ./conf/auto_config.sh /var/www/

RUN chmod +x /var/www/auto_config.sh
ENTRYPOINT [ "/var/www/auto_config.sh" ]
CMD ["/usr/sbin/php-fpm7.4", "--nodaemonize"]

