# Використовуємо базовий образ з OpenJDK
FROM openjdk:17-jdk-slim

# Встановлюємо робочий каталог у контейнері
WORKDIR /app

# Копіюємо збудований JAR файл у контейнер
COPY target/myapp.jar /app/myapp.jar

# Відкриваємо порт для програми
EXPOSE 8080

# Команда для запуску Java-додатку
CMD ["java", "-jar", "myapp.jar"]
