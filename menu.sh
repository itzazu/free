#!/bin/bash
red="\e[1;31m"
gren="\e[1;32m"
blue="\e[1;34m"
yelow="\e[1;33m"
cyan="\e[1;36m"
white="\e[1;37m"

clear
echo ""
echo -e "       Free Script Auto Install " | lolcat  
echo -e "          -Chock Fighter Academy- " | lolcat   
echo -e "            -By @RPJ2580-" | lolcat
echo -e ""
 date | lolcat
echo -e "$cyan----------------R------------------------"
echo -e "              $cyan-[ MENU ]-"
echo -e "$cyan----------------------------------------"
echo -e "$red  1.  $white Create SSH & OpenVPN Account"
echo -e "$red  2.  $white Trial Account SSH & OpenVPN"
echo -e "$red  3.  $white Renew SSH & OpenVPN Account"
echo -e "$red  4.  $white Delete SSH & OpenVPN Account"
echo -e "$cyan----------------P------------------------"
echo -e "$red  5.  $white Create Vmess Account"
echo -e "$red  6.  $white Create Trojan Account"
echo -e "$cyan----------------J------------------------"
echo -e "$red  7.  $white Reboot VPS"
echo -e "$red  8.  $white Speedtest VPS"
echo -e "$red  9.  $white Information Display System"
echo -e "$red  10. $white Info Script Auto Install"
echo -e "$red  11. $white UPDATE PREMIUM SCRIPT"
echo -e "$cyan-----------------0-----------------------"
echo -e "$red  x.  exit"
echo -e "$cyan-----------------8-----------------------"
echo -e ""
read -p "     Please Input Number  [1-11 or 0] :  " menu
echo -e ""
case $menu in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
deluser
;;
5)
add-ws
;;
6)
add-tr
;;
7)
reboot
;;
8)
speedtest
;;
9)
info
;;
10)
about
;;
11)
pacth
;;
x)
exit
;;
*)
echo -e "$red Please enter an correct number!!!"
;;
esac
