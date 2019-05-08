# Bash Badger Gui
# A Gui interface for the bash badger scripts

from Tkinter import *
import subprocess as sub
import sys, os

target = ""
port = ""


def add_target():
    global target
    target = e.get()
    print target

    script = 'nmap '+target
    script1 = str(script)

    # This is the goal of this GUI, run this ./bash-badger.sh scrip
    script2 ='./bash-badger.sh'    # Not currently running, either cannot find script or does not have permission to run

    #subprocess.call(['bash',script3,script4])
    sub.call([script2], shell=True)

root = Tk()

root.title('Bash Badger')

target_label = Label(root, text = "Enter Target:")
target_label.grid(row=2, column=0)

# Create target entry feild
e = Entry(root)
e.grid(row=2, column=1)

# Create 'add target' button
b = Button(root,text='Run Nmap',command = add_target)
b.grid(row=10, column=0)


# run gui interface
root.mainloop()
