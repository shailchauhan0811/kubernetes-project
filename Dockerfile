FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install apache2 -y

COPY index.html /var/www/html/index.html
EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]



