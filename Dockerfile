#FROM openjdk:11
#WORKDIR /app
#COPY . .
#RUN javac src/Hello.java
#CMD java -classpath src Hello

FROM openjdk:11
ARG JAR_FILE=out/artifacts/docker_java_jar/docker-java.jar

# cd /usr/local/runme
WORKDIR /usr/local/runme

# cp target/app.jar /usr/local/runme/app.jar
COPY ${JAR_FILE} app.jar


# java -jar /usr/local/runme/app.jar
ENTRYPOINT ["java","-jar","app.jar"]