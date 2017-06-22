#!/bin/bash
#
# Yuk Pantau Pantau
# Mod by Yonatan Kanu as THORN SSH
# ==========================
# 

data=( `ps aux | grep -i dropbear | awk '{print $2}'`);

echo "-----------------------";
echo "Checking Dropbear login";
echo "-----------------------";

for PID in "${data[@]}"
do
	#echo "check $PID";
	NUM=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | wc -l`;
	USER=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | awk '{print $10}'`;
	IP=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | awk '{print $12}'`;
	if [ $NUM -eq 1 ]; then
		echo "$PID - $USER - $IP";
	fi
done

echo "";

data=( `ps aux | grep "\[priv\]" | sort -k 72 | awk '{print $2}'`);

echo "----------------------";
echo "Checking OpenSSH login";
echo "----------------------";

for PID in "${data[@]}"
do
        #echo "check $PID";
	NUM=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | wc -l`;
	USER=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | awk '{print $9}'`;
	IP=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | awk '{print $11}'`;
        if [ $NUM -eq 1 ]; then
                echo "$PID - $USER - $IP";
        fi
done

echo "";

echo "------------------------------------------------"
echo " Multi Login = Kill "
echo " Cara pakai : Kill nomor PID "
echo "------------------------------------------------"

echo "";

