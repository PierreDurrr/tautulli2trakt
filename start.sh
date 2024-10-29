#!/bin/bash
#mv -n /app/tautulli2trakt.sh /tautulli2trakt/tautulli2trakt.sh
mv /app/tautulli2trakt.sh /tautulli2trakt/tautulli2trakt.sh

#rm /app/tautulli2trakt.sh

printenv > /etc/default/locale; # Needed so cron can access env varibles. Not currently being used. 
sleep 365d
