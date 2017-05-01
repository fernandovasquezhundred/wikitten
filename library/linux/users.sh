# Ubuntu # adduser <username>
sudo useradd -s /bin/bash -d /home/ejabberd -m ejabberd

sudo passwd __USER__
groupadd -r __GROUP__
gpasswd -a __USER__ __GROUP__

usermod -a -G www-data avbtech

sudo cat /etc/shadow  # lista de usuario
users                 # usuarios conectados
cat /etc/passwd | grep ftp

#activar y desactivar root en ubuntu
sudo passwd root
sudo passwd -l root

# add to sudoers:
sudo visudo
# __USER__ ALL=(ALL:ALL) ALL
#          <HOSTs>=(<T>:<COMMAND>)
sudo adduser __USER__ sudo

# set default shell to user
chsh -s /bin/bash username

# SSH login without password
# http://www.linuxproblem.org/art_9.html
ssh-keygen -t rsa
# then copy to authorized_keys in the other server

# disable password authentication for specific user
# add to file `/etc/ssh/sshd_config`
Match user __USER__
PasswordAuthentication no
