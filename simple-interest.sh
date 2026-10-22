#!/bin/bash
# simple-interest.sh
# Calculates simple interest and total amount from user input.
#
# Formula:  SI = (P * R * T) / 100
#           Amount = P + SI
#
# Usage:    ./simple-interest.sh

# Reads a positive number into the variable named by $2, prompting with $1
read_positive() {
    local prompt="$1"
    local varname="$2"
    local value

    while true; do
        read -r -p "$prompt" value
        if [[ "$value" =~ ^[0-9]*\.?[0-9]+$ ]] && awk "BEGIN { exit !($value > 0) }"; then
            printf -v "$varname" '%s' "$value"
            return
        fi
        echo "Invalid input. Please enter a number greater than 0."
    done
}

echo "=== Simple Interest Calculator ==="

read_positive "Enter principal amount: " principal
read_positive "Enter annual rate of interest (%): " rate
read_positive "Enter time period (years): " time

interest=$(awk "BEGIN { printf \"%.2f\", ($principal * $rate * $time) / 100 }")
total=$(awk "BEGIN { printf \"%.2f\", $principal + $interest }")

echo
echo "Principal       : $principal"
echo "Rate of interest: $rate %"
echo "Time period     : $time years"
echo "-------------------------------"
echo "Simple Interest : $interest"
echo "Total Amount    : $total"
