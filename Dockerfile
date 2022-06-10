FROM centos:latest
MAINTAINER NEWSTARTTTCORPORATION
RUN yum -y install httpd
ADD .  /var/www/html/
EXPOSE 80

