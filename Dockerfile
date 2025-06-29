# Use a lightweight Java base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Gatling JAR into the image
COPY target/gatling-java-example.jar app.jar


# Expose any relevant ports (if needed, usually Gatling is headless)
EXPOSE 8080

# Run the simulation
CMD ["java", "-jar", "gatling-java-example.jar"]
