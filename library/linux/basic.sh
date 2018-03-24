export __DIR__=/etc/ejabberd
export __FILE__=ejabberd_conf

###################
### Compression ###
###################

# Compress and Decompress bzip2 and gz(gpg)
tar -c __DIR__/ | bzip2 > __FILE__.tar.bz2
bzip2 -dc __FILE__.tar.bz2 | tar -x

tar -cz $__DIR__ | gpg -c -o $__FILE__.tgz.gpg
gpg -d $__FILE__.tgz.gpg | tar xz

# Compress multiple files and dirs
tar -zcvf __TAR__.tar.gz file1 file2 ... dir1 dir2 ...

# Make encrypted archive on remote machine
__DIR__=/home/djuser/tmp/
__USER__=djuser
__REMOTE__=linktelligence.com
__FILE__=backap
tar -c $__DIR__/ | gzip | gpg -c | ssh $__USER__@$__REMOTE__ "dd of=$__FILE__.tar.gz.gpg"

# Compress 7z
alias zipp=7za
zipp a -r __ZIP__.7z __DIR__/
zipp a -t7z -p -r __ZIP__.7z __DIR__/
zipp e __ZIP__.7z

# 7z on windows
copy C:\dev\7Zip\7z.exe C:\dev\7Zip\zipp.exe

###################
### Permissions ###
###################

# Permissions chmod [ugoa...][[+-=][rwxXst]
chmod -R g=u /opt/*  # same permissions to group

# Run backgrouind task
nohup /path/script.sh > /dev/null 2>&1 &

# add shared library
vi /etc/ld.so.conf
vi /etc/ld.so.conf.d/libc.conf
sudo ldconfig

# delete files with size == 0
find /tmp -size 0 -print0 | xargs -0 rm
find . -size 0 -delete

###############
### .bashrc ###
###############
echo $HISTFILE && echo $HISTSIZE

# command line init `.bashrc`
export HISTCONTROL=ignoreboth
export HISTSIZE=500

# as root /etc/profile
HOSTNAME='/bin/hostname'
HISTSIZE=1000

# Colors
LS_COLORS=$LS_COLORS:'di=1;36:'; export LS_COLORS
LS_COLORS=$LS_COLORS:'di=1;33:'; export LS_COLORS

############
### math ###
############
echo '(1 + sqrt(5))/2' | bc -l
echo $((0x2dec))					# Base conversion (hex to dec) ((shell arithmetic expansion))
units -t '100m/9.58s' 'miles/hour'  # Unit conversion (metric to imperial)
units -t '500GB' 'GiB'              # Unit conversion (SI to IEC prefixes)
units -t '1 googol'                 # Definition lookup
seq 100 | (tr '\n' +; echo 0) | bc  # Add a column of numbers. See also add and funcpy

################
### calendar ###
################
cal -3 # Display a calendar
cal 9 1752 # Display a calendar for a particular month year
date -d fri # What date is it this friday. See also day
date --date='25 Dec' +%A # What day does xmas fall on, this year
date --date='@2147483647' # Convert seconds since the epoch (1970-01-01 UTC) to date
TZ='America/Los_Angeles' date # What time is it on west coast of US (use tzselect to find TZ)
date --date='TZ="America/Los_Angeles" 09:00 next Fri' # The local time for 9AM next Friday on west coast US
[ $(date -d "tomorrow" +%d) = "01" ] || exit # exit a script unless it's the last day of the month

### mail and scheduler
echo "mail -s 'get the train' P@draigBrady.com < /dev/null" | at 17:45 # Email reminder
echo "DISPLAY=$DISPLAY xmessage cooker" | at "NOW + 30 minutes"        # Popup reminder

##########################################
### recode (iconv, dos2unix, unix2dos) ###
##########################################
recode -l | less               # Show available conversions (aliases on each line)
recode windows-1252.. __FILE__ # Windows "ansi" to local charset (with CRLF conversion)
recode utf-8/CRLF.. __FILE__                   # Windows utf8 to local charset
recode iso-8859-15..utf8 file_to_change.txt    # Latin9 (western europe) to utf8 
recode ../b64 __FILE__ __FILE_Base64__         # Base64 encode

recode /qp.. < file.txt > file.qp              # Quoted printable decode 
recode -lf windows-1252 | grep euro            # Lookup table of characters

echo -n 0x80 | recode latin-9/x1..dump         # Show what a code represents in latin-9 charmap

### images
# mount the cdrom image at /mnt/dir (read only) 
mount -o loop cdrom.iso /mnt/dir

# Create cdrom image from contents of dir 
mkisofs -V LABEL -r dir | gzip > cdrom.iso.gz

