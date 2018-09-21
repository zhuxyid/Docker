#Project Deploy
FROM base/tomcat:v1
LABEL maintainer="sanqimei <zhuxuyue@gmail.com>"
EXPOSE 8080/tcp
ARG Project_Name ""
WORKDIR /usr/local/apache-tomcat-7.0.90
VOLUME logs
COPY ${Project_Name}.war webapps/
CMD ["/bin/bash","-c","bin/catalina.sh run"]
