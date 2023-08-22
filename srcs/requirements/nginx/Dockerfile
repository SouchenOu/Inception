FROM debian:buster
RUN apt update
RUN apt upgrade && apt  install nginx -y
RUN mkdir -p /etc/nginx/ssl
RUN apt install openssl -y
COPY ./tools/inception.sh /var/www
COPY ./conf/nginx.conf /etc/nginx/sites-available/default
RUN chmod +x /var/www/inception.sh
ENTRYPOINT [ "/var/www/inception.sh" ]
# CMD [ "nginx", "-g", "daemon off;" ]


