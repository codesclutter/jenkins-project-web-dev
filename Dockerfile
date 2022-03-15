FROM centos:7
MAINTAINER kshitijrathore.ksr@gmail.com
RUN yum update -y
RUN yum install httpd -y
RUN yum install zip -y 
RUN yum install unzip -y 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/fruitkha.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip fruitkha.zip
RUN cp -rvf fruitkha-package1.0/fruitkha/* .
RUN rm -rf fruitkha-package1.0 fruitkha.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
