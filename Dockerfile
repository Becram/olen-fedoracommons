FROM ubuntu:12.04
MAINTAINER Bikram Dhoju <bikram.dhoju@olenepal.org>


ENV DOCKERIZE_VERSION="v0.2.0"

RUN apt-get update -y && \
    apt-get install -y wget apt-utils && \
    apt-get install -y apache2 &&\
    apt-get install -y openjdk-6-jre openjdk-6-jdk && \
    apt-get install -y  mysql-client libmysql-java libimage-exiftool-perl php5 php5-mysql php-pear php-xml-htmlsax3 php-xml-parser php5-curl php5-gd php5-mcrypt && \
    apt-get install -y vim links expect git

RUN mkdir -p /var/www/fez
RUN mkdir -p /code
ADD ./fedora_code /code
COPY ./script.d/00-install-fedora  /usr/bin/

RUN /usr/bin/00-install-fedora

VOLUME ["/var/www/fez"]

WORKDIR ["/var/www/fez"]

EXPOSE 80
