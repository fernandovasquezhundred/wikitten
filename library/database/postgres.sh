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
psql __DATABASE__ -U __USER__ -h 127.0.0.1  -W
psql searchengine -U djuser -h 127.0.0.1 -W

# Remote access configuration
sudo vi /etc/postgresql/8.4/main/postgresql.conf
    listen_addresses = 'localhost' ==> listen_addresses = '*' o listen_addresses = '0.0.0.0'
    password_encryption = on ==> password_encryption = on

# configurar la lista de acceso
sudo vi /etc/postgresql/8.4/main/pg_hba.conf
    host  MyDataBase  MyUser  MyIP            255.255.255.0  md5
    host  MyDataBase  MyUser  192.168.1.4     255.255.255.0  md5
    host  MyDataBase  MyUser  192.168.1.4/24                 md5
    host  all         all     0.0.0.0         0.0.0.0        md5

# create user by specialized commands
createuser -A -d -P -h host -U new_user
dropuser -h __HOST__ -U __USER__

for tbl in `psql -qAt -c "select tablename from pg_tables where schemaname = 'public';" YOUR_DB` ; do  psql -c "alter table \"$tbl\" owner to NEW_OWNER" YOUR_DB ; done
for tbl in `psql -qAt -c "select sequence_name from information_schema.sequences where sequence_schema = 'public';" YOUR_DB` ; do  psql -c "alter table \"$tbl\" owner to NEW_OWNER" YOUR_DB ; done
for tbl in `psql -qAt -c "select table_name from information_schema.views where table_schema = 'public';" YOUR_DB` ; do  psql -c "alter table \"$tbl\" owner to NEW_OWNER" YOUR_DB ; done

# Backup full database (compress: -F c)
pg_dump -f backup.sql -U __USER__ -h __HOST__ -W __DATABASE__
pg_dump -f backup.sql -U djuser -h 127.0.0.1 -W searchengine

# Retore from compressed dump
pg_restore -U postgres -W -h 127.0.0.1 -d database database.backup

# Restore from sql
psql -d database -f backup.sql

# Backup database schema
pg_dump -sv prueba -O > backup.schema.sql

# Backup database data
pg_dump -Fc -f backup.data.dump -a --disable-triggers database
for tbl in `psql -qAt -c "select tablename from pg_tables where schemaname = 'public';" __DATABASE__` ; do  pg_dump --file=$tbl.sql --column-inserts --data-only --table=$tbl __DATABASE__ ; done

# LOG: could not translate host name "localhost", service "5432" to address: Name or service not known
# Solution, in file `/etc/hosts` add:
127.0.0.1 localhost localhost.localdomain
