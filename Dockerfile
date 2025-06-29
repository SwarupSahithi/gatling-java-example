# Use lightweight OpenJDK
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /opt/gatling

# Copy the full-fat JAR file
COPY target/gatling-java-example.jar app.jar

# Run the Gatling JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
