#!/usr/bin/env python3
"""
Check every 10 seconds if internal / second battery is below 15 percent
notify user by sending an i3-nagbar message
"""


from subprocess import run
from time import sleep

command = ["acpi", "-b"]
showed_msg = False

while True:
    output = run(command, capture_output=True).stdout.decode("utf-8")
    # get status of internal battery
    battery = output.split("\n")[1]
    # [3] entry is the battery with '%,'
    # [:-2] to get rid of '%,'
    status = battery.split(" ")[2][:-1]
    percentage = int(battery.split(" ")[3][:-2])
    
    if percentage <= 15 and not showed_msg and status == 'Discharging':
        run(["i3-nagbar", "-m", "Battery is very low"])
        showed_msg = True
    else:
        showed_msg = False
    
    sleep(10)
