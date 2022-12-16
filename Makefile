setup:
	docker-compose build
	docker-compose run --rm base-go-application ash -c "sql-migrate up && go run db/create_database.go"

db.create:
	docker-compose run --rm base-go-application go run db/create_database.go

db.migrate:
	docker-compose run --rm base-go-application sql-migrate up

db.seed:
	docker-compose run --rm base-go-application go run db/seed/seeder.go

start:
	docker-compose up

end:
	docker-compose down

entry-server-container:
	docker-compose exec base-go-application ash

entry-db-container:
	docker-compose exec db bash

test-cover:
	docker-compose exec base-go-application go test -cover ./... -coverprofile=cover.out
	docker-compose exec base-go-application go tool cover -html=cover.out -o cover.html