#! /bin/bash
#enum-badger


# A CTF automation tool for enumerating Linux Machines

# Print Welcome Screen 
echo "Welcome to Enumeration Badger" 

# Get project information, and create directories 
echo "What should we name your project folder?" 
read project 
mkdir $project 
cd $project
pwd | read project-directory
echo "project folder created at $project-directory"

# Get option types
