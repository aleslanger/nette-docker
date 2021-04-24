#include .env
#CURRENT_USER=$(shell id -u):$(shell id -g)

.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## Build docker containers
	@echo does nothing
	docker-compose -f docker-compose.yml build

up: ## Run docker containers
	docker-compose -f docker-compose.yml up -d

down: ## Stop docker containers
	docker-compose -f docker-compose.yml down

install:  ## composer install
	docker-compose -f docker-compose.yml exec php  bash -c 'composer install'

update: ## composer update
	docker-compose -f docker-compose.yml exec php  bash -c 'composer update'


start: build up install ## Build up install
	@echo "Application has been launched"
