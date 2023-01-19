import RPi.GPIO as GPIO
import time
import lcm
import board
import busio
from adafruit_ina219 import ADCResolution, BusVoltageRange, INA219
from bodata import boat_data

lc = lcm.LCM()
i2c = busio.I2C(board.SCL, board.SDA)

act_sensor = INA219(i2c)
act_sensor.bus_adc_resolution = ADCResolution.ADCRES_12BIT_16S
act_sensor.bus_voltage_range = BusVoltageRange.RANGE_16V

comp_sensor = INA219(i2c)
comp_sensor.bus_adc_resolution = ADCResolution.ADCRES_12BIT_16S
comp_sensor.bus_voltage_range = BusVoltageRange.RANGE_16V

while True:
    msg = boat_data()
    msg.act_power = act_sensor.power
    msg.comp_power = comp_sensor.power
    msg.angle = 0
    msg.speed = 0
    lc.publish("BOATDATA", msg.encode())
    time.sleep(.1)