sudo apt install git
sudo ufw allow 8085
git clone https://github.com/akishore15/clint-search.git --p 8085
echo "BOOTING ON PORT 8085"
google-chrome localhost:8085