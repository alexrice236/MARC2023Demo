import lcm
from bodata import boat_data
import time

lc = lcm.LCM("udpm://239.255.76.67:7667?ttl=100")

while True:
    msg = boat_data()
    msg.act_power = 1
    msg.comp_power = 2
    msg.angle = 3
    msg.speed = 4
    lc.publish("BOATDATA", msg.encode())
    time.sleep(.1)