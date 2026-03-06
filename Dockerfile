FROM tomcat:9

COPY target/healthy-hens.war /usr/local/tomcat/webapps/

EXPOSE 8080
