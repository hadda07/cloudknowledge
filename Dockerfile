FROM centos:7
MAINTAINER haddaprashant@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/heustonn.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip heustonn.zip
RUN cp -rvf heustonn-html/* .
RUN rm -rf _heustonn.zip heustonn-html
CMD ["/usr/bin/sbin/httpd","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
