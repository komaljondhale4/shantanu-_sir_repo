FROM tomcat:latest
RUN git clone https://github.com/komaljondhale4/shantanu-_sir_repo.git
COPY target/*.war /usr/local/tomcat/webapps
