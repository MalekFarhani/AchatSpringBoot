# Use an official OpenJDK runtime as a parent image
FROM openjdk:19

# Set the working directory to /app
WORKDIR /app

# Copy the JAR file from the host to the container
#COPY target/achat-2.0.jar /app/app.jar
RUN curl -o app.jar -L "http://192.168.222.133:8081/repository/maven-releases/tn/esprit/rh/achat/2.0/achat-2.0.jar"
EXPOSE 8089
# Specify the command to run your application
ENTRYPOINT ["java", "-jar", "app.jar"]