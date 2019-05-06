# bash-badger
A simple bash script for automating CTF scans


# Overview 
Bash badger is a script for automating some of the small scans that are typically done at the beggining of at CTF boot to root event. By running bash badger, you can quickly work through these scans and add them to a neatly organized text document for later reference.

# Running Bash Badger
First, Git Clone or install the script to your attack machine. Second, in order to run the script you will need to change the permissions of the file. Easiest way to do this is to enter the script folder and (chmod 777 bash-badger.sh). Last, run the script in the terminal with ./bash-badger.sh 

# Configurations 
The script needs one modification to work out of the box. By default, the script opens up the saved txt documentation for your scans in sublime text (sorry this is a small personal text and sublime rules). If you don't use sublme text, edit the script with the name of your editor where you see "subl". By default, Kali linux has leafpad installed, so you can replace it with "leafpad"

# Future Development 
This tool was created as a learning project for bash scripting. That being said, I think this has some potential for future CTF events. I will continue to develop this and add more tools, features, and make it more accomondating to various operating enviorments

# Contibutions 
Feel free to add. 
