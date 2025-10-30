FROM openjdk:21-jdk-slim

COPY notification-0.0.1-SNAPSHOT.jar /app/notification.jar

EXPOSE 8091

ENTRYPOINT ["java", "-jar", "/app/notification.jar"]
