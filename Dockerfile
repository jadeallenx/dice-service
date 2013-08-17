# Build a deployable dice-service container
docker-version 0.4.2
from	ubuntu:12.04
maintainer	Mark Allen <mrallen1@yahoo.com>
# Install dependencies
run 	echo 'deb http://archive.ubuntu.com/ubuntu precise main universe' > /etc/apt/sources.list
run	apt-get update
run	apt-get install -y -q curl
run	apt-get install -y -q git
run	apt-get install -y -q python
run	apt-get install -y -q python-pip
run git clone https://github.com/mrallen1/dice-service && cd dice-service && pip install -r requirements.txt
cmd cd /dice-service && gunicorn --bind 0.0.0.0:8000 --workers=2 roll-service:app
expose 8000
