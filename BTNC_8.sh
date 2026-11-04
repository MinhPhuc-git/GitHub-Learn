count_users(){
    local count 
    count=$(getent passwd | wc -l)

    echo "Total users in system: $count"
}
count_users