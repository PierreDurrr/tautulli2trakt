FROM python:3.10-alpine

# Install dcron (cron alternative) and bash
RUN apk --no-cache add \
    bash \
    curl \
    dcron

# Setup directory and copy files
WORKDIR /app
COPY ./start.sh ./start.sh
COPY ./tautulli2trakt.sh ./tautulli2trakt.sh
RUN chmod +x start.sh tautulli2trakt.sh

# Install Python packages
#RUN pip install --no-cache --upgrade pip

# Set entrypoint to the start script
ENTRYPOINT ["./start.sh"]
