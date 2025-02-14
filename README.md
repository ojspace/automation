# Automation Server

This repository contains a Docker-based automation server combining Langflow and n8n in a single setup.

## Services

### 1. Langflow
- AI workflow automation
- Port: 7860
- Web UI: http://localhost:7860

### 2. n8n
- Workflow automation platform
- Port: 5678
- Web UI: http://localhost:5678
- Default credentials: admin/admin

## Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/ojspace/automation.git
cd automation
```

2. Start all services:
```bash
docker-compose up -d
```

## Directory Structure
```
./
├── docker-compose.yml    # Main configuration file
├── n8n/
│   └── data/            # n8n data persistence
└── langflow/
    └── data/            # langflow data persistence
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

## Notes
- All services are managed through a single docker-compose configuration
- Data is persisted in local volumes under each service's directory
