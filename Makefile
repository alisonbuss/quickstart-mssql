
#DOCKER_COMPOSE_FILE ?= ./docker-compose.single.yml
DOCKER_COMPOSE_FILE ?= ./docker-compose.cluster.yml

network-ls:
	@docker network ls;

volume-ls:
	@docker volume ls;

volume-create-path:
	@mkdir -p "${PWD}/volumes/data/mssql01";
	@mkdir -p "${PWD}/volumes/data/mssql02";
	@mkdir -p "${PWD}/volumes/data/mssql03";

volume-remove-path:
	@rm -rf "${PWD}/volumes";

volume-remove-mssql01:
	@docker volume rm -f quickstart-mssql_vol_data_mssql01;

volume-remove-mssql02:
	@docker volume rm -f quickstart-mssql_vol_data_mssql02;

volume-remove-mssql03:
	@docker volume rm -f quickstart-mssql_vol_data_mssql03;

images:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) images;

build:
	@docker-compose --file $(DOCKER_COMPOSE_FILE) build;

up: volume-create-path
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

clear: volume-remove-path
	@docker-compose --file $(DOCKER_COMPOSE_FILE) rm -f;
