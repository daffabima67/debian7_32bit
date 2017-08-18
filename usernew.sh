#!/bin/bash
#Script auto create user SSH

echo -e "------------------------------- MEMBUAT AKUN SSH -------------------------------"
echo -e "                              ALL SUPPORTED anova                    "

echo -e ""
echo -e ""
echo -e ""
echo -e ""

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

echo -e ""
echo -e "====Informasi SSH account===="
echo -e "Host: $IP" 
echo -e "Port OpenSSH: 22,143"
echo -e "Port Dropbear: 80,109,110443"
echo -e "Squid: 8080,3128"
echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn"
echo -e "Username: thornssh-$Login "
echo -e "Password: $Pass"
echo -e "-----------------------------"
echo -e "Aktif Sampai: $exp"
echo -e "============================="

echo -e ""
