mv /var/lib/postgresql /var/lib/postgresql-original
ln -s  /workspaces/cs334docker/postgresql /var/lib/postgresql
chown -R postgres:postgres /var/lib/postgresql/16
chmod 700 /var/lib/postgresql/16/main
su postgres -c '/usr/lib/postgresql/16/bin/pg_ctl start -D /etc/postgresql/16/main'
