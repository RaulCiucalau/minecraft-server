FROM eclipse-temurin:25-jre

WORKDIR /data

COPY minecraft-server.jar /opt/minecraft/server.jar

EXPOSE 25565

CMD ["java", "-Xms1G", "-Xmx2G", "-jar", "/opt/minecraft/server.jar", "nogui"]