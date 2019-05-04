echo "For help, see the README "
echo ""
echo "Enter Project Name"
read Project

# Create Project Folder
#echo "Creating Project Folder"
#mkdir $Project 

echo "Running arp-scan"
arp-scan -l >> /$Project/$Project"_arp.txt"

echo "arp-scan results in /local/arp.txt"
echo "Enter the Target, for all in arp.txt, Enter 'All'"
