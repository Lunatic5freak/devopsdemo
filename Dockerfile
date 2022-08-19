FROM java:8
ADD target/devops-0.0.1-SNAPSHOT.jar springapp.jar
ENTRYPOINT ["java", "-jar", "/springapp.jar"]