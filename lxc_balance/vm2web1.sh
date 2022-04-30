#!/bin/bash
echo "Instalando ubuntu:18.04 vm2web1 y vm2web2 en vm2"
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
lxc init ubuntu:18.04 vm2web1 --target vm2
lxc init ubuntu:18.04 vm2web2 --target vm2
lxc start vm2web1
lxc start vm2web2