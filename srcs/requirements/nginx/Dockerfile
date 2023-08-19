FROM debian:buster
RUN apt update
RUN apt upgrade && apt  install nginx -y
RUN mkdir -p /etc/nginx/ssl
RUN apt install openssl -y
COPY ./conf/nginx.conf  /etc/nginx/nginx.conf

