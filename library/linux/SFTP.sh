sftp root@remote_ip << EOT
lcd /home/local
cd /home/remote
get config.yaml
mget *.php
bye
quit
EOT

# copy file
hostname="server"
username="user"
password="pass"

ftp -n $hostname <<EOF
quote USER $user
quote PASS $pass
binary
lcd /home/pages
cd /www/pages
mput *.html
quit
EOF
