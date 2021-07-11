import math

for i in range(25):
    pitch = str(round(math.pow(2.0, (i - 12) / 12), 3))
    print("execute if score #pitch temp matches " + str(i) + " run playsound bells:custom.bell record @a ~ ~ ~ 1.0 " + pitch)