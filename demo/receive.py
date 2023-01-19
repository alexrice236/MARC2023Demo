import lcm
from bodata import boat_data


def my_handler(channel, data):
    msg = boat_data.decode(data)
    print(msg.act_power)
    print(msg.comp_power)
    print(msg.angle)
    print(msg.speed)

lc = lcm.LCM("udpm://239.255.76.67:7667?ttl=100")
subscription = lc.subscribe("BOATDATA", my_handler)

while True:
    lc.handle()