FROM tomcat/latest
MAINTAINER AMAR
ENV TOMCAT_PATH /opt/tomcat/webapps
EXPOSE 8080
COPY *.war $TOMCAT_PATH
WORKDIR /opt/tomcat/bin
USER root
RUN mkdir /opt/data-files/
RUN chown -R tomcat:tomcat /opt/data-files/

RUN chmod -R 755 /opt/tomcat/logs

RUN mkdir /opt/data-files
RUN chmod -R 755 /opt/test/log

VOLUME /opt/data-files

USER tomcat
CMD ["catalina.sh","run"]
