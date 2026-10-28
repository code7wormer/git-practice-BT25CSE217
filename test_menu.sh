#!/bin/bash
# Test runner for menu options
echo "Testing Option 1 (Greet):"
printf "1\nTestStudent\n4\n" | ./menu.sh

echo "Testing Option 2 (Add Integers):"
printf "2\n10\n25\n4\n" | ./menu.sh

echo "Testing Option 3 (Even/Odd):"
printf "3\n42\n4\n" | ./menu.sh
