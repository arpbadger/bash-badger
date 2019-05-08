# Bash Badger Gui
# A Gui interface for the bash badger scripts

from Tkinter import *
import subprocess
from subprocess import call
import sys, os

target = ""
port = ""


def add_target():
    global target
    target = e.get()
    print target

    script = 'nmap 10.0.2.3'
    #script1 = target

    #subprocess.call(['bash',script3,script4])
    subprocess.call([script], shell=True)

root = Tk()

root.title('Bash Badger')

target_label = Label(root, text = "Enter Target:")
target_label.grid(row=2, column=0)

# Create target entry feild
e = Entry(root)
e.grid(row=2, column=1)

# Create 'add target' button
b = Button(root,text='Add Target',command = add_target)
b.grid(row=10, column=0)


# run gui interface
root.mainloop()
