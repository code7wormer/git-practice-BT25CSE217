#!/bin/bash
# Script: menu.sh
# Purpose: Interactive arithmetic and utility menu

show_menu() {
    echo "=========================================="
    echo "        GIT LAB UTILITY MENU              "
    echo "=========================================="
    echo "1. Greet User"
    echo "2. Add Two Integers"
    echo "3. Check Even or Odd"
    echo "4. Exit"
    echo "------------------------------------------"
}

while true; do
    show_menu
    read -p "Select an option [1-4]: " choice
    case $choice in
        1)
            read -p "Enter user name: " uname
            if [ -z "$uname" ]; then
                uname="Student"
            fi
            echo "Hello, $uname! Have a productive lab session."
            echo ""
            ;;
        2)
            read -p "Enter first integer: " num1
            read -p "Enter second integer: " num2
            if [[ "$num1" =~ ^-?[0-9]+$ ]] && [[ "$num2" =~ ^-?[0-9]+$ ]]; then
                sum=$((num1 + num2))
                echo "Result: $num1 + $num2 = $sum"
            else
                echo "Error: Both inputs must be valid integers."
            fi
            echo ""
            ;;
        3)
            read -p "Enter an integer to check: " val
            if [[ "$val" =~ ^-?[0-9]+$ ]]; then
                if [ $((val % 2)) -eq 0 ]; then
                    echo "Result: $val is an EVEN number."
                else
                    echo "Result: $val is an ODD number."
                fi
            else
                echo "Error: Input must be a valid integer."
            fi
            echo ""
            ;;
        4)
            echo "Exiting Git Lab Menu. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose between 1 and 4."
            echo ""
            ;;
    esac
done
