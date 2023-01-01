
sudo timedatectl set-timezone  Asia/Tehran
apt update
apt install -y apt-transport-https dnsutils ca-certificates git curl wget gnupg-agent software-properties-common  iptables
sudo apt -y remove needrestart
ln -s $(pwd)/sysctl.conf /etc/sysctl.d/ss-opt.conf
sysctl --system

if [[ $ONLY_IPV4 == true ]];then
  sysctl -w net.ipv6.conf.all.disable_ipv6=1
  sysctl -w net.ipv6.conf.default.disable_ipv6=1
  sysctl -w net.ipv6.conf.lo.disable_ipv6=1
fi

bash google-bbr.sh


