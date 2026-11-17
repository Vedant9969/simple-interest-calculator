
#!/bin/bash

echo "===== Simple Interest Calculator ====="

read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time Period (in years): " time

if [[ ! "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || 
   [[ ! "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || 
   [[ ! "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid positive numbers."
    exit 1
fi

interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")
total=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

echo "-----------------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
echo "-----------------------------------"
