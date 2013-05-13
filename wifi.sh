ip link set up dev wlan0
systemctl restart hostapd.service
ip addr add 10.0.0.1/24 dev wlan0
#ifconfig wlan0 10.0.0.1 netmask 255.255.255.0
systemctl restart dhcpd4.service
#iptables -P FORWARD ACCEPT
#iptables -P OUTPUT ACCEPT
#iptables -P INPUT ACCEPT
iptables -t nat -A POSTROUTING -s 10.0.0.1/24 -o eth0 -j MASQUERADE
#iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE 
sysctl net.ipv4.ip_forward=1

