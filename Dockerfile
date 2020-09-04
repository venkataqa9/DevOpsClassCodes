From tomcat:latest

# Maintainer
MAINTAINER "sunil" 

# copy war file on to container 
COPY ./webapp.war /usr/local/tomcat/webapps
