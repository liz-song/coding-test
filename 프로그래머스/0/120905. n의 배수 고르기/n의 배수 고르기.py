# num_list의 원소들 하나씩 n으로 나눠서, 나머지가 0이라면 해당 숫자를 빈 리스트에 append
def solution(n, numlist):
    answer = []
    for i in numlist:
        if i % n == 0:
            answer.append(i)
    return answer