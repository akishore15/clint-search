sudo apt install git
echo "Do you want to install? (y/n)"
read ans1
if [ ans1 -eq "y" ]; then
echo "OK"
sudo ufw allow --p 8085
git clone https://github.com/akishore15/clint-search
echo "Booting on a port, choose which one."
read pt
git clone https://github.com/akisore15/clint-search/google.py --p $pt
echo "*-----"
sleep 1
echo "**----"
sleep 1
echo "***---"
sleep 1
echo "****--"
sleep 1
echo "*****-"
sleep 1
echo "******"
sleep 1
echo "BOOTED! Go to localhost:$pt to view your own Google Search!"
else
echo "OK, deleting."
fi
