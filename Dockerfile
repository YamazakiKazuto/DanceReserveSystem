FROM tomcat:10.1-jdk21-temurin

WORKDIR /usr/local/tomcat

RUN rm -rf webapps/ROOT

COPY Root.war webapps/DanceReserveSystem.war

ENV CATALINA_OPTS="-Dorg.apache.catalina.core.StandardServer.PORT=-1"

EXPOSE 8080

CMD ["catalina.sh", "run"]
