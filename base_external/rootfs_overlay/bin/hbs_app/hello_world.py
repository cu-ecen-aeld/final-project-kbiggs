
import gpiozero
import RPi.GPIO as GPIO
import time

LED_1 = 27
LED_2 = 22
LED_3 = 4

def init_leds():
    # Number IO pins based on Broadcom SOC pin numbers
    GPIO.setmode(GPIO.BCM)
    # Setup GPIO as output channels
    GPIO.setup(LED_1, GPIO.OUT)
    GPIO.setup(LED_2, GPIO.OUT)
    GPIO.setup(LED_3, GPIO.OUT)
    # Initialize all LEDs to OFF
    GPIO.output(LED_1, GPIO.LOW)
    GPIO.output(LED_2, GPIO.LOW)
    GPIO.output(LED_3, GPIO.LOW)

# Set a specified LED
def trigger_led(led):
    GPIO.output(led, GPIO.HIGH)
    time.sleep(2)
    GPIO.output(led, GPIO.LOW)

def main():
    init_leds()
    print("hello from the rasp pi!")
    while True:
        print("LED 1")
        trigger_led(LED_1)
        print("LED 2")
        trigger_led(LED_2)
        print("LED 3")
        trigger_led(LED_3)


if __name__ == "__main__":
    main()