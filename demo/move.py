from sshkeyboard import listen_keyboard
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)

GPIO.setup(5, GPIO.OUT)
GPIO.setup(6, GPIO.OUT)
GPIO.setup(12, GPIO.OUT)

GPIO.output(5, GPIO.LOW)
GPIO.output(6, GPIO.LOW)
pwm1 = GPIO.PWM(12, 400)
pwm2 = GPIO.PWM(13, 400)


def press(key):
    if key == "w":
        pwm1.start(20)
        pwm2.start(20)
    if key == "a":
        pwm2.start(20)
    if key == "d":
        pwm1.start(20)

def release(key):
    pwm1.stop(0)
    pwm2.stop(0)



while True:
    listen_keyboard(on_press=press, on_release=release)