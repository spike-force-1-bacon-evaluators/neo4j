# NEO4J

This repository contains provisioning scripts for deploying a Neo4j instance running in a container using Docker Swarm Mode.

`make start` creates a data directory in the current directory and binds it to the container. It also expose the ports 7474 (HTTP) and 7687 (Bolt).

```
------------------------------------------------------------------------
BACON - NEO4j
------------------------------------------------------------------------
start                          deploy neo4j in swarm stack
clean                          stop neo4j and remove stack
```
