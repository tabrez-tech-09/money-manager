# Stage 1 — Build
FROM maven:3.9.5-eclipse-temurin-21 AS build
WORKDIR /app

# Copy pom.xml and source files
COPY pom.xml .
COPY src ./src

# Build jar (skip tests for speed)
RUN mvn clean package -DskipTests

# Stage 2 — Run
FROM eclipse-temurin:21-jre
WORKDIR /app

# Copy jar from build stage
COPY --from=build /app/target/moneymanager-0.0.1-SNAPSHOT.jar moneymanager-v1.0.jar

EXPOSE 9090
ENTRYPOINT ["java", "-jar", "moneymanager-v1.0.jar"]
