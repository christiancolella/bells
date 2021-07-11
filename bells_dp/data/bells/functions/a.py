import math

def animation(t):
    return round(19.894 * math.exp(-t) * math.sin(5.236 * t), 3)

array = [0] * 60

for i in range(60):
    array[i] = animation(3.0 - i / 20.0)

print(array)