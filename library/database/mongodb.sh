sudo apt-get install -y mongodb
sudo service mongodb start

# For remote connections add  line to "/etc/mongodb.conf"
bind_ip = 0.0.0.0

# backup/restore
mongodump --host __HOST__ --port __PORT__ --out dump-2013-10-25/
mongodump --username __USER__ --password "__PASS__"
mongorestore dump-2013-10-25/

# Insufficient free space for journal files
# /etc/mongodb.conf
# mongo 3
storage:
   mmapv1:
      smallFiles: true
# For version 2.6+
storage:
   smallFiles: true
# For version 2.4 and less
smallfiles = true

# Web mongo GUI with Ruby gem
gem install bson_ext
gem install bson_ext -v 1.9.2
gem install genghisapp
genghisapp # http://localhost:5678/
genghisapp --kill
