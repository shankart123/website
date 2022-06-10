FROM centos:latest
MAINTAINER NEWSTARTTTCORPORATION2
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y install httpd
ADD .  /var/www/html/
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
EXPOSE 80

