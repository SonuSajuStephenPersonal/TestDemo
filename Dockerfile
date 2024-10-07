# Use an official OpenJDK 17 JDK slim image as the base
FROM openjdk:17-jdk-slim

# Add metadata to the image
LABEL authors="reeteshkumar"

# Set the working directory to /app
WORKDIR /app

# Create a volume mount point at /tmp
VOLUME /tmp

# Copy all JAR files from the target directory into the container as app.jar
COPY target//DemoDocker3-0.0.1-SNAPSHOT.jar /app/test-application.jar

# Specify the command to run on container startup
ENTRYPOINT ["java", "-jar", "/app/test-application.jar"]