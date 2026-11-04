check_executeFile(){
    local file="$1"
    local test="$2"
    if [[ ! -f "$file" ]]; then
        echo "$file doe not exists or is not a regular file!"
        return 1
    fi

    if [[ -x "$file" ]]; then
        echo "$file has execute permission"
    else
        echo "$file does not have execute permission"
    fi
    echo "$test"
}

read -r -p "Enter file path: " path

check_executeFile "$path" "GiaTri2"