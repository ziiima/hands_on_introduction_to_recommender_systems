.PHONY: compose.up

DOCKER_CONTAINER_NAME := chapter5_container

compose.up:
	docker compose -f compose.yaml up -d --build

container.exec:
	docker exec -it $(DOCKER_CONTAINER_NAME) bash

# dbt

DBT_PROJECT_DIR := /usr/app/etl
DBT_PROFILES_DIR := /usr/app/etl
DBT_OPTIONS := --profiles-dir $(DBT_PROFILES_DIR) --project-dir $(DBT_PROJECT_DIR)

dbt.debug:
	uv run dbt run --debug $(DBT_OPTIONS)
