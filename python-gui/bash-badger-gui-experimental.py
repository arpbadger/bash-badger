from tkinter import *
import subprocess as sub

# Run the basic Shell
script1='./basic_shell.sh'
script='./bash-badger.sh'
p = sub.Popen(([script]),stdout=sub.PIPE,shell=True,stderr=sub.PIPE)
#p = sub.Popen((['./','basic_shell.sh']),stdout=sub.PIPE,shell=True,stderr=sub.PIPE)
#p = sub.Popen((['./','bash-badger.sh']),stdout=sub.PIPE,shell=True,stderr=sub.PIPE)
output = p.communicate()

root = Tk()
text = Text(root)
text.pack()
text.insert(END,output)
root.mainloop()
