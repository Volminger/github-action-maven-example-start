FROM maven AS BUILD_STAGE
WORKDIR /app
COPY . /app
RUN mvn clean install

FROM openjdk:11
VOLUME /tmp
COPY --from BUILD_STAGE app/target/*jar-with-dependencies.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "target/*jar-with-dependencies.jar" "app.jar"]
