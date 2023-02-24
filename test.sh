
#!/bin/bash

sudo ifconfig eth0 0.0.0.0
sudo ifconfig eth1 0.0.0.0
sudo ifconfig usb1 0.0.0.0
sudo brctl addbr br0
sudo brctl addif br0 eth0
sudo brctl addif br0 eth1
sudo brctl addif br0 usb1
sudo ifconfig br0 up
sudo ifconfig br0 192.168.225.99/24
sudo ip route add default via 192.168.225.1 dev br0
