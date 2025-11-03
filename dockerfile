# Imagen base ligera con Java 21
FROM openjdk:21-jdk-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /root/ServiceClientes/docker-notificacion

# Copiar el jar al contenedor
COPY notification-1.jar notificacion.jar

# Variables de entorno por defecto (pueden sobreescribirse al ejecutar)
ENV MAIL_USERNAME="raquecastro36@gmail.com"
ENV MAIL_PASSWORD="alvv kfkh scmk xqep"

# MySQL Variables
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=cruz123
ENV MYSQL_HOST=62.171.169.111

# Puerto de tu aplicación (ajústalo si es diferente)
EXPOSE 8091

# Ejecutar el jar
ENTRYPOINT ["java", "-jar", "notificacion.jar"]
