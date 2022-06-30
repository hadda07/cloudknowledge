FROM centos:latest
MAINTAINER haddaprashant@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://freewebsitetemplates.com/preview/rehabilitation-yoga/ /var/www/html/
WORKDIR /var/www/html
CMD ["/usr/bin/sbin/httpd","FOREGROUND"]
EXPOSE 80
