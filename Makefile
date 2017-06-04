.DEFAULT_GOAL := help

PROJECT_NAME := BACON - NEO4j

.PHONY: help start clean

help:
	@echo "------------------------------------------------------------------------"
	@echo "${PROJECT_NAME}"
	@echo "------------------------------------------------------------------------"
	@grep -E '^[a-zA-Z0-9_/%\-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

start: ## deploy neo4j in swarm stack
	@docker stack deploy --compose-file docker-compose.yml neo4j

clean: ## stop neo4j and remove stack
	@docker stack rm neo4j
