#! /bin/bash 

#a simple CTF bash script

# Welcome Screen

echo " Welcome to the Bash Badger"
# Create New Project Directories 
echo "Enter CTF or Project Name"
read Project
echo "Creating Project Folder"
mkdir $Project 
#touch /$Project/$Project"_arp.txt"

# Arp scan for targets, add results to file 
echo "Running arp-scan"
arp-scan -l >> /$Project/$Project"_arp.txt"

echo "arp-scan results in /local/arp.txt"
subl /$Project/$Project"_arp.txt"
echo "Enter the Target"
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
