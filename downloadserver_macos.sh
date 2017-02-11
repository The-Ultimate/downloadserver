#!/bin/bash
. ./configure.env
COMPOSE="/usr/local/bin/docker-compose"
DATABASELOC="../database"

# Copy environment files to targets
cp -rf configure.env ../sabnzbd

if [ -f /tmp/.cronspot ]; then
  # Starting containers
  $COMPOSE up -d
else
  # Configuring docker-compose.yml
  sed -i -- "s@multimediavar@$MULTIMEDIA@g" "./docker-compose.yml"
  sed -i -- "s@downloadvar@$DOWNLOAD@g" "./docker-compose.yml"
  sed -i -- "s@configsvar@$CONFIGS@g" "./docker-compose.yml"
  # Starting containers
  $COMPOSE up -d
  # Create cron job for retrieving new posts
  crontab -l > /tmp/spotcron
  echo "*/15 * * * *	docker exec -t downloadserver_spotweb_1 php /var/www/html/retrieve.php >> /var/log/spotweb" >> /tmp/spotcron
  crontab /tmp/spotcron
  rm -rf /tmp/spotcron
  touch /tmp/.cronspot
fi
