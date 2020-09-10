FROM centos:latest
MAINTAINER Satish Valasa
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY logic.exe /var/www/html/
RUN chmod -R 775 /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
