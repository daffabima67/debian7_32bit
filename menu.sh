#!/bin/bash
#Menu
IP=`dig +short myip.opendns.com @resolver1.opendns.com`
echo -e "------------ Selamat datang di server $IP -----------"
echo -e "Silakan ketik daftar perintah yang tersedia"
echo -e "========================DAFTAR MENU==========================="
echo -e "Apa yang ingin anda lakukan?"
echo -e "1)  Menampilkan daftar perintah yang tersedia	= menu"
echo -e "2)  Membuat akun SSH	= usernew"
echo -e "3)  Membuat akun trial	= trial"
echo -e "4)  Menghapus akun SSH	= hapus"
echo -e "5)  Cek user login	= login"
echo -e "6)  Lock User Expire = user-expired"
echo -e "7)  Cek member SSH	= member"
echo -e "8)  Restart service dropbear,squid3,dll	= restart"
echo -e "9)  Reboot VPS	= reboot"
echo -e "10)  Speedtest VPS	= speedtest"
echo -e "11) Cek Kualitas VPS	= bench-network"
echo -e "12) Cek RAM VPS	= ps-mem"
echo -e "13) informasi tentang script auto install	= about"
echo -e "=========================anova SSH============================"
echo -e "ALL SUPPORTED by anova"
echo -e ""
