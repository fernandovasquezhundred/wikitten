# Install ssh server
sudo apt-get install openssh-server
sudo vi /etc/ssh/sshd_config
sudo /etc/init.d/ssh restart

# Run command on ssh (Secure SHell)
ssh $user@$host command

#check network
netstat -tulpn

# Not close SSH
sudo vim /etc/ssh/sshd_config
TCPKeepAlive no
ClientAliveInterval 30
ClientAliveCountMax 100

# Copy with permissions to $USER's home directory on $HOST
scp -p -r $user@$host: file dir/

# Forward connections to $HOSTNAME:8080 out to $HOST:80
ssh -g -L 8080:$hostname:80 root@$host

ssh -L 3333:localhost:3306 __USER__@__SERVERIP__
mysql -u __MYUSER__ -p -P 3333 -h 127.0.0.1 

ssh -L 3307:localhost:3306 fernando@192.168.0.41
mysql -u myadmin -p -P 3307 -h 127.0.0.1 

# Generate RSA
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub

## Problem: SSH is slow! ##
# 1. Add this to `/etc/ssh/sshd_config`
UseDNS no

# 2. Already slow? add to `/etc/ssh/ssh_config or ~/.ssh/config`
GSSAPIAuthentication no

