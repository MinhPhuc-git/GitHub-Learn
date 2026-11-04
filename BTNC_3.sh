greeting(){
    local name="$1"
    echo "Hello, $name !"
}

read -r -p "Enter your name: " name

greeting "$name"