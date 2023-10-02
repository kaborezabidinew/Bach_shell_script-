#!/bin/bash

echo "Welcome to our gas station!"

read -p "Do you want a car wash? (yes/no): " car_wash_choice

if [[ $car_wash_choice == "yes" ]]; then
    echo "Please proceed to the car wash area."
else
    read -p "Please select your grade (Regular, Plus, Premium): " gas_grade

    echo "Pumping gas with $gas_grade grade..."


fi