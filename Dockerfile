FROM openjdk:19
WORKDIR /app
RUN groupadd -r malek && useradd -r -g malek malek
RUN chown -R malek:malek /app
USER malek
COPY target/achat-2.0.jar /app/app.jar
EXPOSE 8089
ENTRYPOINT ["java", "-jar", "app.jar"]
