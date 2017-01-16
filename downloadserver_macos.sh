#!/bin/bash
. ./configure.env
COMPOSE="/usr/local/bin/docker-compose"
DATABASELOC="../database"

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "Use: sudo ./downloadserver_macos.sh" 1>&2
   exit 1
fi

# Copy environment files to targets
cp -rf configure.env ../sabnzbd

if [ -f /tmp/.cronspot ]; then
  # Starting containers
  $COMPOSE up -d
else
  # Starting containers
  $COMPOSE up -d
  # Create cron job for retrieving new posts
  SPOTWEBID=`docker ps |grep spotweb |awk '{print $1}'`
  crontab -l > /tmp/spotcron
  echo "*/15 * * * *	docker exec -t $SPOTWEBID php /var/www/html/retrieve.php >> /var/log/spotweb" >> /tmp/spotcron
  crontab /tmp/spotcron
  rm -rf /tmp/spotcron
  touch /tmp/.cronspot
fi
