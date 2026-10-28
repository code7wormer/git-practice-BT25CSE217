#!/bin/bash
# Script: greet.sh
# Purpose: Greet user by name with empty input validation

read -p "Enter your name: " name
if [ -z "$name" ]; then
    echo "Error: Name cannot be empty! Please provide a valid name."
    exit 1
fi
echo "Hello, $name! Welcome to Git Version Control Lab."
