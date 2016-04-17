# Set password to the 'root'
mysqladmin -u root password NEWPASSWORD
mysqladmin -u root -p'oldpassword' password newpass
mysqladmin -u user -p oldpassword password newpass

# backup y restarurar base de datos     #
mysqldump -h localhost -u user -p bd > backup.sql
mysqldump -user -pP4SS bd [tables] > filename
mysqldump -u root -pP4ssw0rd --all-databases > /tmp/FULLDUMP.sql

# restarurar: el usuario debe estar creado con los privilegios y la bd
mysql -h localhost -u user -p database_name < backup.sql

## Enable remote connections ##
# open file
/etc/mysql/my.cnf
# comment the following line
bind-address = 127.0.0.1
# restart
/etc/init.d/mysql restart

## Restore root password ##
/etc/init.d/mysql stop
mysqld_safe --skip-grant-tables &
mysql -u root mysql
# mysql> UPDATE user SET Password=PASSWORD('nueva_contraseña') WHERE User='root';
# mysql> FLUSH PRIVILEGES;
# mysql> \q
killall mysqld;
/etc/init.d/mysql start
