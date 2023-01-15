FROM debian:bullseye
RUN sh config.sh
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
