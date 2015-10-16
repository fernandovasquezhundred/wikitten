// config PDO
LoadFile "d:/wamp/bin/php/php5.5.12/libpq.dll"
sudo apt-get install php5-dev
sudo apt-get install php5-pgsql

Previous answers are not very clear (PDO doc too)
In postgreSQL, sequences are created when you are using the SERIAL data type.

CREATE TABLE ingredients (
  id         SERIAL PRIMARY KEY,
  name       varchar(255) NOT NULL,
);
# So the sequence name will be ingredients_id_seq

$db->lastInsertId('ingredients_id_seq');
