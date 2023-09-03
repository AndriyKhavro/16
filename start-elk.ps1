New-Item -ErrorAction Ignore ./slow_query.log
docker compose --file elk.docker-compose.yml up -d
