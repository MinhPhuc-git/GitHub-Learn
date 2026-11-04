passwd="leminhphuc"
for((i=0; i < 10; i ++)); do
    username="User$i"
    sudo useradd -m "$username"
    echo "$username:$passwd" | sudo chpasswd
    echo "$username Created"
done

read -p "Press 1 to delete all User (0-9)" n

if((n == 1)); then
    for((i=0; i < 10; i++)); do
        username="User$i"
        sudo userdel -r "$username"
        echo "$username Deleted"
    done
else
    echo "ALL User Still Exists!!!"
fi