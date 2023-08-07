#!/bin/bash
#Autor: zainil kabore
#Date: 07/28/2023
#---------system inventory-script---------
echo "opareting system"
cat /etc/os-release
echo "hard drive"
lsblk
echo "cpu speed"
lscpu
echo "memory"
free -m
echo " system kernel"
uname -r 
echo "number of cpu"
nproc
 
