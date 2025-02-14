# n이 주어졌을 때, n 이하의 숫자(for문)로 나눴을 때 나머지가 0이 아닌 값들 구하고, 세어서 return 
def solution(n):
    num_list = []
    for i in range(1,n+1):
        if n % i == 0:
            num_list.append(i)
        answer = len(num_list)
    return answer