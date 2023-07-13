.PHONY: app

# initialize
init:
	@make build
	@make up
	docker-compose exec app bash -c "chown -R www-data:www-data storage"
	docker-compose exec app bash -c "composer install"
	docker-compose exec app bash -c "cp .env.example .env"
	docker-compose exec app bash -c "php artisan key:generate"

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