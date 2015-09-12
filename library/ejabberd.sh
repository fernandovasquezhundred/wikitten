# OpenSSL setup
# http://www.jabberdoc.org/app_sslkey.html

openssl req -new -x509 -newkey rsa:1024 -days 3650 -keyout privkey.pem -out server.pem
openssl rsa -in privkey.pem -out privkey.pem
cat privkey.pem >> server.pem
mv server.pem /usr/local/etc/jabberd/server.pem

chown root:jabber /usr/local/etc/jabberd/server.pem
chmod 640 /usr/local/etc/jabberd/server.pem

bash ./ejabberdctl start
