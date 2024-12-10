#!/bin/bash

# Ensure the destination directory exists
mkdir -p /tautulli2trakt

# Move the tautulli2trakt.sh file to the appropriate directory
mv /app/tautulli2trakt.sh /tautulli2trakt/tautulli2trakt.sh || {
  echo "Error moving tautulli2trakt.sh"; exit 1;
}

# Optional: Remove the original file if needed
# rm -f /app/tautulli2trakt.sh

# Export environment variables to /etc/default/locale for cron access (if cron is used)
#printenv > /etc/default/locale

# Keep the container running indefinitely
tail -f /dev/null
