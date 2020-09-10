FROM ubi7/ubi:7.7
MAINTAINER Satish Valasa
RUN yum -y install httpd
ADD http://plkanocn001:8080/logic.exe /var/www/html/
ADD http://plkanocn001:8080/index.html /var/www/html/
RUN chmod -R 775 /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
