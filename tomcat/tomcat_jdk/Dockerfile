#Deploy JDK1.7.80
FROM centos:latest
LABEL maintainer="sanqimei:<zhuxuyue@gmail.com>"
ARG JDK_VERSION=jdk1.7.0_80
ARG TOMCAT_VERSION=apache-tomcat-7.0.90
ADD jdk-7u80-linux-x64.tar.gz /usr/local/
ADD apache-tomcat-7.0.90.tar.gz /usr/local/
ENV JAVA_HOME /usr/local/${JDK_VERSION}
ENV JRE_HOME $JAVA_HOME/jre
ENV PATH $PATH:$JAVA_HOME/bin:$JRE_HOME/bin
WORKDIR /usr/local/${TOMCAT_VERSION}
RUN ["/bin/bash","-c","rm -rf webapps/{docs,examples,host-manager,manager}"]
