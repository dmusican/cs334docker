FROM ubuntu:24.04
# next line needed for postgres install
ARG DEBIAN_FRONTEND=noninteractive

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN apt update
RUN apt-get install -y sudo
RUN apt-get install postgresql postgresql-contrib -f -y
RUN apt-get install -y net-tools
RUN apt-get install -y rsync
RUN apt-get install -y vim
RUN apt-get install -y zip
RUN apt-get install -y git
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y libpq-dev python3-dev
RUN apt-get install -y build-essential libssl-dev libffi-dev python3-dev
RUN apt-get install -y python3-psycopg
RUN apt-get update

# install mongodb
RUN apt-get install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates lsb-release
RUN curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
   --dearmor
RUN echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.2.list
RUN apt update && apt install -y  mongodb-org
# in order for mongodb to start, we must first create a mongodb data directory
RUN mkdir -p /data/db

RUN echo 'ALL ALL = (ALL) NOPASSWD: ALL' > /etc/sudoers
USER ubuntu
