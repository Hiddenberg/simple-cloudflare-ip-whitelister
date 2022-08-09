#!/bin/bash

cloudflareV6Ips=$(curl -s https://www.cloudflare.com/ips-v6)

for ip in ${cloudflareV6Ips[@]};
do
   echo "adding $ip to the white list..."
   sudo ufw allow from $ip to any port 80,443 proto tcp;
   echo -e "\n"
done