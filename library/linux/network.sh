sudo lshw -C network

ifconfig eth0 192.168.1.100 netmask 255.255.255.0 up
route add -net 192.168.0.0 netmask 255.255.255.0 eth0

sudo vi /etc/network/interfaces

# Set default gateway to 1.2.3.254
ip route add default via 1.2.3.254

tc qdisc add dev lo root handle 1:0 netem delay 20msec		Add 20ms latency to loopback device (for testing)
tc qdisc del dev lo root			Remove latency added above

# Lookup DNS ip address for name or vice versa
host pixelbeat.org

# Lookup local ip address (equivalent to host `hostname`)
hostname -i

# Lookup whois info for hostname or ip address
whois pixelbeat.org

netstat -tupl					List internet services on a system
netstat -tup					List active connections to/from system
windows networking (Note samba is the package that provides all this windows specific networking support)


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
