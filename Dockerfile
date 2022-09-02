FROM maven:3.5-jdk-8-alpine
RUN mvn install
FROM openjdk:8-jdk-alpine
ADD target/devops-0.0.1-SNAPSHOT.jar springapp.jar
ENTRYPOINT ["java", "-jar", "/springapp.jar"]
