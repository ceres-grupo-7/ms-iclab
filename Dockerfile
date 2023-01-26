FROM maven:3.6.3-jdk-11-slim AS build

RUN mvn clean package
FROM openjdk:11-jre-slim

ARG JAR_NAME="DevOpsUsach2020-0.0.1"
EXPOSE 8080

COPY build/${JAR_NAME}.jar app.jar

CMD ["java","-jar", "./app.jar"] 