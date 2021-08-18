declare -a cloudflareV6Ips=("2400:cb00::/32"
   "2606:4700::/32"
   "2803:f800::/32"
   "2405:b500::/32"
   "2405:8100::/32"
   "2a06:98c0::/29"
   "2c0f:f248::/32")

for ip in "${cloudflareV6Ips[@]}";
do
   sudo ufw allow from $ip to any port 80,443 proto tcp;
done