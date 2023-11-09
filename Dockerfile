FROM openjdk:19
WORKDIR /app
COPY target/achat-2.0.jar /app/app.jar
EXPOSE 8089
ENTRYPOINT ["java", "-jar", "app.jar"]