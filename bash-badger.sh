#! /bin/bash 

# A simple CTF automation script 

# Print Welcome Screen
echo " Bash Badger CTF Automation Tool"
echo " run with --help command for details"

# Check if command was entered, if not display help page
if [ "$1" == "" ];
	then 
	echo "You didn't supply a command" 
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
		echo "--full | run all 3 scans (arp-scan,nmap, dirb)"
		echo "--nordirb | don't run dirb"
		echo "--about| display information about the script"
		echo "--help | dispaly this help page "
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
 
	echo "Thanks for runing bash-badger"
	echo "for help, enter --help"
fi
