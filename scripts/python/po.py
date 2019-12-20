#!/usr/bin/env python3

import sys
from os import system
from os import environ
from random import randint
from datetime import datetime

system("clear")
sys.tracebacklimit = 0

path = f"{environ['HOME']}/.po.csv"


def choose_poetry():
    time = datetime.now()
    time_str = time.strftime("%d/%m/%y, %H:%M")
    vol = randint(1, 2)
    vol1 = randint(1, 1120)
    vol2 = randint(1, 411)
    if vol == 1:
        return f"{time_str}, Volume {vol}, Poesia {vol1}\n"

    else:
        return f"{time_str}, Volume {vol}, Poesia {vol2}\n"


with open(path, "a") as file:
    file.write(choose_poetry())
