FROM ubuntu:latest
RUN apt update && apt install apache2 -y && service start apache2
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl","-D" "FOREGROUND"]

