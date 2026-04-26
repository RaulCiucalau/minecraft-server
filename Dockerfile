FROM eclipse-temurin:21-jre-alpine

WORKDIR /data

COPY minecraft-server.jar /opt/minecraft/server.jar
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 25565

ENTRYPOINT ["/entrypoint.sh"]