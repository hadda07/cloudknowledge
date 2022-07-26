FROM centos:7
MAINTAINER haddaprashant@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/images/free-css-templates/page281/traveler.jpg /var/www/html/
WORKDIR /var/www/html
#RUN unzip heustonn.zip
#RUN cp -rvf heustonn-html/* .
#RUN rm -rf _heustonn.zip heustonn-html
CMD ["/usr/bin/sbin/httpd", "-D" "FOREGROUND"]
EXPOSE 80
