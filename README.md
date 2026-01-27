# CS334DatabaseSystems
repo for cs344 database systems homework - it has the docker files needed for vscode to spin up a docker container containing postresql and mongodb

# to start postgres issue the following command
sudo bash setupAndStartPostgresql.bash

# to test postgres
psql
select * from mtietesting;
\q


# to start mongodb
sudo mongod >> /tmp/mongo.log &

#to test mongo
mongosh
show dbs
.exit

