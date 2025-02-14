# range(n+1) 의 숫자에 대해서 차례대로 홀수인지 판단하고, 이를 빈 리스트에 append
def solution(n):
    answer = []
    for i in range(n+1):
        if i % 2 == 1:
            answer.append(i)
    return answer