#!/bin/bash
echo "Instalando Contenedor en vm1"
sudo gpasswd -a vagrant lxd
lxd init yes 192.168.1.10 no vm1 yes vagrant vagrant yes dir no no no yes auto yes no
