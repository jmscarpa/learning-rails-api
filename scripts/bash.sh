
if [ "$(docker ps -q -f name=engagement-service-api)" ]; then
  docker compose -f docker-compose.yml exec app bash
else
  docker compose -f docker-compose.yml run --rm app bash
fi
