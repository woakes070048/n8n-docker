# docker-compose-n8n-letsencrypt

## Key features

- Docker Compose
- PostgreSQL
- Traefik

## Setup

```
git clone https://github.com/woakes070048/n8n-docker
cd n8n-docker
cp .env.example .env
# edit .env
mkdir /root/n8n/
docker-compose up -d && docker-compose logs -f
```

This is based on [n8n Official docker-compose.yml](https://github.com/n8n-io/n8n/tree/master/docker/compose/withPostgres).
