FROM openjdk:11
WORKDIR /
ADD target/myapp-1.0-SNAPSHOT.jar app.jar
RUN useradd -m edu
USER edu
EXPOSE 8090
CMD java -jar -Dspring.profiles.active=prod app.jar
