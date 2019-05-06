# bash-badger
An arpbadger tool 

## Overview 
Bash Badger is a basic bash script for automating CTF scanning. At its core, the tool is a simple one step process for running all the basic CTF tools that are pre loaded on Kali Linux. These tools include arp-scan, nmap, and dirb. arp-scan is used for target discovery, nmap for port and service enumeration, and dirb for webserver enumeration. Bash Badger will run through these programs step by step, dumping the results to a neatly formatted text file. Taking minimal intake from the user, this tool aims at automating the boring but often repeated steps taken in a boot to root CTF event, allowing players to spend less time on the tedious steps. 

## Running Bash Badger
First, Git Clone or install the script to your attack machine. Second, in order to run the script you will need to change the permissions of the file. Easiest way to do this is to enter the script folder and (chmod 777 bash-badger.sh). Last, run the script in the terminal with ./bash-badger.sh 

## Configuration
The script needs one modification to work out of the box. By default, the script opens up the saved txt documentation for your scans in sublime text (sorry this is a small personal text and sublime rules). If you don't use sublme text, edit the script with the name of your editor where you see "subl". By default, Kali linux has leafpad installed, so you can replace it with "leafpad"

## Future Development 
This tool was created as a learning project for bash scripting. That being said, I think this has some potential for future CTF events. I will continue to develop this and add more tools, features, and make it more accomondating to various operating enviorments

## Contibutions 
Feel free to add. 
