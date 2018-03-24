##
## Running
## http://localhost:5280/admin
erl -sname node1 -remsh node2@machine2.example.org
erl -sname short_name # no dot: localhost
erl -name long_name # with dot: xxx.com

# OpenSSL setup
# http://www.jabberdoc.org/app_sslkey.html
openssl req -new -x509 -newkey rsa:1024 -days 3650 -keyout privkey.pem -out server.pem
openssl rsa -in privkey.pem -out privkey.pem
cat privkey.pem >> server.pem
mv server.pem /usr/local/etc/jabberd/server.pem

chown root:jabber /usr/local/etc/jabberd/server.pem
chmod 640 /usr/local/etc/jabberd/server.pem

bash ./ejabberdctl start
bash ./ejabberdctl stop

##
## Compile Code
##
E:\java\ejabberd-15.07\bin\erlc -I ./include -DNO_EXT_LIB -o ./ebin src\mod_restful.erl
E:\java\ejabberd-15.07\bin\erlc -I E:/java/ejabberd-15.07/lib/ejabberd-15.07/include -I ./include -DNO_EXT_LIB -o ./ebin src\mod_restful.erl
E:\java\ejabberd-15.07\bin\erlc -I E:/java/ejabberd-15.07/lib/ejabberd-15.07/include -DNO_EXT_LIB mod_isolate_companies.erl
copy /Y ebin\*.beam E:\java\ejabberd-15.07\lib\ejabberd-15.07\ebin

## PostGres Setup
{auth_method, odbc}.
{odbc_server, {pgsql, "127.0.0.1", "ejabberd", "ejabberd", "password"}}.

odbc_type: pgsql
odbc_server: "localhost"
odbc_database: "ejabberd"
odbc_username: "ejabberd"
odbc_password: "pM0dF3r21."

hosts:
  - "Fernando"
acl:
  admin:
    user:
      - "admin": "Fernando"

##
## ejabberdctl mod_admin_extra
##
ejabberdctl list_cluster
ejabberdctl connected_users
ejabberdctl registered_users __VHOST__
ejabberdctl registered_vhosts
# x.dev.vms.me
ejabberdctl registered_users x.dev.vms.me


ejabberdctl subscribe bufer fernando vafer fernando VaFer friends both
ejabberdctl add_rosteritem user30 localhost user31 localhost user31 friends both
