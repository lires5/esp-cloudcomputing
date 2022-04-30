#!/bin/bash
echo "Instalando Apache en vm3web1"
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
lxc exec vm3web1 -- apt update && apt upgrade -y
lxc exec vm3web1 -- apt install apache2 -y
lxc exec vm3web1 -- systemctl enable apache2
lxc exec vm3web1 -- systemctl start apache2


echo "Instalando Apache en vm3web2 "
lxc exec vm3web2 -- apt update && apt upgrade -y
lxc exec vm3web2 -- apt install apache2 -y
lxc exec vm3web2 -- systemctl enable apache2
lxc exec vm3web2 -- systemctl start apache2



