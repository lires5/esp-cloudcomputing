#!/bin/bash
sudo gpasswd -a vagrant lxd
sudo lxd init yes 172.18.18.12 yes no vm3 172.18.18.10 yes vagrant yes enter no
