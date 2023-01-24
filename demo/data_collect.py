import time
import lcm
import sqlite3
from bodata import boat_data


#power_db = "/home/pi/MARC2023Demo/demo/power.db"
power_db = "/home/ar/MARC2023Demo/demo/power.db"
with sqlite3.connect(power_db) as c:
    c.execute("""CREATE TABLE IF NOT EXISTS actuation_power_data (act_power decimal, time int);""")
    c.execute("""CREATE TABLE IF NOT EXISTS computation_power_data (comp_power decimal, time int);""")
    c.execute("""DROP TABLE actuation_power_data;""")
    c.execute("""CREATE TABLE IF NOT EXISTS actuation_power_data (act_power decimal, time int);""")
    c.execute("""DROP TABLE computation_power_data;""")
    c.execute("""CREATE TABLE IF NOT EXISTS computation_power_data (comp_power decimal, time int);""")

def my_handler(channel, data):
    msg = boat_data.decode(data)
    try:
        with sqlite3.connect(power_db) as c:
            c.execute('''INSERT into actuation_power_data VALUES (?,?);''',(msg.act_power,time.time()))
            c.execute('''INSERT into computation_power_data VALUES (?,?);''',(msg.comp_power,time.time()))
    except:
        print("database does not exist")
    return

lc = lcm.LCM()
subscription = lc.subscribe("BOATDATA", my_handler)

while True:
    lc.handle()
