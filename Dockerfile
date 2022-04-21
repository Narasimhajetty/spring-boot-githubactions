FROM openjdk:11
EXPOSE 80
ADD target/NDSL-Pan-verification.jar NDSL-Pan-verification.jar
ENTRYPOINT ["java","-jar","/NDSL-Pan-verification.jar"]
