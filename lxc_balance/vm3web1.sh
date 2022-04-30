#!/bin/bash
echo "Instalando ubuntu:18.04 vm3web1 y vm3web2 en vm3"
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
lxc init ubuntu:18.04 vm3web1 --target vm3
lxc init ubuntu:18.04 vm3web2 --target vm3
lxc start vm3web1 vm3web2
