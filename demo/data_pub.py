import RPi.GPIO as GPIO
import smbus #import SMBus module of I2C
import time
import lcm
import board
import busio
from adafruit_ina219 import ADCResolution, BusVoltageRange, INA219
from bodata import boat_data

lc = lcm.LCM()

i2c_bus = board.I2C()
comp_sensor = INA219(i2c_bus, 0x40)
act_sensor = INA219(i2c_bus, 0x41)

#configure to measure up to 32V and 1A, will change to 16V later
comp_sensor.set_calibration_32V_1A()
act_sensor.set_calibration_32V_2A()

#change configuration to use 32 samples averaging for both bus voltage and shunt voltage
comp_sensor.bus_adc_resolution = ADCResolution.ADCRES_12BIT_32S
comp_sensor.shunt_adc_resolution = ADCResolution.ADCRES_12BIT_32S
act_sensor.bus_adc_resolution = ADCResolution.ADCRES_12BIT_32S
act_sensor.shunt_adc_resolution = ADCResolution.ADCRES_12BIT_32S
#change voltage range to 16V
comp_sensor.bus_voltage_range = BusVoltageRange.RANGE_16V
act_sensor.bus_voltage_range = BusVoltageRange.RANGE_16V

# #some MPU6050 Registers and their Address
# PWR_MGMT_1   = 0x6B
# SMPLRT_DIV   = 0x19
# CONFIG       = 0x1A
# GYRO_CONFIG  = 0x1B
# INT_ENABLE   = 0x38
# ACCEL_XOUT_H = 0x3B
# ACCEL_YOUT_H = 0x3D
# ACCEL_ZOUT_H = 0x3F
# GYRO_XOUT_H  = 0x43
# GYRO_YOUT_H  = 0x45
# GYRO_ZOUT_H  = 0x47


# def MPU_Init():
# 	#write to sample rate register
# 	bus.write_byte_data(Device_Address, SMPLRT_DIV, 7)
# 	#Write to power management register
# 	bus.write_byte_data(Device_Address, PWR_MGMT_1, 1)
# 	#Write to Configuration register
# 	bus.write_byte_data(Device_Address, CONFIG, 0)
# 	#Write to Gyro configuration register
# 	bus.write_byte_data(Device_Address, GYRO_CONFIG, 24)
# 	#Write to interrupt enable register
# 	bus.write_byte_data(Device_Address, INT_ENABLE, 1)

# def read_raw_data(addr):
# 	#Accelero and Gyro value are 16-bit
#         high = bus.read_byte_data(Device_Address, addr)
#         low = bus.read_byte_data(Device_Address, addr+1)

#         #concatenate higher and lower value
#         value = ((high << 8) | low)

#         #to get signed value from mpu6050
#         if(value > 32768):
#                 value = value - 65536
#         return value


# bus = smbus.SMBus(1) 	# or bus = smbus.SMBus(0) for older version boards
# time.sleep(1)
# Device_Address = 0x68   # MPU6050 device address

# MPU_Init()

while True:
    msg = boat_data()
    msg.act_power = act_sensor.power
    msg.comp_power = comp_sensor.power

    # acc_y = read_raw_data(ACCEL_YOUT_H)

    # gyro_z = read_raw_data(GYRO_ZOUT_H)

    # Ay = acc_y/16384.0
    # Gz = gyro_z/131.0



    msg.angle = 0
    msg.speed = 0   #TODO: integrate accel to get speed
    
    lc.publish("BOATDATA", msg.encode())
    time.sleep(.1)