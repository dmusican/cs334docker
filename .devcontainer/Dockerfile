FROM ubuntu:latest
# next line needed for postgres install
ARG DEBIAN_FRONTEND=noninteractive

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN apt update
RUN apt-get install -y sudo
RUN apt install postgresql postgresql-contrib -f -y
RUN apt-get install -y net-tools
RUN apt-get install -y rsync
RUN apt-get install -y vim
RUN apt-get install -y zip
RUN apt-get install -y git
RUN apt-get install -y default-jdk
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y libpq-dev python3-dev
RUN apt-get install -y build-essential libssl-dev libffi-dev python3-dev
RUN pip3 install psycopg2
RUN apt-get update
# next 4 lines install mongodb 6.0
RUN apt-get install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates lsb-release
RUN curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-6.gpg
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
RUN apt update && apt install -y  mongodb-org
# in order for mongodb to start, we must first create a mongodb data directory
RUN mkdir -p /data/db
# to start postgres issue the following command
# su postgres /usr/lib/postgresql/14/bin/pg_ctl start -D /etc/postgresql/14/main
# RUN useradd -ms /bin/bash csuser
RUN useradd -m csuser && echo "csuser:csuser" | chpasswd && adduser csuser sudo
# RUN mv /var/lib/postgresql /var/lib/postgresql-original
# RUN ln -s  /workspaces/CS334DatabaseSystems/postgresql /var/lib/postgresql
# RUN chown -R postgres:postgres /var/lib/postgresql/14
# RUN chmod 700 /var/lib/postgresql/14/main
USER csuser
