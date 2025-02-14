# 각 면에 대해서 n으로 나눈 몫을 곱해주면 됨 
def solution(box, n):
    width = box[0] // n
    height = box[1] // n
    depth = box[2] // n
    answer = width * height * depth
    return answer