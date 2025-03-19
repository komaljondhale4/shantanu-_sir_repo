FROM tomcat:latest
RUN chmod -R 777 /tomcat
COPY target/*.war /usr/local/tomcat/webapps
