FROM centos:7
MAINTAINER kshitijrathore.ksr@gmail.com
RUN yum update -y
RUN yum install httpd -y
RUN yum install zip -y 
RUN yum install unzip -y 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/enfold.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip enfold.zip
RUN cp -rvf enfold/* .
RUN rm -rf enfold enfold.zip 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
