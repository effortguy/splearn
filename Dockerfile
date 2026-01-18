# 1. 베이스 이미지 설정 (자바 17 설치된 가벼운 리눅스)
FROM eclipse-temurin:17-jdk-alpine

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 빌드된 JAR 파일을 컨테이너 내부로 복사
# (파일명은 본인의 프로젝트에 맞게 수정)
COPY build/libs/splearn-0.0.1-SNAPSHOT.jar app.jar

# 4. 앱 실행 명령어
ENTRYPOINT ["java", "-jar", "app.jar"]