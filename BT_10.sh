read -p "Input Number: " n
result=0
for(( i=1; i*i <= n; i++)); do
    if ((i*i == n)); then
        result=1
        break
    fi
done

if ((result == 1)); then
    echo "$n is a Square Number"
else
    echo "$n is not a Square Number"

fi

