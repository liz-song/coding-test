# n을 문자열로 바꾼 다음에, 문자열 하나씩 돌면서 int로 바꿔준 다음에 answer = 0 에 더해줌
def solution(n):
    answer = 0
    new_str = str(n)
    for i in new_str:
        answer += int(i)
    return answer