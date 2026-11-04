create_directory(){
    local parent="$1"
    local child="$2"

    if mkdir -p "$parent/$child"; then
        echo "Directory tree created successfully!"
        tree "$parent"
    else
        echo "Failed to create directory tree!"
        return 1
    fi
}

create_tree(){
    while true; do
echo
        echo "Input 1: Create Directory"
        echo "Input 2: Display parent tree"
        echo "Input 3: Delete parent tree"
        echo "Input 0: Exit"

        read -r -p "Your choice: " n

        if (( n == 1 )); then
            read -r -p "Enter parent directory name: " parent
            read -r -p "Enter subdirectory name: " child
            create_directory "$parent" "$child"

        elif (( n == 2 )); then
            read -r -p "Enter Parent: " parent

            if [[ -d "$parent" ]]; then
                tree "$parent"
            else
                echo "Directory does not exist!"
            fi

        elif (( n == 3 )); then
            read -r -p "Enter Parent: " parent

            if [[ -d "$parent" && "$parent" != "/" && "$parent" != "." && "$parent" != ".." ]]; then
                read -r -p "Confirm deletion? (yes/no): " confirm

                if [[ "$confirm" == "yes" ]]; then
                    rm -r -- "$parent"
                    echo "Directory deleted!"
                else
                    echo "Deletion cancelled!"
                fi
            else
                echo "Invalid directory!"
            fi

        elif (( n == 0 )); then
            echo "Program Ended!"
            break

        else
            echo "Invalid choice! Please enter 0-3."
        fi
    done
}

create_tree