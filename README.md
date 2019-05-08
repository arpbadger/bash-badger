** Disclaimer: I know this is bare bones, this is very much a work in progress. Scripts run as in in main branch, gui interface in the feature branch are still iffy.

Bash Badger is a set of basic bash scripts for automating CTF scanning. At its core, the tools are a simple one step process for running all the basic CTF tools that are pre loaded on Kali Linux. These tools include arp-scan, nmap, and dirb. arp-scan is used for target discovery, nmap for port and service enumeration, and dirb for webserver enumeration. Currently, there are two scripts bash-badger and enum-badger

## Installation
First, Git Clone or install the script to your attack machine. Second, in order to run the script you will need to change the permissions of the file. Easiest way to do this is to enter the script folder and (chmod 777 bash-badger.sh enum-badger.sh). Last, run the scripts in the terminal with ./bash-badger.sh  or ./enum-badger.sh

# Bash Badger
Bash Badger will run through these programs step by step, dumping the results to a neatly formatted text file. Taking minimal intake from the user, this tool aims at automating the boring but often repeated steps taken in a boot to root CTF event, allowing players to spend less time on the tedious steps. 

## Commands 
The syntax for bash badger is ./bash-badger.sh [command]. It only takes one argument. The current options are listed below.

    --full | run all 3 scans (arp-scan,nmap, dirb)
    --nordirb | don't run dirb
    --about| display information about the script
    --help | dispaly this help page 

## Configuration
The script needs one modification to work out of the box. By default, the script opens up the saved txt documentation for your scans in sublime text (sorry this is a small personal text and sublime rules). If you don't use sublme text, edit the script with the name of your editor where you see "subl". By default, Kali linux has leafpad installed, so you can replace it with "leafpad"

# Enum Badger 
Enum Badger is a script for enumerating a linux target machine. It is intended to be used after you have gained access to the target machine. The script currently only takes ssh credentials, but this will be expanded in further releases. 

## Commands 
The syntax for enum badger is ./enum-badger.sh [command]. It only takes one argument. The current options are listed below.

        --help | Display the help page"
        --local | Run from the attack machine, and ssh into the target machine
        --target | Run from the target machine (you must get this into the target machine and get sudo priviledges

