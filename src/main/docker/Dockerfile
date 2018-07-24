FROM java:8
VOLUME /tmp
ADD MediwareOnline050218-0.0.1-SNAPSHOT.jar MediwareOnline050218-0.0.1.jar
EXPOSE 8080
RUN bash -c 'touch /MediwareOnline050218-0.0.1.jar'
ENTRYPOINT ["java","-Dspring.data.mongodb.uri=mongodb://192.168.99.100:32772/MediwaveDatabase", "-Djava.security.egd=file:/dev/./urandom","-jar","/MediwareOnline050218-0.0.1.jar"]

# ENTRYPOINT ["java","-Dspring.data.mongodb.uri=mongodb://mongodb/aum", "-Djava.security.egd=file:/dev/./urandom","-jar","/AUM-1.0.0.jar"]
# ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
# ENV JAVA_OPTS=""

# docker build -t prasadrevanaki/MediwareOnline050218-0.0.1 .
# docker run -P -d --name employee --link mongodb microservicedemo/employee