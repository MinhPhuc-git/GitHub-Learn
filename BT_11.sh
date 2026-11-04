read -p "Input Number: " n

sum=0
for ((i=1; i <= n/2;i++ )); do
    if(( n % i == 0)); then
        sum=$((sum+i))
        echo "$sum:$i"
    fi
done

if ((sum == n)); then
    echo "$n is a Perfect Number"
else
    echo "$n is not a Perfect Number"
fi