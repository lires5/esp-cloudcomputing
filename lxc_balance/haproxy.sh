#!/bin/bash
echo "Instalando Haproxy en vm1servidor1"
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
lxc exec vm1servidor1 -- apt update && apt upgrade -y
lxc exec vm1servidor1 -- apt install haproxy -y
lxc exec vm1servidor1 -- systemctl enable haproxy 






