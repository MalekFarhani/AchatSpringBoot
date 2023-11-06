#ADD the user privilege
FROM openjdk:19
WORKDIR /app
RUN curl -o app.jar -L "http://192.168.222.133:8081/repository/maven-releases/tn/esprit/rh/achat/3.2/achat-3.2.jar"
EXPOSE 8089
ENTRYPOINT ["java", "-jar", "app.jar"]
