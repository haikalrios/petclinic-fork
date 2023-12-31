FROM eclipse-temurin:17-jdk-alpine
ENV JAVA_OPTS=""
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
RUN echo "run with JAVA_OPTS=$JAVA_OPTS"
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app.jar"]
