#!/usr/bin/env python3

import sys
from random import randint
from os import system, environ, name

sys.tracebacklimit = 0
system("cls" if name == "nt" else "clear")


def choose_poetry():
    vol = randint(1, 2)
    vol1 = randint(1, 1120)
    vol2 = randint(1, 411)
    if vol == 1:
        return f"Vol{vol}, {vol1}\n"

    else:
        return f"Vol{vol}, {vol2}\n"


def generate_choices():
    for poetry in range(1, 101):
        with open(f"{environ['HOME']}/Documents/.po.csv", "a") as file:
            file.write(f"{poetry:03}, {choose_poetry()}")


generate_choices()
