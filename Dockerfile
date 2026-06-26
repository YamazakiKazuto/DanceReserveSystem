FROM tomcat:10.1-jdk21-temurin

WORKDIR /usr/local/tomcat

RUN rm -rf webapps/ROOT

COPY Root.war webapps/DanceReserveSystem.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
