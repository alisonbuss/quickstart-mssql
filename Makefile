
images:
	@docker-compose --file ./docker-compose.yml images;

build:
	@docker-compose --file ./docker-compose.yml build;

up:
	@docker-compose --file ./docker-compose.yml up -d;

stop:
	@docker-compose --file ./docker-compose.yml stop;

start:
	@docker-compose --file ./docker-compose.yml start;

restart:
	@docker-compose --file ./docker-compose.yml restart;

destroy:
	@docker-compose --file ./docker-compose.yml down;

list:
	@docker-compose --file ./docker-compose.yml ps;

clear:
	@docker-compose --file ./docker-compose.yml rm -f;
