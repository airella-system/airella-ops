FROM maven:3.6.0-jdk-11-slim AS build
WORKDIR /build
COPY build/airella-backend/pom.xml /build
RUN mvn dependency:go-offline
COPY build/airella-backend/src /build/src
RUN mvn -Pprod clean package -DskipTests

FROM adoptopenjdk/openjdk11:alpine-jre
RUN mkdir /opt/app
COPY --from=build /build/target/airella-backend.jar /opt/app
CMD ["java", "-jar", "/opt/app/airella-backend.jar"]
