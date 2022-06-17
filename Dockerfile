FROM ubuntu:latest
MAINTAINER devopsakhtar786@gmail.com
RUN apt-get install updade -y
RUN apt-get install  apache2 -y \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/medion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip Medion 
RUN cp -rvf medion/* .
RUN rm -rf medion  medion.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
