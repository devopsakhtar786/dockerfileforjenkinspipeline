FROM centos:latest
MAINTAINER devopsakhtar786@gmail.com
RUN yum install -y updade
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/medion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip Medion Free Website Template - Free-CSS.com
RUN cp -rvf medion/* .
RUN rm -rf medion  medion.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
