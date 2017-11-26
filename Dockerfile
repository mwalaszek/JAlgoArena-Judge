FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /build/libs/jalgoarena-judge-1.0.31.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=dev","-jar","/app.jar"]