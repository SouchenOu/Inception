FROM debian:buster
RUN apt update
RUN apt  install -y nginx
RUN mkdir -p /etc/nginx/ssl
RUN apt install openssl -y
COPY ./tools/inception.sh /var/www
COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default
# # COPY ./tools/index.php /var/www/html
RUN chmod +x /var/www/inception.sh
# ENTRYPOINT [ "/var/www/inception.sh" ]
# # COPY tools/index.html /var/www/html
# CMD [ "nginx", "-g", "daemon off;" ]


