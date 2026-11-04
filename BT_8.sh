a=111
b=10
c=11
echo "Q&A a: $((a%b))"
echo "Q&A b: x = -b/a -> $((-b/a))"
if ((a * b > 0)); then
    echo "Q&A c: Same"
else
    echo "Q&A c: Different"
fi

max=$((a > b ? a : b))
max=$((max > c ? max : c))
echo "Q&A d: $max"