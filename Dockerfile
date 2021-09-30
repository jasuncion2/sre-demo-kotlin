FROM openjdk:11
ARG JAR_FILE=build/libs/sre-demo-kotlin-1.0-SNAPSHOT-all.jar
COPY ${JAR_FILE} app.jar
ARG YAML=config/local.yaml
COPY ${YAML} local.yml
ENTRYPOINT ["java","-jar","/app.jar","server","local.yaml"]