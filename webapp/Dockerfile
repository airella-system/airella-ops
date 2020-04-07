FROM node:12.16.1-alpine AS frontend
WORKDIR /usr/src/app
COPY build/airella-frontend/package.json ./
RUN npm install
COPY build/airella-frontend .
RUN npm run build

FROM maven:3.6.0-jdk-11-slim AS backend
WORKDIR /build
COPY build/airella-backend/pom.xml /build
RUN mvn dependency:go-offline
COPY build/airella-backend/src /build/src
COPY --from=frontend /usr/src/app/build/. /build/src/main/resources/static/
RUN mvn -Pprod clean package -DskipTests

FROM adoptopenjdk/openjdk11:alpine-jre
RUN mkdir /opt/app
COPY --from=backend /build/target/airella-backend.jar /opt/app
CMD ["java", "-jar", "/opt/app/airella-backend.jar"]
