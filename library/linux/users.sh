# Ubuntu # adduser <username>
sudo useradd -s /bin/bash -d /home/djuser -m djuser
sudo useradd -s /bin/bash -d /home/bufer -m bufer
sudo passwd __USER__
groupadd -r __GROUP__
gpasswd -a __USER__ __GROUP__

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
