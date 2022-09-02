FROM openjdk:8-jdk-alpine
RUN mvn install
ADD target/devops-0.0.1-SNAPSHOT.jar springapp.jar
ENTRYPOINT ["java", "-jar", "/springapp.jar"]