echo -e "<font color='#FF0059'>A</font><font color='#FF0039'>L</font><font color='#FF0018'>L</font><font color='#FF0B00'> </font><font color='#FF2D00'>S</font><font color='#FF4A00'>U</font><font color='#FE6600'>P</font><font color='#FF8100'>P</font><font color='#FF9B00'>O</font><font color='#FEB700'>R</font><font color='#FFD500'>T</font><font color='#FFF700'>E</font><font color='#E2FF00'>D</font><font color='#C1FF00'> </font><font color='#A1FF00'>b</font><font color='#82FF00'>y</font><font color='#62FF00'> </font><font color='#41FF00'>Y</font><font color='#1BFF00'>o</font><font color='#00FE0E'>n</font><font color='#00FF34'>a</font><font color='#00FF57'>t</font><font color='#00FE77'>a</font><font color='#00FE96'>n</font><font color='#00FFB6'> </font><font color='#00FFD6'>K</font><font color='#00FFF9'>a</font><font color='#00E0FE'>n</font><font color='#00C1FF'>u</font><font color='#00A5FF'> </font><font color='#008AFE'>a</font><font color='#006FFE'>s</font><font color='#0054FF'> </font><font color='#0037FF'>T</font><font color='#0017FF'>H</font><font color='#0C00FF'>O</font><font color='#2E00FF'>R</font><font color='#4E00FF'>N</font><font color='#6E00FF'> </font><font color='#8D00FF'>S</font><font color='#AE00FF'>S</font><font color='#D100FF'>H</font>"
echo -e "<font color='#FF0059'>W</font><font color='#FF0007'>A</font><font color='#FF4900'> </font><font color='#FF8C00'>:</font><font color='#FED200'> </font><font color='#D6FF00'>0</font><font color='#87FE00'>8</font><font color='#36FF00'>5</font><font color='#00FF2C'>7</font><font color='#00FF7F'>0</font><font color='#00FFCC'>7</font><font color='#00DBFF'>1</font><font color='#0093FF'>3</font><font color='#0051FE'>6</font><font color='#0002FF'>0</font><font color='#5000FF'>2</font><font color='#9E00FF'>8</font>"
echo -e "<font color='#FF0059'>F</font><font color='#FE0039'>B</font><font color='#FF0016'>:</font><font color='#FF0E00'> </font><font color='#FF3000'>h</font><font color='#FF4E00'>t</font><font color='#FE6A00'>t</font><font color='#FF8500'>p</font><font color='#FFA100'>s</font><font color='#FEBE00'>:</font><font color='#FFDD00'>/</font><font color='#FCFF00'>/</font><font color='#D8FF00'>w</font><font color='#B7FE00'>w</font><font color='#96FF00'>w</font><font color='#77FF00'>.</font><font color='#55FF00'>f</font><font color='#32FF00'>a</font><font color='#0AFF00'>c</font><font color='#00FF20'>e</font><font color='#00FF46'>b</font><font color='#00FF68'>o</font><font color='#00FF88'>o</font><font color='#00FFA8'>k</font><font color='#00FEC8'>.</font><font color='#00FFEB'>c</font><font color='#00EDFE'>o</font><font color='#00CBFF'>m</font><font color='#00AEFE'>/</font><font color='#0092FF'>k</font><font color='#0076FF'>a</font><font color='#005BFF'>n</font><font color='#003EFE'>u</font><font color='#001EFE'>.</font><font color='#0600FF'>n</font><font color='#2900FF'>u</font><font color='#4B00FF'>g</font><font color='#6B00FF'>r</font><font color='#8B00FE'>a</font><font color='#AC00FF'>h</font><font color='#D000FF'>a</font>"
echo -e "<font color='#FF0059'>B</font><font color='#FE0039'>L</font><font color='#FF0016'>O</font><font color='#FF0E00'>G</font><font color='#FF3000'> </font><font color='#FF4E00'>:</font><font color='#FE6A00'> </font><font color='#FF8500'>h</font><font color='#FFA100'>t</font><font color='#FEBE00'>t</font><font color='#FFDD00'>p</font><font color='#FCFF00'>:</font><font color='#D8FF00'>/</font><font color='#B7FE00'>/</font><font color='#96FF00'>y</font><font color='#77FF00'>o</font><font color='#55FF00'>n</font><font color='#32FF00'>a</font><font color='#0AFF00'>t</font><font color='#00FF20'>a</font><font color='#00FF46'>n</font><font color='#00FF68'>k</font><font color='#00FF88'>a</font><font color='#00FFA8'>n</font><font color='#00FEC8'>u</font><font color='#00FFEB'>.</font><font color='#00EDFE'>b</font><font color='#00CBFF'>l</font><font color='#00AEFE'>o</font><font color='#0092FF'>g</font><font color='#0076FF'>s</font><font color='#005BFF'>p</font><font color='#003EFE'>o</font><font color='#001EFE'>t</font><font color='#0600FF'>.</font><font color='#2900FF'>c</font><font color='#4B00FF'>o</font><font color='#6B00FF'>.</font><font color='#8B00FE'>i</font><font color='#AC00FF'>d</font><font color='#D000FF'>/</font>"
echo -e "<font color='#FF0059'>B</font><font color='#FF0038'>L</font><font color='#FF0014'>O</font><font color='#FF1100'>G</font><font color='#FF3300'> </font><font color='#FF5100'>:</font><font color='#FF6E00'> </font><font color='#FE8A00'>h</font><font color='#FEA600'>t</font><font color='#FFC400'>t</font><font color='#FFE600'>p</font><font color='#F2FF00'>:</font><font color='#CEFF00'>/</font><font color='#ACFF00'>/</font><font color='#8BFF00'>y</font><font color='#6AFF00'>o</font><font color='#47FF00'>n</font><font color='#21FF00'>a</font><font color='#00FF09'>t</font><font color='#00FF32'>a</font><font color='#00FF57'>n</font><font color='#00FF79'>k</font><font color='#00FE9A'>a</font><font color='#00FFBA'>n</font><font color='#00FFDD'>u</font><font color='#00FAFF'>.</font><font color='#00D7FF'>w</font><font color='#00B7FE'>o</font><font color='#009AFF'>r</font><font color='#007EFF'>d</font><font color='#0062FE'>p</font><font color='#0044FF'>r</font><font color='#0024FF'>e</font><font color='#0000FE'>s</font><font color='#2400FF'>s</font><font color='#4700FF'>.</font><font color='#6700FF'>c</font><font color='#8800FF'>o</font><font color='#AA00FE'>m</font><font color='#CF00FE'>/</font>"
