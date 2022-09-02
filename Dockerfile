FROM debian:bullseye
RUN apt update
RUN apt install nginx apache2-utils curl -y
ADD ./site /site
EXPOSE 80
CMD "nginx -g 'daemon off;'"
