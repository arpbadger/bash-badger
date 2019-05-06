#! /bin/bash 

# A simple CTF automation script 

# (Cosmetic) Colour Settings
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal

# Print Welcome Screen
#echo " Bash Badger CTF Automation Tool"
#echo " run with --help command for details"
printf " ${YELLOW}   
==================================================
	  ___             __    
	 |  _ \          | |                
	 | |_) | __ _ ___| |__              
	 |  _ < / _ / __|  __ \             
	 | |_) | (_| \__ \ | | |            
	 |____/ \__,_|___/_| |_|            
	 |  _ \          | |                
	 | |_) | __ _  __| | __ _  ___ _ __ 
	 |  _ < / _  |/ _  |/ _  |/ _ \  __|
	 | |_) | (_| | (_| | (_| |  __/ |   
	 |____/ \__,_|\__,_|\__, |\___|_|   
	                     __/ |          
	                    |___/            

	     An ArpBadger Tool  

==================================================
		     ${RESET}"

# Check if command was entered, if not display help page
if [ "$1" == "" ];
	then 
	printf "\nYou didn't supply a command\n" 
	echo "Usage: ./bash-badger [command]"
	echo "Common commands:
	--full : run a full scan including arp-scan, nmap, dirb 
	--nodirb : run a full scan but do not include dirb "
	exit

# Run script based on input command 
else 

	# Open the help page
	if [ "$1" == "--help" ];
		then	
		echo " "
		printf "Usage: ./bash-badger.sh [option]\n"
		printf "Options\n"
		printf "\n--full | run all 3 scans (arp-scan,nmap, dirb))"
		printf "\n--nordirb | don't run dirb"
		printf "\n--about| display information about the script"
		printf "\n--help | dispaly this help page\n\n"
	
	fi

	# Run a full scan 
	if [ "$1" == "--full" ];
		then 

		# Create New Project Directories 
		echo "Enter CTF or Project Name"
		read Project
		echo "Creating Project Folder"
		mkdir $Project 
		cd $Project
		touch bash-results.txt

		# Setup results text file 
		echo " Bash Badger CTF Automation Tool" >> bash-results.txt
		echo "  " >> bash-results.txt


		# Arp scan for targets, add results to file 
		echo "Running arp-scan"
		echo "Arp scan for"$Project >> bash-results.txt
		echo "==============================================" >> bash-results.txt
		echo " " >> bash-results.txt
		arp-scan -l >> bash-results.txt
		echo "arp-scan results in /local/arp.txt"
		echo " " >> bash-results.txt


		# Get target from user, Nmap targets 
		subl bash-results.txt
		echo "Enter a target from the arp-scan results"
		echo "Enter the Target"
		read Target 
		echo "Nmap scan for"$Project >> bash-results.txt
		echo "==============================================" >> bash-results.txt
		echo " " >> bash-results.txt 
		nmap -sS -sV -A -O $Target >> bash-results.txt


		# Dirb targets
		echo "running dirb"
		echo " Dirb scan for " $Project >> bash-results.txt
		echo "==============================================" >> bash-results.txt
		dirb 'http://'$Target -S >> bash-results.txt
	fi

	# Run without a dirb scan 
	if [ "$1" == "--nodirb" ];
		then 

		# Create New Project Directories 
		echo "Enter CTF or Project Name"
		read Project
		echo "Creating Project Folder"
		mkdir $Project 
		cd $Project
		touch bash-results.txt

		# Setup results text file 
		echo " Bash Badger CTF Automation Tool" >> bash-results.txt
		echo "  " >> bash-results.txt


		# Arp scan for targets, add results to file 
		echo "Running arp-scan"
		echo "Arp scan for"$Project >> bash-results.txt
		echo "==============================================" >> bash-results.txt
		echo " " >> bash-results.txt
		arp-scan -l >> bash-results.txt
		echo "arp-scan results in /local/arp.txt"
		echo " " >> bash-results.txt


		# Get target from user, Nmap targets 
		subl bash-results.txt
		echo "Enter a target from the arp-scan results"
		echo "Enter the Target"
		read Target 
		echo "Nmap scan for"$Project >> bash-results.txt
		echo "==============================================" >> bash-results.txt
		echo " " >> bash-results.txt 
		nmap -sS -sV -A -O $Target >> bash-results.txt
	fi

# Exit the script 
fi
