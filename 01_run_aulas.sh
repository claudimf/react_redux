#!/bin/sh

sudo rm -rf aulas/public

echo "Containeres existentes - excluindo..."
docker compose -f aulas/docker-compose.yml down
echo "Containeres existentes - feito!"

echo

echo "Volumes - excluindo..."
docker volume rm $(docker volume ls -f dangling=true)
echo "Volumes - feito!"

echo

echo "Imagens - construindo..."
docker rmi aulas-app
docker compose -f aulas/docker-compose.yml build app
docker compose -f aulas/docker-compose.yml run --rm app npm run build
echo "Imagens - feito!"

docker compose -f aulas/docker-compose.yml up -d app

# Como executar:
# bash 01_run_aulas.sh