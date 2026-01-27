mv /var/lib/postgresql /var/lib/postgresql-original
ln -s  /workspaces/CS334DatabaseSystems/postgresql /var/lib/postgresql
chown -R postgres:postgres /var/lib/postgresql/14
chmod 700 /var/lib/postgresql/14/main
su postgres -c '/usr/lib/postgresql/14/bin/pg_ctl start -D /etc/postgresql/14/main'
