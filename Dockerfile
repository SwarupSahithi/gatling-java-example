# Use a base image with OpenJDK
FROM openjdk:17-jdk-slim

# Set environment variables
ENV APP_HOME=/opt/gatling
WORKDIR $APP_HOME

# Copy the JAR file to the image
COPY target/gatling-java-example.jar app.jar

# Default command to run Gatling simulations
ENTRYPOINT ["java", "-jar", "app.jar"]
