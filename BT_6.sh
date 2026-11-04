read -p "Input user you want check: " username

if id "$username" &>/dev/null; then
    echo "User ($username) already exists!"
else
    echo "User ($username) not exists!"
fi
