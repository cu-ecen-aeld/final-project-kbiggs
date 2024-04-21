
def main():
    print("hello from the rasp pi!")
    t_sensor_fd = open("/dev/aht20")
    
    print(t_sensor_fd.read())
        


if __name__ == "__main__":
    main()
