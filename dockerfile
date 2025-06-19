# Use official OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy your Gatling JAR file into the image
COPY gatling-java-example.jar /app/gatling-java-example.jar

# Default simulation class to run (customize this)
ENV SIMULATION=computerdatabase.BasicSimulation

# Command to run the Gatling simulation
CMD ["java", "-cp", "gatling-java-example.jar", "io.gatling.app.Gatling", "-s", "computerdatabase.BasicSimulation"]


