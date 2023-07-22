FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /app
COPY target/*jar-with-dependencies.jar .
EXPOSE 8080
CMD ["java", "-jar", "target/*jar-with-dependencies.jar"]
