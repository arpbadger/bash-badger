#! /bin/bash 

#a simple CTF bash script

# Welcome Screen
echo " Bash Badger CTF Automation Tool"
if [ "$1" == "" ]
then 
echo "You didn't supply a command" 
echo "Usage: ./bash-badger [command]"
exit
fi

# Create New Project Directories 
echo "Enter CTF or Project Name"
read Project
echo "Creating Project Folder"
mkdir $Project 
cd $Project
#touch $Project"_arp.txt"
touch bash-results.txt

# Setup results text file 
echo " Bash Badger CTF Automation Tool" >> bash-results.txt
echo "  " >> bash-results.txt


# Arp scan for targets, add results to file 
echo "Running arp-scan"
#arp-scan -l > /$Project/$Project"_arp.txt" 
echo "Arp scan for"$Project >> bash-results.txt
echo "==============================================" >> bash-results.txt
echo " " >> bash-results.txt
arp-scan -l >> bash-results.txt
echo "arp-scan results in /local/arp.txt"
echo " " >> bash-results.txt


#Nmap targets 
subl bash-results.txt
echo "Enter the Target"
read Target 

echo "Nmap scan for"$Project >> bash-results.txt
echo "==============================================" >> bash-results.txt
echo " " >> bash-results.txt 
nmap -sS -sV -A -O $Target >> bash-results.txt


#Dirb targets
echo "Do you Want to Run Dirb (1 for yes, 0 for no) "
read webscan
if [ $webscan -gt 0 ]; then
	echo "running dirb"
	echo " Dirb scan for " $Project >> bash-results.txt
	echo "==============================================" >> bash-results.txt
	dirb 'http://'$Target -S >> bash-results.txt
else 
	echo "Thanks for running bash Badger"
fi
#cho "running Dirb on server"
#b http://

echo "Thanks for using the Bash Badger"
