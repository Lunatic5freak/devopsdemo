FROM java:8-jdk-alpine
COPY target/devops-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
RUN bash -c 'touch /devops-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java", "-jar", "devops-0.0.1-SNAPSHOT.jar"]