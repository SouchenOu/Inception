build:
	docker-compose -f ./srcs/docker-compose.yml build
	mkdir -p /home/souchen/data/db
	mkdir -p /home/souchen/data/wp

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

logs:
	docker-compose -f ./srcs/docker-compose.yml logs
	
restart:
	make down
	make clean
	make build
	make up

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean:
	docker-compose -f ./srcs/docker-compose.yml down -v --rmi all
	rm -rf /home/souchen/data/db/\
	rm -rf /home/souchen/data/wp/\
	


.PHONY: build up restart down clean	