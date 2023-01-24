import time
import lcm
from bodata import boat_data

lc = lcm.LCM()

count = 0

while True:
    msg = boat_data()
    msg.act_power = count
    msg.comp_power = 5-count
    msg.angle = 3
    msg.speed = 4
    lc.publish("BOATDATA", msg.encode())
    time.sleep(.1)
    count += 1
    if count == 6:
        count = 0
