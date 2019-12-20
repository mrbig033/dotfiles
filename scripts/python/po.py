#!/usr/bin/env python3

from os import environ
from random import randint


def randomize_poetries():
    vol = randint(1, 2)
    vol1 = randint(1, 1120)
    vol2 = randint(1, 411)
    if vol == 1:
        return f"Vol{vol}, {vol1}\n"

    else:
        return f"Vol{vol}, {vol2}\n"


def write_poetries():
    path = f"{environ['HOME']}/org/Data/po.org"
    for poetry in range(1, 51):
        with open(path, "a") as file:
            file.write(f"** TODO {poetry:03}: {randomize_poetries()}")
    print(f"Random poetries written to {path}")


write_poetries()
