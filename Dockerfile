FROM openjdk:8
ADD target/bioMedical-0.0.1-SNAPSHOT.jar spring-boot-maven-plugin.jar
EXPOSE 8081
ENTRYPOINT ["-java","-jar","spring-boot-maven-plugin.jar"]
