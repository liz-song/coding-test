# sort한 다음에 마지막 원소와 나머지 두 원소의 합 비교하기
def solution(sides):
    answer = 0
    sides.sort()
    twosum = sides[0] + sides[1]
    if sides[-1] >= twosum:
        return 2
    else: 
        return 1
    return answer