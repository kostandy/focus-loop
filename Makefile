# Define project name to avoid conflicts
PROJECT_NAME=focus-loop

# Default target
.PHONY: up up-prod down stop rebuild logs

# Start backend services in detached mode, handling dev and prod environments separately
up:
	docker compose --profile backend up -d --build

# For production environment
up-prod:
	docker compose --profile backend up -d --build --build-arg NODE_ENV=production

# Stop all services and remove containers
down:
	docker compose down

# Stop all services without removing containers
stop:
	docker compose stop

# Rebuild services
rebuild:
	docker compose build --no-cache

# Logs for all services in a real-time mode
logs:
	docker compose logs -f