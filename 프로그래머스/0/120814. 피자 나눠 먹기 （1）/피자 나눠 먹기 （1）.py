# n을 7로 나누었을 때 나머지가 0이면 몫 그대로 반환, 만약 나머지가 1이상이면 몫+1
def solution(n):
    if n % 7 == 0:
        return n // 7
    else:
        return (n // 7) + 1
