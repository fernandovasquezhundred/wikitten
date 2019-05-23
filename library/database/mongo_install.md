# Execute follwing commands

```bash
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
    echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
    sudo apt-get update
    sudo apt-get install -y mongodb-org
    sudo vi /etc/systemd/system/mongodb.service
```

paste the following lines:

    [Unit]
    Description=High-performance, schema-free document-oriented database
    After=network.target

    [Service]
    User=mongodb
    ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf

    [Install]
    WantedBy=multi-user.target

Then execute commands

    sudo systemctl start mongodb
    sudo systemctl status mongodb
    sudo systemctl enable mongodb

to enable access from external server

    sudo ufw allow __SERVER__/32 to any port 27017

to enable access from anyoen

    sudo ufw allow 27017
