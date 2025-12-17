FROM tomcat:11.0.4-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY apps.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
