From tomcat:latest

# Maintainer
MAINTAINER "sunil" 

# copy war file on to container 
COPY /var/lib/jenkins/workspace/Java-Project/target/addressbook.war /usr/local/tomcat/webapps
