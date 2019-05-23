
* http://localhost:5984/_utils/index.html

### init, stop and restart

```bash
sudo service couchdb start
sudo service couchdb stop
sudo service couchdb restart
```

### password reset

* Edit file `/etc/local.ini`

```
[admins]
username = newPassw0rd
```
