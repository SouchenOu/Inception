FROM debian:buster

RUN apt-get update && apt-get install -y php7.3 php-fpm php-mysqli sendmail wget
COPY ./conf/auto_config.sh /var/www/
RUN chmod +x /var/www/auto_config.sh
ENTRYPOINT [ "/var/www/auto_config.sh" ]
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]