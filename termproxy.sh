
#!/bin/bash
#proxy setup script

echo "[*] TERMINAL PROXY SET UP SCRIPT"
echo ""
echo ""
echo "[_] enter id (CAP only): "
read id
echo "[_] enter password (CAP only): "
read pass

cp /etc/environment /etc/environment.bak
cd /etc/
host="hostelinternet.rgukt.ac.in:3128/"
echo "export http_proxy=http://$id:$pass@$host" >> environment
echo "export https_proxy=http://$id:$pass@$host" >> environment
echo "export ftp_proxy=http://$id:$pass@$host" >> environment
echo "export telnet_proxy=http://$id:$pass@$host" >> environment

echo ""
echo ""
echo "environment"
cat environment
touch /etc/profile.d/proxy.sh
cd /etc/profile.d/
echo "export http_proxy=http://$id:$pass@$host" >> proxy.sh
echo "export https_proxy=http://$id:$pass@$host" >> proxy.sh
echo "export ftp_proxy=http://$id:$pass@$host" >> proxy.sh
echo "export telnet_proxy=http://$id:$pass@$host" >> proxy.sh

echo ""
echo ""
echo "profile.d/proxy.sh"
cat proxy.sh

echo "[+] ALL DONE"
echo "[+]  quit and restart terminal"