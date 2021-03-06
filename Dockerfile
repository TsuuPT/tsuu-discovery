FROM gradle:6.7-jdk15 AS BUILD
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM adoptopenjdk/openjdk15:alpine-jre
WORKDIR /app
COPY --from=BUILD /home/gradle/src/build/libs/*.jar ./tsuu-discovery.jar
EXPOSE 12001
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "tsuu-discovery.jar"]