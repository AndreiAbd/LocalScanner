#1/bin/sh

$1
if [ $1 = '--help' ]
then
clear
echo " "
echo " █▀▀ █▀█ █▀▄ █▀▀ █▀█ ▀▄▀"
echo " █▄▄ █▄█ █▄▀ ██▄ █▀▄ █░█"
echo " "
echo "[*] Introduction:"
echo "Local Scanner Tool, Simple bash script writen by Andrei Abd | CoderX"
echo "this tool can give you information about all devices that contact"
echo "to any local network useing arp scan standart tool"
echo " "
echo "[*] Usage:"
echo "Local Scanner useing standart local ip adress - 192.168.1.1, also you"
echo "after you give all number inputs the result will be echo in output and"
echo "all results will be saved in one file every single scan."
echo " "
echo "[*] Contact:"
echo "for more information can mail by adress : usr.g0a1@gmail.com"
echo " "
exit
fi

clear
echo " "
echo " █░░ █▀▀█ █▀▀ █▀▀█ █░░ 　 █▀▀ █▀▀ █▀▀█ █▀▀▄ █▀▀▄ █▀▀ █▀▀█ "
echo " █░░ █░░█ █░░ █▄▄█ █░░ 　 ▀▀█ █░░ █▄▄█ █░░█ █░░█ █▀▀ █▄▄▀ "
echo " ▀▀▀ ▀▀▀▀ ▀▀▀ ▀░░▀ ▀▀▀ 　 ▀▀▀ ▀▀▀ ▀░░▀ ▀░░▀ ▀░░▀ ▀▀▀ ▀░▀▀ "
echo " "

echo "[*] Welcome to Local Scanner Script"
echo "[?] Run '--help' for more information"
echo "[*] The result output file 'localnet.txt'"
read -p "[?] Please enter number of loop: " lp
read -p "[?] Please enter sleep time (every 1 sec = 1): " tme
read -p "[?] Please enter name interface: " interface
sleep 1

i=0
while [ $i -lt $lp ]
do
i=`expr $i + 1`
echo "[$i] Result form loop $lp :"
echo " "
sudo arp-scan --interface $interface --localnet | sed "2d"
sudo arp-scan --interface $interface --localnet | sed "2d" >> localScan.txt 
echo "[+] Sleep For $tme sec ...."
sleep $tme
echo ""
done
echo "[!] Scan Finsh All Result Save to file localScan.txt"
exit
