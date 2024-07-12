# Use an official OpenJDK runtime as the base image
FROM openjdk:17

# Add a volume to the /tmp directory
VOLUME /tmp

# The application's jar file
ARG JAR_FILE=target/*.jar

# Add the application's jar to the container
COPY ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]