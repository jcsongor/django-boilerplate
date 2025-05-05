build:
		docker-compose build

clean:
		docker-compose down -v --rmi all

db:
		docker-compose exec db psql -U postgres

logs:
		docker-compose logs -f

makemigrations:
		docker-compose exec app python manage.py makemigrations

migrate:
		docker-compose exec app python manage.py migrate

run:
		docker-compose run --rm -uroot app $$CMD

shell:
		docker-compose exec -uroot app sh

start:
		docker-compose up -d

stop:
		docker-compose down

test:
		docker-compose exec app python manage.py test --pattern '*_test.py'

start-django-project:
		touch .env && docker-compose run --rm app sh -c "./start-django-project.sh $$APP_NAME"

eject-django-project:
		./eject-django-project.sh $$APP_NAME

