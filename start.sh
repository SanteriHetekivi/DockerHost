# Start compose.
docker-compose up -d &&
# Add to cron.
echo "00 09 * * * docker compose up mal_list_downloader" > ./mycron &&
crontab ./mycron &&
rm ./mycron &&
echo "done"
