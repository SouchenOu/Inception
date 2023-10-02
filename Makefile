build:
	docker-compose -f ./srcs/docker-compose.yml build
	mkdir -p /Users/souchen/data/db
	mkdir -p /Users/souchen/data/wp

up:
	docker-compose -f ./srcs/docker-compose.yml up

down:
	docker-compose -f ./srcs/docker-compose.yml down

restart:
	make down
	make clean
	make build
	make up


clean:
	docker stop $$(docker ps -a);\
	docker rm $$(docker ps -a);\
	docker rmi -f $$(docker images -a);\
	docker volume rm $$(docker volume ls);\
	docker network rm $$(docker network ls);\
	rm -rf /Users/souchen/data/db/\
	rm -rf /Users/souchen/data/wp/\

.PHONY: build up down restart clean	