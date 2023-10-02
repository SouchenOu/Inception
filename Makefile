build:
	docker-compose ./srcs/docker-compose.yml build
	mkdir -p /Users/souchen/data/db
	mkdir -p /Users/souchen/data/wp

up:
	docker-compose ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

restart:
	make down
	make clean
	make build
	make up

logs:	
	cd ./srcs  docker-compose logs -f

clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	rm -rf /Users/souchen/data/db/\
	rm -rf /Users/souchen/data/wp/\
	
.PHONY: build up down restart clean	