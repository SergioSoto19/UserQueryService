# Utiliza la imagen base de OpenJDK 19
FROM openjdk:19-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Descarga el archivo JAR desde el repositorio de GitHub
ADD https://github.com/SergioSoto19/UserQueryService/raw/main/UserQueryService.jar app.jar

# Expone el puerto en el que se ejecutará tu aplicación (cambia 8082 si es necesario)
EXPOSE 8082

# Comando para ejecutar la aplicación Spring Boot al iniciar el contenedor
CMD ["java", "-jar", "app.jar"]