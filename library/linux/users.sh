# User creation
sudo useradd -s /bin/bash -d /home/__USER__ -m __USER__
sudo passwd __USER__

sudo useradd -s /bin/bash -d /home/ejabberd -m ejabberd

# add to sudoers:
sudo visudo
# __USER__ ALL=(ALL:ALL) ALL
#          <HOSTs>=(<T>:<COMMAND>)
sudo adduser __USER__ sudo

# group management
groupadd -r __GROUP__
gpasswd -a __USER__ __GROUP__

usermod -a -G www-data avbtech

#activar y desactivar root en ubuntu
sudo passwd root
sudo passwd -l root

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

sudo cat /etc/shadow  # lista de usuario
users                 # usuarios conectados
cat /etc/passwd | grep ftp

