build:
	docker-compose -f ./srcs/docker-compose.yml build
	mkdir -p /home/souchen/data/db
	mkdir -p /home/souchen/data/wp

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
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	rm -rf /home/souchen/data/db/\
	rm -rf /home/souchen/data/wp/\
	

.PHONY: build up restart down clean	