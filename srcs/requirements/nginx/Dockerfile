FROM debian:buster
RUN apt update
RUN apt  install -y nginx
RUN apt install openssl -y
# RUN mkdir -p /etc/nginx/ssl
COPY ./tools/inception.sh /var/www
COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default
RUN chmod +x /var/www/inception.sh
ENTRYPOINT [ "/var/www/inception.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]


