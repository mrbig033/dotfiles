#!/usr/bin/env python3

""" Locks Emacs """

import os
import sys
import getpass

os.system("clear")
sys.tracebacklimit = 0

os.system("clear")

ANSWER = ""

PASSWORD = "os pais trocaram algumas palavras acerbas"

while ANSWER != PASSWORD:
    ANSWER = getpass.getpass("\n Please type the correct password:\n ")
    os.system("clear")

os.system("sudo chmod 775 ~/e/init.el")
os.system("sudo chmod 775 ~/e/init.org")
os.system("sudo chmod 775 ~/scripts/python/lock-emacs.py")
os.system("sudo chmod 775 ~/scripts/python/unlock-emacs.py")

print("\n Emacs Unlocked\n")

exit()
