FROM ubuntu:latest
LABEL authors="beomsu"

FROM amazoncorretto:17
ENV PROFILES=blue
ENV ENV=blue

# 작업 디렉토리 설정
WORKDIR /be-practice

# 애플리케이션 JAR 파일 복사
COPY ./build/libs/backend-practice-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}", "-Dserver.env=${ENV}", "-jar", "app.jar"]