# Use the official Amazon Corretto 17 base image with Java 17
FROM amazoncorretto:17-alpine-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/*.jar app.jar

# Expose the port on which the Spring Boot application will run (change this to your application's port)
EXPOSE 8080

# Set environment variables for Spring Boot application (if required)
# ENV SPRING_PROFILES_ACTIVE=production
# ENV SPRING_DATASOURCE_URL=jdbc:mysql://db-hostname:3306/dbname

# Start the Spring Boot application when the container starts
CMD ["java", "-jar", "app.jar"]
