FROM maven:3.6-jdk-11 as dockerfiletesting
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package

FROM adoptopenjdk/openjdk11:alpine-slim