#!/bin/bash

## BEGIN CONFIG ##
HOST=localhost
USER=__USER__
PASS=__PASS__
BACKUP_DIR=__OUTDIR__

if [ ! -d $BACKUP_DIR ]; then
  mkdir -p $BACKUP_DIR
fi

# Backup de MySQL
MYSQL_DBS=$(mysqlshow -h $HOST -u $USER -p$PASS | awk ' (NR > 2) && (/[a-zA-Z0-9]+[ ]+[|]/) && ( $0 !~ /mysql/) { print $2 }');

for DB in $MYSQL_DBS ; do
  echo "* Backuping MySQL data from $DB@$HOST..."
  mysqldump -h $HOST -u $USER -p$PASS $DB > $BACKUP_DIR/mysql_$DB.sql
done
