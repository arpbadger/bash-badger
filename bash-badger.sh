#! /bin/bash 

#a simple CTF bash script

# Welcome Screen

echo """  ____            _       ____            _                 
 |  _ \          | |     |  _ \          | |                
 | |_) | __ _ ___| |__   | |_) | __ _  __| | __ _  ___ _ __ 
 |  _ < / _` / __| '_ \  |  _ < / _` |/ _` |/ _` |/ _ \ '__|
 | |_) | (_| \__ \ | | | | |_) | (_| | (_| | (_| |  __/ |   
 |____/ \__,_|___/_| |_| |____/ \__,_|\__,_|\__, |\___|_|   
                                             __/ |          
                                            |___/           """


# Help information 
echo "For help, see the README "
echo ""
echo "Enter Project Name"
read Project

# Create New Project Directories 
Create Project Folder
echo "Creating Project Folder"
mkdir $Project 
touch /$Project/$Project"_arp.txt"

# Arp scan for targets, add results to file 
echo "Running arp-scan"
arp-scan -l >> /$Project/$Project"_arp.txt"

echo "arp-scan results in /local/arp.txt"
echo "Enter the Target, for all in arp.txt, Enter 'All'"
read Target 
 
# Nmap targets


#echo hello | grep hi ; echo $?


# From https://linuxhint.com/read_file_line_by_line_bash/
filename='/$Project/$Project"_arp.txt"'
n=1
while read line; do

if grep 192 ; echo $? == 0:
	do 
	# for each line grep finds matches the text, save to a variable 
# reading each line
echo "Line No. $n : $line"
n=$((n+1))
done < $filename


# Nmap targets 
#for line in /$Project/$Project"_arp.txt":
#do 
#done 


#
#
#
#
#
#
#
#
