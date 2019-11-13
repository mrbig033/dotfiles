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

counter = 0

while ANSWER != PASSWORD:
    ANSWER = getpass.getpass(
        f"\n [{counter}] Please type the correct password:\n "
    )
    counter += 1
    os.system("clear")

os.system("sudo chmod 775 ~/e/init.el")
os.system("sudo chmod 775 ~/e/init.org")
os.system("sudo chmod 775 ~/scripts/python/lock-emacs.py")
os.system("sudo chmod 775 ~/scripts/python/unlock-emacs.py")

print("\n Emacs Unlocked\n")

exit()
