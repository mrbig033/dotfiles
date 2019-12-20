#!/usr/bin/env python3

import sys
import datetime
from random import randint
from os import system, environ, name

sys.tracebacklimit = 0
system("cls" if name == "nt" else "clear")


def choose_poetry():
    time = datetime.datetime.now()
    time_str = time.strftime("%d/%m/%y, %H:%M")
    vol = randint(1, 2)
    vol1 = randint(1, 1120)
    vol2 = randint(1, 411)
    if vol == 1:
        return f"{time_str}, Volume {vol}, Poesia {vol1}\n"

    else:
        return f"{time_str}, Volume {vol}, Poesia {vol2}\n"


def generate_choices():
    day_delta = datetime.timedelta(days=1)
    start_date = datetime.date.today()
    end_date = start_date + 7 * day_delta
    for date in range((end_date - start_date).days):
        with open(f"{environ['HOME']}/.po.csv", "a") as file:
            file.write(choose_poetry())


generate_choices()
