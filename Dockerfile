From tomcat:latest

# Maintainer
MAINTAINER "sunil" 

# copy war file on to container 
COPY **/*.war /usr/local/tomcat/webapps
