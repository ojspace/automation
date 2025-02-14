# Automation Projects

This repository contains Docker-based automation projects using Langflow and n8n.

## Services

### 1. Langflow
- AI workflow automation
- Port: 7860
- Directory: `/langflow`

### 2. n8n
- Workflow automation platform
- Port: 5678
- Directory: `/n8n`

## Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/ojspace/automation.git
```

2. Start Langflow:
```bash
cd langflow
docker compose up -d
```

3. Start n8n:
```bash
cd n8n
docker compose up -d
```

## Accessing Services
- Langflow: http://localhost:7860
- n8n: http://localhost:5678

## Requirements
- Docker
- Docker Compose

## Notes
- Each service has its own docker-compose configuration
- Data is persisted in local volumes
