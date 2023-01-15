FROM debian:bullseye
RUN mkdir /sites
RUN mkdir /config
RUN mkdir /html
RUN mkdir /logs
WORKDIR /logs
RUN touch nginx-error.log
RUN touch access.log
RUN touch error.log
RUN apt update
RUN apt upgrade -y
RUN apt install nginx apache2-utils curl php7.4-fpm -y
COPY ./conf/nginxconf /etc/nginx
COPY ./conf/sites /sites
COPY ./html /html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
