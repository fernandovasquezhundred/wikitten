# postscrpit manual to pdf
man -t man | ps2pdf

#####################################
#  Regular Expression with Sed      # 
#####################################

sed 's/string1/string2/g' 			# Modify anystring1 to anystring2
sed 's/\(.*\)1/\12/g'			# Remove comments and blank lines
sed 's/[ \t]*$//'	# Remove trailing spaces from lines

cat file | sed -n '1000{p;q}'	# Print 1000th line of file
sed -n '10,20p;20q'				# Print lines 10 to 20
sed -i 42d ~/.ssh/known_hosts		# Delete a particular line

ls /usr/bin | pr -T9 -W$COLUMNS		Print in 9 columns to width of terminal

find -name '*.[ch]' | xargs grep -E 'expr'		# Search 'expr' in this dir and below. See also findrepo
find -type f -print0 | xargs -r0 grep -F 'example'	# .. regular files for 'example' in this dir and below
find -maxdepth 1 -type f | xargs grep -F 'example'	# .. regular files for 'example' in this dir
find -maxdepth 1 -type d | while read dir; do echo $dir; echo cmd2; done	Process each item with multiple commands (in while loop)
locate -r 'file[^/]*\.txt'		Search cached index for names. This re is like glob *file*.txt
grep --color reference /usr/share/dict/words		Highlight occurances of regular expression in dictionary

find dir/ -name '*.txt' | tar -c --files-from=- | bzip2 > dir_txt.tar.bz2	Make archive of subset of dir/ and below
find dir/ -name '*.txt' | xargs cp -a --target-directory=dir_txt/ --parents	Make copy of subset of dir/ and below
dd bs=1M if=/dev/sda | gzip | ssh user@remote 'dd of=sda.gz'			Backup harddisk to remote machine

smbclient -L windows_box # List shares on windows machine or samba server
 
mount -t smbfs -o fmask=666,guest //windows_box/share /mnt/share # Mount a windows share
 
echo 'message' | smbclient -M windows_box
Send popup to windows machine (off by default in XP sp2)


sort -t. -k1,1n -k2,2n -k3,3n -k4,4n		# Sort IPV4 ip addresses

tr -dc '[:print:]' < /dev/urandom			# Filter non printable characters
•
history | wc -l

ltrace -f -e getenv ls >/dev/null
List library calls made by command
•
lsof -p $$
List paths that process id has open
•
lsof ~
List processes that have specified path open
•
tcpdump not port 22
Show network traffic except ssh. See also tcpdump_not_me

ps -e -o pid,args --forest # List processes in a hierarchy
ps -e -o pcpu,cpu,nice,state,cputime,args --sort pcpu | sed '/^ 0.0 /d' # List processes by % cpu usage
ps -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS # List processes by mem (KB) usage. See also ps_mem.py
•
ps -C firefox-bin -L -o pid,tid,pcpu,state
List all threads for a particular process
•
ps -p 1,2
List info for particular process IDs
•
last reboot
Show system reboot history
•

•
watch -n.1 'cat /proc/interrupts'
Watch changeable data continuously
system information (see also sysinfo) ('#' means root access is required)
•
uname -a
Show kernel version and system architecture
•
head -n1 /etc/issue
Show name and version of distribution
•
cat /proc/partitions
Show all partitions registered on the system
•
grep MemTotal /proc/meminfo
Show RAM total seen by the system
•
grep "model name" /proc/cpuinfo
Show CPU(s) info
•
lspci -tv
Show PCI info
•
lsusb -tv
Show USB info
•
mount | column -t
List mounted filesystems on the system (and align output)
•
grep -F capacity: /proc/acpi/battery/BAT0/info
Show state of cells in laptop battery
#
dmidecode -q | less
Display SMBIOS/DMI information
#
smartctl -A /dev/sda | grep Power_On_Hours
How long has this disk (system) been powered on in total
#
hdparm -i /dev/sda
Show info about disk sda
#
hdparm -tT /dev/sda
Do a read speed test on disk sda
#
badblocks -s /dev/sda
Test for unreadable blocks on disk sda
interactive (see also linux keyboard shortcuts)
•
gnuplot
Interactive/scriptable graphing
•
alias hd='od -Ax -tx1z -v'
Handy hexdump. (usage e.g.: • hd /proc/self/cmdline | less)
•
alias realpath='readlink -f'
Canonicalize path. (usage e.g.: • realpath ~/../$USER)

set | grep $USER
Search current environment
 
touch -c -t 0304050607 file # Set file timestamp (YYMMDDhhmm)
