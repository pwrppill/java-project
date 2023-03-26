FROM maven:latest
RUN apt update && apt install default-jdk -y
ADD . .
RUN mvn package
