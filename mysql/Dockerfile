FROM centos
MAINTAINER zhuxyid<zhuxyid@gmail.com>
RUN yum -y install mariadb-server
ENV ADMIN_USER root
ENV ADMIN_PASS admin123
ENV LC_ALL en_US.UTF-8
ADD init.sh /root/init.sh
RUN chmod 775 /root/init.sh
RUN /root/init.sh
EXPOSE 3306
CMD ["/bin/bash","-c","mysqld_safe"]

