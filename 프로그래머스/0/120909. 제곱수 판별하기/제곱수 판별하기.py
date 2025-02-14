import math

def solution(n):
    sqrt = math.sqrt(n)
    if sqrt == int(sqrt):
        return 1
    else:
        return 2