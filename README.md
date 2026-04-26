# Minecraft Server with Docker

## Table of Contents
- [Description](#description)
- [Quickstart](#quickstart)
- [Usage](#usage)

---

## Description

This repository provides a minimal setup to run a Minecraft Java Edition server using Docker.

The project includes:

* A custom Dockerfile to build a Minecraft server image (without using a prebuilt image)
* A docker-compose configuration to run the service `mc-server`
* Environment-based configuration using a `.env` file
* Persistent storage for world data and server configuration

The purpose of this repository is to demonstrate how to containerize an application, configure it using environment variables, and ensure data persistence across restarts.

---

## Quickstart

### Prerequisites

* Docker installed
* Docker Compose available
* Minecraft or Java Client or Python 3 (optional, for server status testing)

### Steps

1. Download the official Minecraft server `.jar` file and place it in the project root as:

```
minecraft-server.jar
```

2. Copy the environment template:

```bash
cp .env.example .env
```

3. Build and start the server:

```bash
docker compose up -d --build
```

4. Restart the server:

```bash
docker compose restart
```

5. Connect to Minecraft via the following adress:  
```
localhost:8888
```

---

## Usage

### Start the server

```bash
docker compose up -d
```

### Stop the server

```bash
docker compose down
```

### Restart the server

```bash
docker compose restart
```

### View logs

```bash
docker compose logs -f
```

### Configuration

You can modify the server behavior using environment variables in the `.env` file:

```env
MINECRAFT_PORT=8888
MEMORY_MIN=1G
MEMORY_MAX=2G
SERVER_JAR=minecraft-server.jar
```

* **MINECRAFT_PORT** – defines the port used to connect to the server
* **MEMORY_MIN / MEMORY_MAX** – control Java memory allocation
* **SERVER_JAR** – defines the name of the server file

After changing configuration values, restart the container:

```bash
docker compose restart
```
