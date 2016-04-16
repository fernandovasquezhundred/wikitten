# Compress Zip
7za a -p -r __NAME__.7z /path/__DIR__/
tar -zcvf file.tar.gz file1 file2 ... dir1 dir2 ...
tar -zxvf file.tar.gz
tar -zxvf file.tar.gz -C /tmp/extractHere/

# Permissions chmod [ugoa...][[+-=][rwxXst]
chmod -R g=u /opt/*  # same permissions to group

# Run backgrouind task
nohup /path/script.sh > /dev/null 2>&1 &

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

### bash history ###
echo $HISTFILE && echo $HISTSIZE

# Change values in ~/.bashrc
export HISTCONTROL=ignoreboth
export HISTSIZE=500

# as root /etc/profile
HOSTNAME='/bin/hostname'
HISTSIZE=1000
