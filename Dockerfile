FROM python:3.10

RUN apt-get -y update
RUN apt-get -y install cron

# Setup directory and copying files
WORKDIR /
RUN mkdir app
WORKDIR /app
COPY ./start.sh ./start.sh
COPY ./tautulli2trakt.sh ./tautulli2trakt.sh
RUN chmod +x start.sh

# Install Python packages.
RUN pip install --upgrade pip

RUN touch /var/log/cron.log

CMD ./start.sh
