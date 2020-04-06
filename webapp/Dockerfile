FROM adoptopenjdk/openjdk11:alpine-jre

RUN mkdir /opt/app

COPY build/airella-backend/target/airella-backend.jar /opt/app

CMD ["java", "-jar", "/opt/app/airella-backend.jar"]
