# container
build:
	docker-compose build --no-cache
up:
	docker-compose up -d
ps:
	docker-compose ps
down:
	docker-compose down
stop:
	docker-compose stop
restart:
	docker-compose restart
destroy:
	docker-compose down --rmi all --volumes --remove-orphans

# app
app:
	docker-compose exec app bash