#! /bin/bash 

#a simple CTF bash script

# Welcome Screen
echo "Welcome to the Bash Badger"

# Create New Project Directories 
echo "Enter CTF or Project Name"
read Project
echo "Creating Project Folder"
mkdir $Project 
cd $Project
#touch $Project"_arp.txt"
touch bash-results.txt

# Setup results text file 
echo " Bash Badger CTF automation tool" >> bash-results.txt
echo "  " >> bash-results.txt


# Arp scan for targets, add results to file 
echo "Running arp-scan"
#arp-scan -l > /$Project/$Project"_arp.txt" 
echo "Arp scan for"+$Project >> bash-results.txt
echo "==============================================" >> bash-results.txt
echo " " >> bash-results.txt
arp-scan -l >> bash-results.txt
echo "arp-scan results in /local/arp.txt"


#Nmap targets 
subl bash-results.txt
echo "Enter the Target"
read Target 

echo "Nmap scan for"+$Project >> bash-results.txt
echo "==============================================" >> bash-results.txt
echo " " >> bash-results.txt 
nmap -sS -sV -A -O $Target >> bash-results.txt

echo "Thanks for using the Bash Badger"
