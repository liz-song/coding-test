# n을 slice로 나누어서 나머지가 0이면 몫 return, 나머지가 1이상이면 몫에 +1 한 값 return
def solution(slice, n):
    answer = n // slice
    if n % slice == 0:
        return answer
    else:     
        return answer + 1
