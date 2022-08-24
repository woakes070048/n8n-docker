# docker-compose-n8n-letsencrypt

## Key features

- Docker Compose
- PostgreSQL
- Traefik

## Setup

```
git clone https://github.com/woakes070048/n8n-docker n8n
cd n8n
cp .env.example .env
# edit .env
docker-compose up -d
```

This is based on [n8n Official docker-compose.yml](https://github.com/n8n-io/n8n/tree/master/docker/compose/withPostgres).
