check_user(){
    local username="$1"
    local current_user=$(whoami)

    if [[ "$username" == "$current_user" ]]; then
        echo "$username is the current user"
    else
        echo "$username is not the current user"
    fi
}

read -r -p "Enter username: " name

check_user "$name"