build:
	docker-compose -f ./srcs/docker-compose.yml build
	mkdir -p /Users/souchen/data/db
	mkdir -p /Users/souchen/data/wp

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

restart:
	make down
	make clean
	make build
	make up

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean:
	docker stop $$(docker ps -a);\
	docker rmi -f $$(docker images -a);\
	docker rm $$(docker ps -a);\
	docker network rm $$(docker network ls);\
	docker volume rm $$(docker volume ls);\
	rm -rf /Users/souchen/data/db/\
	rm -rf /Users/souchen/data/wp/\

.PHONY: build up restart down clean	