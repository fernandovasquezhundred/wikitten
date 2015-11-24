# Permissions chmod [ugoa...][[+-=][rwxXst]
chmod -R g=u /opt/*  # same permissions to group

# Run backgrouind task
nohup /path/script.sh > /dev/null 2>&1 &

# Compresion de archivos
tar -zcvf file.tar.gz file1 file2 ... dir1 dir2 ...
tar -zxvf file.tar.gz
tar -zxvf file.tar.gz -C /tmp/extractHere/

# add shared library
vi /etc/ld.so.conf
vi /etc/ld.so.conf.d/libc.conf
sudo ldconfig

# Memory
free -m # Show amount of (remaining) RAM (-m displays in MB)

# delete files with size == 0
find /tmp -size 0 -print0 | xargs -0 rm
find . -size 0 -delete

# split a file in multiple ones of size X
split -l 200000 filename # each file 200 000 lines
split -b 200m filename   # each file 200 MB

# Remote desktop
rdesktop 143.210.123.456
rdesktop -u __USERNAME__ 143.210.123.456
rdesktop -u __USERNAME__ -fP 143.210.123.456

# Specify Window size:
rdesktop -u __USERNAME__ -g 100% -PKD 143.210.123.456
rdesktop -u Administrador -g 90% -pPASSWORD 192.168.1.35

# Important options
   -D: hide window manager decorations
   -K: keep window manager key bindings
   -z: enable rdp compression
   -P: use persistent bitmap caching

# bash history
echo $HISTFILE && echo $HISTSIZE
# Change values in ~/.bashrc
export HISTCONTROL=ignoreboth
export HISTSIZE=500
# as root /etc/profile
HOSTNAME='/bin/hostname'
HISTSIZE=1000
