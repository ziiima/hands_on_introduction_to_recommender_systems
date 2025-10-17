.PHONY: compose.up

DOCKER_CONTAINER_NAME := chapter5_container

compose.up:
	docker compose -f compose.yaml up -d --build

container.exec:
	docker exec -it $(DOCKER_CONTAINER_NAME) bash

