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
RUN DEBIAN_FRONTEND=noninteractive apt install nginx apache2-utils curl php7.4-fpm -y >/dev/null
COPY ./conf/nginxconf /etc/nginx
COPY ./conf/sites /sites
COPY ./html /html
# HACK TO ADD LOGS TO STANDARD OUT (STDOUT)
RUN ln -sf /dev/stdout /logs/access.log
RUN ln -sf /dev/stderr /logs/error.log
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
