#FROM openjdk:8-jdk-alpine
FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
VOLUME /tmp
ADD build/libs/hello-0.0.1-SNAPSHOT.jar /app.jar
ENV JAVA_OPTS=""
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
