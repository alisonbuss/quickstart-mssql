
DOCKER_COMPOSE_FILE ?= ./docker-compose.yml

images:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) images;

build:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) build;

up:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) up -d;

stop:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) stop;

start:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) start;

restart:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) restart;

destroy:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) down;

list:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) ps;

clear:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) rm -f;
