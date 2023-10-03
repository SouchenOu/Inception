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
	rm -rf /Users/souchen/data/db/\
	rm -rf /Users/souchen/data/wp/\
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	

.PHONY: build up restart down clean	