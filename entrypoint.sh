#!/bin/sh
set -e

MEMORY_MIN="${MEMORY_MIN:-1G}"
MEMORY_MAX="${MEMORY_MAX:-2G}"

# Accept the EULA
echo "eula=true" > /data/eula.txt


exec java "-Xms${MEMORY_MIN}" "-Xmx${MEMORY_MAX}" -jar /opt/minecraft/server.jar nogui