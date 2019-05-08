#! /bin/bash

# A simple CTF automation script

# Config Settings
# To customize this tool, edit the following settings
# For more information, see the README.me

# (Cosmetic) Colour Settings
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Process Running
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal

# Print Welcome Screen
#printf " Bash Badger CTF Automation Tool"
#printf " run with --help command for details"
printf " ${YELLOW}
==================================================
	  ___             __
	 |  _ \          | |
	 | |_) | __ _ ___| |__
	 |  _ < / _ / __|  __
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
		     ${RESET}\n"

# Check if command was entered, if not display help page
if [ "$1" == "" ];
	then
	printf "\nYou didn't supply a command\n"
	printf "Usage: ./bash-badger [command]"
	printf "Common commands:
	--full : run a full scan including arp-scan, nmap, dirb
	--nodirb : run a full scan but do not include dirb "
	exit

# Run script based on input command
else

	# Open the help page
	if [ "$1" == "--help" ];
		then
		printf "\nUsage: ./bash-badger.sh [option]\n"
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
		printf "Enter CTF or Project Name\n"
		read Project
		printf "${YELLOW}Creating Project Folder${RESET}\n"
		mkdir $Project
		cd $Project
		touch bash-results.txt
		printf "${GREEN}Project Created at $PWD ${RESET}\n"

		# Setup results text file
		printf "${YELLOW}Bash Badger CTF Automation Tool\n${RESET}\n" >> bash-results.txt

		# Arp scan for targets, add results to file
		printf "${YELLOW}Running arp-scan${RESET}\n"
		printf "${YELLOW}Arp scan for $Project ${RESET}\n">> bash-results.txt
		printf "${YELLOW}==============================================${RESET}\n" >> bash-results.txt
		arp-scan -l >> bash-results.txt
		printf "${GREEN}arp-scan done\narp-scan results in $PWD+arp.txt${RESET}\n"

		# Get target from user, Nmap targets
		subl bash-results.txt
		printf "Enter a target from the arp-scan results\nEnter the Target\n"
		read Target
		printf "${YELLOW}Nmap scan for${RESET}\n"$Project >> bash-results.txt
		printf "==============================================\n" >> bash-results.txt
		nmap -sS -sV -A -O $Target >> bash-results.txt

		# Dirb targets
		printf "${YELLOW}running dirb${REST}\n"
		printf " Dirb scan for " $Project >> bash-results.txt
		printf "==============================================\n" >> bash-results.txt
		dirb 'http://'$Target -S >> bash-results.txt
	fi

	# Run without a dirb scan
	if [ "$1" == "--nodirb" ];
		then

		# Create New Project Directories
		printf "Enter CTF or Project Name\n"
		read Project
		printf "${YELLOW}Creating Project Folder${RESET}\n"
		mkdir $Project
		cd $Project
		touch bash-results.txt
		printf "${GREEN}Project Created at $PWD ${RESET}\n"

		# Setup results text file
		printf "${YELLOW}Bash Badger CTF Automation Tool\n${RESET}\n" >> bash-results.txt

		# Arp scan for targets, add results to file
		printf "${YELLOW}Running arp-scan${RESET}\n"
		printf "${YELLOW}Arp scan for $Project ${RESET}\n">> bash-results.txt
		printf "${YELLOW}==============================================${RESET}\n" >> bash-results.txt
		arp-scan -l >> bash-results.txt
		printf "${GREEN}arp-scan done\narp-scan results in $PWD+arp.txt${RESET}\n"

		# Get target from user, Nmap targets
		subl bash-results.txt
		printf "Enter a target from the arp-scan results\nEnter the Target\n"
		read Target
		printf "${YELLOW}Nmap scan for${RESET}\n"$Project >> bash-results.txt
		printf "==============================================\n" >> bash-results.txt
		nmap -sS -sV -A -O $Target >> bash-results.txt
	fi

# Exit the script
fi
