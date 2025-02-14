# Automation Server

This repository contains a Docker-based automation server combining n8n (workflow automation) and Langflow (LangChain flow editor).

## Services

### 1. n8n
- Workflow automation platform
- Port: 5678
- Web UI: http://localhost:5678
- Default credentials: admin/admin

### 2. Langflow
- AI workflow automation
- Port: 7860
- Web UI: http://localhost:7860

## Setup Instructions

### Local Development

1. Clone the repository:
```bash
git clone https://github.com/ojspace/automation.git
cd automation
```

2. Create a `.env` file:
```bash
cat > .env << EOL
# n8n Configuration
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=admin
N8N_PROTOCOL=http
N8N_HOST=0.0.0.0
N8N_WEBHOOK_URL=http://localhost:5678/
GENERIC_TIMEZONE=UTC
EOL
```

3. Create Docker volumes:
```bash
docker volume create n8n_data
docker volume create langflow_data
```

4. Start the services:
```bash
docker-compose up -d
```

### Server Deployment

1. Connect to your server and clone the repository:
```bash
git clone https://github.com/ojspace/automation.git
cd automation
```

2. Create volumes and set up environment:
```bash
# Create volumes
docker volume create n8n_data
docker volume create langflow_data

# Create .env file (adjust values as needed)
cat > .env << EOL
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=admin
N8N_PROTOCOL=http
N8N_HOST=0.0.0.0
N8N_WEBHOOK_URL=http://localhost:5678/
GENERIC_TIMEZONE=UTC
EOL
```

3. Start services:
```bash
docker-compose up -d
```

## Git Workflow

### Updating Server from Local

1. Commit local changes:
```bash
git add .
git commit -m "your commit message"
git push origin main
```

2. On the server, pull changes:
```bash
git pull origin main
docker-compose up -d
```

## Maintenance

### View logs
```bash
# All services
docker-compose logs -f

# Specific service
docker-compose logs -f n8n
docker-compose logs -f langflow
```

### Stop services
```bash
docker-compose down
```

### Update services
```bash
docker-compose pull
docker-compose up -d
```

## Requirements
- Docker
- Docker Compose v2
- Git

## Data Persistence
All data is stored in Docker volumes:
- `n8n_data`: Stores n8n workflows and data
- `langflow_data`: Stores Langflow configurations

## Notes
- The `.env` file contains sensitive information and should not be committed to Git
- Both services use Docker volumes for data persistence
- Always pull changes on the server after pushing from local to keep environments in sync
