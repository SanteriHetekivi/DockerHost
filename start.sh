#!/bin/bash

# Compose file path.
COMPOSE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/docker-compose.yaml"&&
# Start compose.
docker-compose -f $COMPOSE_PATH up -d &&
# Add to cron.
echo "00 09 * * * docker-compose -f $COMPOSE_PATH up mal_list_downloader" > ./mycron &&
crontab ./mycron &&
rm ./mycron &&
echo "done"
