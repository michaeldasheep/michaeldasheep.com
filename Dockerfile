FROM debian:bullseye
RUN mkdir /sites
RUN mkdir /config
RUN mkdir /html
RUN apt update
RUN apt install nginx apache2-utils curl php8-fpm -y
COPY ./conf/nginxconf /etc/nginx
COPY ./conf/sites /sites
COPY ./html /html
EXPOSE 80
CMD "nginx -g 'daemon off;'"
