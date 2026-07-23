FROM tomcat:10.1-jdk21-temurin

ENV TZ=Asia/Tokyo

WORKDIR /usr/local/tomcat

RUN rm -rf webapps/ROOT

COPY Root.war webapps/ROOT.war
COPY postgresql-42.7.11.jar /usr/local/tomcat/lib/

EXPOSE 8080

CMD ["sh", "-c", "export CATALINA_OPTS=\"-Djdbc.url=${JDBC_URL} -Djdbc.user=${DB_USER} -Djdbc.password=${DB_PASSWORD}\"; catalina.sh run"]

