# 
def solution(my_string):
    numbers=['1','2','3','4','5','6','7','8','9']
    answer = 0
    for i in my_string:
        if i in numbers:
            answer += int(i)
    return answer