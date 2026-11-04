cd /home/public

passwd="leminhphuc"

echo "Init User"
echo "leminhphuc" | sudo -v

sudo useradd -m User

echo "User:$passwd" | sudo chpasswd 
read -p "Press any key to create admin"

echo "Init AdminTest"
sudo useradd -m AdminTest
echo "AdminTest:$passwd" | sudo chpasswd
read -p "Press any key to continue"

sudo usermod -aG customer User
sudo usermod -aG admin AdminTest

read -p "Press any key to delete User and Folder"
sudo userdel -r User
sudo userdel -r AdminTest

echo "Done"