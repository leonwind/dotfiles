# check every 10 seconds if internal / second battery is below 10 percent
# notify user by sending an i3-nagbar message

from subprocess import PIPE, run
from time import sleep

command = ["acpi", "-b"]
showed_msg = False

while(True):
    output = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True)

    # extract only percentage of internal / second battery
    internal_percentage = int(output.stdout.split(" ", 4)[3][:-2])

    if (internal_percentage <= 20 and not showed_msg):
        run(["i3-nagbar", "-m", "Battery is very low"])
        showed_msg = True

    if (internal_percentage > 20):
        showed_msg = False

    sleep(10)
