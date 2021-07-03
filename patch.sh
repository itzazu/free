#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
IZIN=$( curl http://akses.rpj08.my.id:81/akses | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"
echo "Telegram t.me/RPJ258"
echo "WhatsApp wa.me/085601438924"
rm -f setup.sh
exit 0
fi
mkdir /var/lib/premium-script;
echo "IP=" >> /var/lib/premium-script/ipvps.conf
#install ssh ovpn
wget https://raw.githubusercontent.com/lesta-1/sc/main/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#install ssr
wget https://raw.githubusercontent.com/lesta-1/sc/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://raw.githubusercontent.com/lesta-1/sc/main/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
#installwg
wget https://raw.githubusercontent.com/lesta-1/sc/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#install L2TP
wget https://raw.githubusercontent.com/lesta-1/sc/main/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget https://raw.githubusercontent.com/lesta-1/sc/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh

rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /usr/bin/menu
rm -f /usr/bin/usernew
rm -f /usr/bin/add-ws
rm -f /usr/bin/add-tr
rm -f /usr/bin/hapus

cd /usr/bin
wget -O add-host "https://raw.githubusercontent.com/lesta-1/sc/main/add-host.sh"
wget -O about "https://raw.githubusercontent.com/lesta-1/sc/main/about.sh"
wget -O menu "https://raw.githubusercontent.com/lesta-1/sc/main/menu.sh"
wget -O usernew "https://raw.githubusercontent.com/lesta-1/sc/main/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/lesta-1/sc/main/trial.sh"
wget -O hapus "https://raw.githubusercontent.com/lesta-1/sc/main/hapus.sh"
wget -O member "https://raw.githubusercontent.com/lesta-1/sc/main/member.sh"
wget -O delete "https://raw.githubusercontent.com/lesta-1/sc/main/delete.sh"
wget -O cek "https://raw.githubusercontent.com/lesta-1/sc/main/cek.sh"
wget -O restart "https://raw.githubusercontent.com/lesta-1/sc/main/restart.sh"
wget -O speedtest "https://raw.githubusercontent.com/lesta-1/sc/main/speedtest_cli.py"
wget -O info "https://raw.githubusercontent.com/lesta-1/sc/main/info.sh"
wget -O ram "https://raw.githubusercontent.com/lesta-1/sc/main/ram.sh"
wget -O renew "https://raw.githubusercontent.com/lesta-1/sc/main/renew.sh"
wget -O autokill "https://raw.githubusercontent.com/lesta-1/sc/main/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/lesta-1/sc/main/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/lesta-1/sc/main/tendang.sh"
wget -O clear-log "https://raw.githubusercontent.com/lesta-1/sc/main/clear-log.sh"
wget -O change-port "https://raw.githubusercontent.com/lesta-1/sc/main/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/lesta-1/sc/main/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/lesta-1/sc/main/port-ssl.sh"
wget -O port-wg "https://raw.githubusercontent.com/lesta-1/sc/main/port-wg.sh"
wget -O port-tr "https://raw.githubusercontent.com/lesta-1/sc/main/port-tr.sh"
wget -O port-sstp "https://raw.githubusercontent.com/lesta-1/sc/main/port-sstp.sh"
wget -O port-squid "https://raw.githubusercontent.com/lesta-1/sc/main/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/lesta-1/sc/main/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/lesta-1/sc/main/port-vless.sh"
wget -O wbmn "https://raw.githubusercontent.com/lesta-1/sc/main/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/lesta-1/sc/main/xp.sh"
wget -O update "https://raw.githubusercontent.com/lesta-1/sc/main/update.sh"
wget -O add-ws "https://raw.githubusercontent.com/lesta-1/sc/main/add-ws.sh"
wget -O add-vless "https://raw.githubusercontent.com/lesta-1/sc/main/add-vless.sh"
wget -O add-tr "https://raw.githubusercontent.com/lesta-1/sc/main/add-tr.sh"
wget -O del-ws "https://raw.githubusercontent.com/lesta-1/sc/main/del-ws.sh"
wget -O del-vless "https://raw.githubusercontent.com/lesta-1/sc/main/del-vless.sh"
wget -O del-tr "https://raw.githubusercontent.com/lesta-1/sc/main/del-tr.sh"
wget -O cek-ws "https://raw.githubusercontent.com/lesta-1/sc/main/cek-ws.sh"
wget -O cek-vless "https://raw.githubusercontent.com/lesta-1/sc/main/cek-vless.sh"
wget -O cek-tr "https://raw.githubusercontent.com/lesta-1/sc/main/cek-tr.sh"
wget -O renew-ws "https://raw.githubusercontent.com/lesta-1/sc/main/renew-ws.sh"
wget -O renew-vless "https://raw.githubusercontent.com/lesta-1/sc/main/renew-vless.sh"
wget -O renew-tr "https://raw.githubusercontent.com/lesta-1/sc/main/renew-tr.sh"
wget -O certv2ray "https://raw.githubusercontent.com/lesta-1/sc/main/cert.sh"
chmod +x add-ws
chmod +x add-vless
chmod +x add-tr
chmod +x del-ws
chmod +x del-vless
chmod +x del-tr
chmod +x cek-ws
chmod +x cek-vless
chmod +x cek-tr
chmod +x renew-ws
chmod +x renew-vless
chmod +x renew-tr
chmod +x certv2ray
chmod +x add-host
chmod +x menu
chmod +x usernew
chmod +x trial
chmod +x hapus
chmod +x member
chmod +x delete
chmod +x cek
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renew
chmod +x clear-log
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x update
clear
echo ""
echo "Installation has been completed!!"
echo " Reboot 15 Sec"
sleep 15
rm -f setup.sh
reboot

