# Install postgres 8.4
sudo apt-get install postgresql postgresql-client postgresql-contrib
sudo aptitude install postgresql-8.4 postgresql-client-8.4 
sudo apt-get install pgadmin3

sudo /etc/init.d/postgresql-8.4 start
sudo /etc/init.d/postgresql restart
sudo /etc/init.d/postgresql reload

# Set 'postgres' password and create first database and user
sudo passwd postgres
su postgres

# Finally for connect to the database:
psql database -U user -W
psql searchengine -U djuser -W

# Remote access configuration
sudo vi /etc/postgresql/8.4/main/postgresql.conf
# listen_addresses = 'localhost' --> listen_addresses = '*' o listen_addresses = '0.0.0.0'
# password_encryption = on --> password_encryption = on

# configurar la lista de acceso
sudo vi /etc/postgresql/8.4/main/pg_hba.conf
#    host MyDataBase MyUser MyIP 255.255.255.0 md5
#    host MyDataBase MyUser 192.168.1.4 255.255.255.0 md5
#    host all all 0.0.0.0 0.0.0.0 md5

# create user by specialized commands
createuser -A -d -P -h host -U new_user
dropuser -h host -U user

# create user and grant ownership 
sudo -u postgres psql postgres
sudo -u postgres psql -c "CREATE USER __USER__ WITH PASSWORD '__PASS__';"
sudo -u postgres psql -c "CREATE DATABASE __DATABASE__ WITH OWNER __USER__ ENCODING 'utf-8';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE __DATABASE__ to __USER__;"
# add owner to a database
sudo -u postgres psql -c "ALTER DATABASE __DATABASE__ OWNER TO __USER__;"

# Backup full database
pg_dump -h host -U user -W database > backup.sql

# Restore
psql -d database -f backup.sql

# Retore from compressed dump
pg_restore -U postgres -W -h 127.0.0.1 -d database database.backup

# Backup database schema
pg_dump -sv prueba -O > backup.schema.sql

# Backup database data
pg_dump -Fc -f backup.data.dump -a --disable-triggers database

############### utiles #############
\dg : list roles and groups
\dt : list of tables

# LOG: could not translate host name "localhost", service "5432" to address: Name or service not known
# Solution, in file /etc/hosts add:
127.0.0.1 localhost localhost.localdomain
