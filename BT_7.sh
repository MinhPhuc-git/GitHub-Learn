sudo groupadd TestGroup
sudo groupadd customer

sudo usermod -aG customer User
sudo usermod -aG TestGroup AdminTest

id User
id AdminTest

getent group TestGroup
getent group customer