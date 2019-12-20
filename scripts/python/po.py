#!/usr/bin/env python3

import sys
from os import system
from random import randint
from datetime import datetime

system("clear")
sys.tracebacklimit = 0

time = datetime.now()
time_str = time.strftime("%d/%m/%y, %H:%M:%S")


def choose_poetry():
    vol = randint(1, 2)
    vol1 = randint(1, 1120)
    vol2 = randint(1, 411)
    if vol == 1:
        return f"Volume {vol}, Poesia {vol1}"

    else:
        return f"Volume {vol}, Poesia {vol2}"


choose_poetry()
