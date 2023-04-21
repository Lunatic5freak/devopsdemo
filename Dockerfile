FROM openjdk:11
EXPOSE 8080
ADD target/devops-0.0.1-SNAPSHOT.jar springapp.jar
ENTRYPOINT ["java", "-jar", "/springapp.jar"]
