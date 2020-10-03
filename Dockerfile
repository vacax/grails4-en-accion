# El comando FROM indica la imagen base.
# openjdk:11.0.7-jre-slim-buster es una imagen de Java 11 lo mas ligera posible
FROM openjdk:11.0.7-jre-slim-buster
LABEL maintainer="Carlos Camacho <carlosalfredocamacho@gmail.com>"
VOLUME /tmp
EXPOSE 8080
# Copiando el archivo jar generado luego de la ejecución del comando
# gradle task bootjar, se crean el jar y se copia a la imagen.
COPY /build/libs/*.war mi_app.war
#Comando que se ejecuta una vez es iniciada la aplicación.
ENTRYPOINT ["java", "-jar", "mi_app.war"]