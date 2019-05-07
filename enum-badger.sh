#! /bin/bash
#enum-badger

# A CTF automation tool for enumerating Linux Machines

# Colorized Output Settings
RESET="\033[00m"       # Normal
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success

# Print Welcome Screen
printf "\nWelcome to Enumeration Badger"

# If no aurgument is given, show options
if [ "$1" == "" ];
    then
    printf "\nNo command was given\nUsage: ./enum-badger [option]\n"
    printf "\n Commands\n"
    printf "\n--help | Display the help page"
    printf "\n--local | Run from the attack machine, and ssh into the target machine"
    printf "\n--target | Run from the target machine (you must get this into the target machine and get sudo priviledges\n\n"
    exit
    fi

# If the --help argument was given, display the help information

# If the --about argument was given, dispaly the about information

# If the --local argument was given, display the about information
if [ "$1" == "--local" ];
    then

    # Get project information, and create directories
    echo "What should we name your project folder?"
    read project
    mkdir $project
    cd $project
    touch enum-badger-results.txt
    printf "${GREEN}\nproject folder created at $PWD ${RESET}"
    printf "${GREEN}\nresults file created at $PWD+enum-badger-results.txt ${RESET}"

    # Get ssh credentials
    printf "\nWhat is the Ipv4 Address of the target machine?"
    read address
    printf "\nWhat is the SSH username for the target machine?"
    read login
    printf "\nWhat is the SSH password for then target machine?"
    read password

    # SSH into the target machine
    printfn "\nAttempting to SSH into the target machine"
    ssh $login@$address $password
    fi
