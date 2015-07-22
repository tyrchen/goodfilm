POSTGREST=$(shell which postgrest)

DB_NAME=goodfilm
DB_PORT=5432
DB_POOL=200
DB_HOST=localhost

API_PORT=3000


.PHONY: server

server:
		@$(POSTGREST) --db-host $(DB_HOST) --db-port $(DB_PORT) --db-name $(DB_NAME) --db-pool $(DB_POOL) --anonymous $USER --port $(API_PORT) --db-user $USER