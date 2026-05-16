FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN javac src/*.java -d out

EXPOSE 10000

CMD ["java", "-cp", "out", "FinTelServer"]