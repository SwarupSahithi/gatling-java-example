# Use a lightweight OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /opt/gatling

# Copy the correct JAR
COPY target/gatling-java-example.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
