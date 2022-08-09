#Fix Source.list
echo "deb http://kali.download/kali kali-rolling main contrib non-free
deb http://kali.download/kali kali-last-snapshot main contrib non-free
deb http://kali.download/kali kali-experimental main contrib non-free
deb http://kali.download/kali kali-bleeding-edge main contrib non-free" | sudo tee /etc/apt/sources.list
sudo apt-get update -y
#Fix NetworkManager
mv NetworkManager.conf /etc/NetworkManager/
service NetworkManager restart
#Fix Drivers TP-Link WN772
sudo apt-get update -y && sudo apt-get upgrade -y && sudo  apt-get dist-upgrade
sudo apt-get install bc -y
sudo apt-get install build-essential -y
sudo apt-get install libelf-dev -y
sudo apt-get install linux-headers-$(uname -r) -y
sudo apt-get install dkms -y
sudo rmmod r8188eu.ko
git clone https://github.com/aircrack-ng/rtl8188eus
cd rtl8188eus
clear 
cat NOW
