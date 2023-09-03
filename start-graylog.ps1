New-Item -ErrorAction Ignore ./slow_query.log
docker compose --file graylog.docker-compose.yml up -d # replace elk with graylog
