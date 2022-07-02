
# proxy
this repo contains the scripts to configure the hostel proxy and to turn on/off the proxy for the terminal

1. termproxy.sh :this script will setup the proxy access to the terminal. it takes the ID and Password as input parameters
*NOTE*:need to run as sudo
```bash
sudo ./termproxy.sh
```
2. proxyonoff.sh : this script  will turn on/off the proxy. It does it by taking in on/off as arguments
```bash
./proxyonoff on
#to turn on the proxy
./proxyonoff off
#to turn off the proxy
```