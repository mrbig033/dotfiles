#!/usr/bin/env python3

""" Locks Emacs """

import os

os.system("clear")

input("\n Press Enter to lock Emacs\n ")

os.system("sudo chmod 000 ~/e/init.el")
os.system("sudo chmod 000 ~/e/init.org")
os.system("sudo chmod 450 ~/scripts/python/lock-emacs.py")
os.system("sudo chmod 450 ~/scripts/python/unlock-emacs.py")

print("\n Emacs Locked\n")

os.system("clear")

exit()
