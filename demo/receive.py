import lcm
from bodata import boat_data


def my_handler(channel, data):
    msg = boat_data.decode(data)
    print(msg.act_power)
    print(msg.comp_power)
    print(msg.angle)
    print(msg.speed)

lc = lcm.LCM()
subscription = lc.subscribe("BOATDATA", my_handler)

while True:
    lc.handle()