import time
import lcm
import sqlite3
from bodata import boat_data


boat_db = "/home/pi/MARC2023Demo/demo/boat.db"
# boat_db = "/home/ar/MARC2023Demo/demo/boat.db"
with sqlite3.connect(boat_db) as c:
    c.execute("""CREATE TABLE IF NOT EXISTS actuation_power_data (act_power decimal, time int);""")
    c.execute("""CREATE TABLE IF NOT EXISTS computation_power_data (comp_power decimal, time int);""")
    # c.execute("""CREATE TABLE IF NOT EXISTS angle_data (angle decimal, time int);""")
    # c.execute("""CREATE TABLE IF NOT EXISTS speed_data (speed decimal, time int);""")

    c.execute("""DROP TABLE actuation_power_data;""")
    c.execute("""CREATE TABLE IF NOT EXISTS actuation_power_data (act_power decimal, time int);""")
    c.execute("""DROP TABLE computation_power_data;""")
    c.execute("""CREATE TABLE IF NOT EXISTS computation_power_data (comp_power decimal, time int);""")

    # c.execute("""DROP TABLE angle_data;""")
    # c.execute("""CREATE TABLE IF NOT EXISTS angle_data (angle decimal, time int);""")
    # c.execute("""DROP TABLE speed_data;""")
    # c.execute("""CREATE TABLE IF NOT EXISTS speed_data (speed decimal, time int);""")

def my_handler(channel, data):
    msg = boat_data.decode(data)
    try:
        with sqlite3.connect(boat_db) as c:
            c.execute('''INSERT into actuation_power_data VALUES (?,?);''',(msg.act_power,time.time()))
            c.execute('''INSERT into computation_power_data VALUES (?,?);''',(msg.comp_power,time.time()))

            # c.execute('''INSERT into angle_data VALUES (?,?);''',(msg.angle,time.time()))
            # c.execute('''INSERT into speed_data VALUES (?,?);''',(msg.speed,time.time()))
    except:
        print("database does not exist")
    return

lc = lcm.LCM()
subscription = lc.subscribe("BOATDATA", my_handler)

while True:
    lc.handle()
