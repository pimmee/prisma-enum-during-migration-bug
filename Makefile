.PHONY: start-db stop-db init-db simulate-migration-in-cicd test run

start-db:
	docker compose -f docker-compose.yml up -d

stop-db:
	docker compose -f docker-compose.yml down

init-db:
	cd backend && npm i && npx prisma migrate reset && node ./seed-user.js && cd ..

simulate-migration-in-cicd:
	echo "Simulating migration in cicd"
	cd cicd && npm i && npx prisma migrate deploy && node ./data_migration.js && cd ..

test-get-user:
	cd backend && npm run test && cd ..

run: start-db init-db
	$(MAKE) test-get-user
	$(MAKE) simulate-migration-in-cicd
	$(MAKE) test-get-user
