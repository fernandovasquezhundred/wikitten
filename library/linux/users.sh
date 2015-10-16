# Ubuntu # adduser <username>
sudo useradd -s /bin/bash -d /home/djuser -m djuser
sudo useradd -s /bin/bash -d /home/bufer -m bufer
sudo passwd __USER__
groupadd -r __GROUP__
gpasswd -a __USER__ __GROUP__

#lista de usuario
sudo cat /etc/shadow

#usuarios conectados
users
cat /etc/passwd | grep ftp

#activar y desactivar root en ubuntu
sudo passwd root
sudo passwd -l root

#add to sudoers
sudo adduser __USER__ sudo

# set default shell to user
chsh -s /bin/bash username
