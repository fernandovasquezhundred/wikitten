# Install ssh server
sudo apt-get install openssh-server
sudo vi /etc/ssh/sshd_config
sudo /etc/init.d/ssh restart

# Run command on ssh (Secure SHell)
ssh $user@$host command

#check network
netstat -tulpn

# Do not disconect SSH: edit `/etc/ssh/sshd_config`
TCPKeepAlive no
ClientAliveInterval 30
ClientAliveCountMax 100

# Copy with permissions to $USER's home directory on $HOST
scp -p -r $USER@$HOST: file dir/

# Forward connections to $HOSTNAME:8080 out to $HOST:80
ssh -g -L 8080:localhost:80 root@$HOST

# Forward connections from $HOST:1434 in to imap:143
ssh -R 1434:imap:143 root@$HOST

## Problem: SSH is slow! ##
# 1. Add this to `/etc/ssh/sshd_config`
UseDNS no

# 2. Already slow? add to `/etc/ssh/ssh_config or ~/.ssh/config`
GSSAPIAuthentication no

