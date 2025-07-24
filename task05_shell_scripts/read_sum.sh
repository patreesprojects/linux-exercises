#!/bin/bash

# Simple script that asks for two numbers and prints their sum

echo "Enter first number:"
read number1

echo "Enter second number:"
read number2

sum=$((number1 + number2))

echo "Result: $number1 + $number2 = $sum"
