# ----------- Stage 1: Build with Maven -----------
FROM maven:3.9.6-eclipse-temurin-8 AS builder

WORKDIR /app

# Copy the project files
COPY . .

# Build the project and download dependencies
RUN mvn clean package -DskipTests

# ----------- Stage 2: Run Gatling Simulation -----------
FROM openjdk:8-jdk-slim

WORKDIR /app

# Copy the built project (including reports folder)
COPY --from=builder /app /app

# Run Gatling simulation
CMD ["gatling:test"]
