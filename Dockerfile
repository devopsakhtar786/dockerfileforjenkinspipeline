FROM ubuntu:latest
MAINTAINER devopsakhtar786@gmail.com
RUN apt-get update
RUN apt update && apt install -y tcl
RUN apt-get install apache2 -y
RUN apt-get zip -y

\
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD ["/usr/sbin/apache2", "-d",  "FOREGROUND"]
EXPOSE 80
