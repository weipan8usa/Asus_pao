tc qdisc del dev br0 root
tc qdisc add dev br0 root handle 1: htb
tc class add dev br0 parent 1: classid 1:1 htb rate 512kbit
tc class add dev br0 parent 1:1 classid 1:11 htb rate 102kbit ceil 512kbit prio 0
tc class add dev br0 parent 1:1 classid 1:12 htb rate 102kbit ceil 512kbit prio 1
tc class add dev br0 parent 1:1 classid 1:13 htb rate 102kbit ceil 512kbit prio 2
tc class add dev br0 parent 1:1 classid 1:14 htb rate 102kbit ceil 512kbit prio 3
tc class add dev br0 parent 1:1 classid 1:15 htb rate 102kbit ceil 512kbit prio 4
tc filter add dev br0 parent 1:0 prio 0 protocol ip handle 11 fw flowid 1:11
tc filter add dev br0 parent 1:0 prio 1 protocol ip handle 12 fw flowid 1:12
tc filter add dev br0 parent 1:0 prio 2 protocol ip handle 13 fw flowid 1:13
tc filter add dev br0 parent 1:0 prio 3 protocol ip handle 14 fw flowid 1:14
tc filter add dev br0 parent 1:0 prio 4 protocol ip handle 15 fw flowid 1:15
iptables -t mangle -A POSTROUTING -d 192.168.1.37 -j MARK --set-mark 11
iptables -t mangle -A POSTROUTING -d 192.168.1.38 -j MARK --set-mark 12
iptables -t mangle -A POSTROUTING -d 192.168.1.39 -j MARK --set-mark 13
iptables -t mangle -A POSTROUTING -d 192.168.1.40 -j MARK --set-mark 14
iptables -t mangle -A POSTROUTING -d 192.168.1.41 -j MARK --set-mark 15
insmod imq
insmod ipt_IMQ
ip link set imq0 up
tc qdisc del dev imq0 root
tc qdisc add dev imq0 root handle 1: htb
tc class add dev imq0 parent 1: classid 1:1 htb rate 55kbit
tc class add dev imq0 parent 1:1 classid 1:11 htb rate 11kbit ceil 55kbit prio 0
tc class add dev imq0 parent 1:1 classid 1:12 htb rate 11kbit ceil 55kbit prio 1
tc class add dev imq0 parent 1:1 classid 1:13 htb rate 11kbit ceil 55kbit prio 2
tc class add dev imq0 parent 1:1 classid 1:14 htb rate 11kbit ceil 55kbit prio 3
tc class add dev imq0 parent 1:1 classid 1:15 htb rate 11kbit ceil 55kbit prio 4
tc filter add dev imq0 parent 1:0 prio 0 protocol ip handle 11 fw flowid 1:11
tc filter add dev imq0 parent 1:0 prio 1 protocol ip handle 12 fw flowid 1:12
tc filter add dev imq0 parent 1:0 prio 2 protocol ip handle 13 fw flowid 1:13
tc filter add dev imq0 parent 1:0 prio 3 protocol ip handle 14 fw flowid 1:14
tc filter add dev imq0 parent 1:0 prio 4 protocol ip handle 15 fw flowid 1:15
iptables -t mangle -A PREROUTING -s 192.168.1.37 -j MARK --set-mark 11
iptables -t mangle -A PREROUTING -s 192.168.1.38 -j MARK --set-mark 12
iptables -t mangle -A PREROUTING -s 192.168.1.39 -j MARK --set-mark 13
iptables -t mangle -A PREROUTING -s 192.168.1.40 -j MARK --set-mark 14
iptables -t mangle -A PREROUTING -s 192.168.1.41 -j MARK --set-mark 15
