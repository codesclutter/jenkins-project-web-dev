FROM centos:latest
MAINTAINER kshitijrathore.ksr@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/fruitkha.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip fruitkha.zip
RUN cp -rvf fruitkha-package1.0/fruitkha/* .
RUN rm -rf fruitkha-package1.0 fruitkha.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
