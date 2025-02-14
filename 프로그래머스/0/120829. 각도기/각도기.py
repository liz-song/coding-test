def solution(angle):
    if angle == 180:
        return 4
    if angle > 90 and angle < 180:
        return 3
    if angle == 90:
        return 2
    else:
        return 1
    return answer