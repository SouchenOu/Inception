build:
	docker-compose -f ./srcs/docker-compose.yml build
	mkdir -p /Users/souchen/data/db
	mkdir -p /Users/souchen/data/wp

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
	rm -rf /Users/souchen/data/db/
	rm -rf /Users/souchen/data/wp/
	


.PHONY: build up restart down clean	