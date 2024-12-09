import time as delay
s = input("Search...")
def search(s):
    while KeyboardInterrupt == True:
        delay.sleep(3)
        if " " in s == True:
            s.replace(" ", "+")
            print(f"https://google.com/search?q={s}")
        elif " " in s == False:
            print(f"https://google.com/search?q={s}")
        delay.sleep(3)
if KeyboardInterrupt == True:
    search()
elif KeyboardInterrupt == False:
    delay.sleep(while KeyboardInterrupt == False)
else:
    exit(print("ERROR CODE : 0"))

