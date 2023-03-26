FROM tomcat:latest
EXPOSE 8080
RUN apt update && apt install maven default-jdk -y
ADD . .
RUN mvn package
RUN cp /usr/local/tomcat/livewar-assembly/target/livewar-example.war /usr/local/tomcat/webapps
