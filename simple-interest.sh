
#!/bin/bash

# Simple Interest Calculator
# IBM Getting Started with Git and GitHub Final Project

echo "Simple Interest Calculator"
echo "--------------------------"

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual interest rate (%): " rate
read -r -p "Enter the time period in years: " time

# Validate input values
for value in "$principal" "$rate" "$time"; do
    if ! [[ "$value" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        echo "Error: Please enter valid non-negative numbers."
        exit 1
    fi
done

# Calculate simple interest: (P * R * T) / 100
interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
    'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "--------------------------"
echo "Simple Interest: $interest"
