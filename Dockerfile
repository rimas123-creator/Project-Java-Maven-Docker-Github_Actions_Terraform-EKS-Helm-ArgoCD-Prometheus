FROM openjdk:26-jdk-slim-bookworm

WORKDIR /app

COPY target/*.jar app.jar

RUN groupadd --system javagroup && \
    useradd --system --gid javagroup --create-home javauser

USER javauser

EXPOSE 8080

CMD ["sh", "-c", "java -jar app.jar && tail -f /dev/null"]