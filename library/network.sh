netsh wlan show profile name="Fer@m" key=clear
netsh wlan show profile name="S@msung" key=clear
RamiroV@squezChoquehu@nc@TaxPeru2015UL2012
AvProlongacionJavierPradoMzBLt1
D@hae
C@lleM@yt@C@p@c410-AIVCenten@rio

sudo lshw -C network

ifconfig eth0 192.168.1.100 netmask 255.255.255.0 up
route add -net 192.168.0.0 netmask 255.255.255.0 eth0

sudo vi /etc/network/interfaces

# The primary network interface - use DHCP to find our address
auto eth0
iface eth0 inet dhcp

# The primary network interface
auto eth0
iface eth0 inet static
address 192.168.3.90
gateway 192.168.3.1
netmask 255.255.255.0
network 192.168.3.0
broadcast 192.168.3.255

sudo /etc/init.d/networking restart

auto eth0:1
iface eth0:1 inet static
address 192.168.1.60
netmask 255.255.255.0
network x.x.x.x
broadcast x.x.x.x
gateway x.x.x.x
