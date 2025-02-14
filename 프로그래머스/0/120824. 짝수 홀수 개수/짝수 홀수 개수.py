#빈 리스트 만들고, 리스트 숫자 하나씩 돌면서 짝수인지 홀수인지 판별, 그 갯수를 빈 리스트에 append
def solution(num_list):
    answer = []
    num_count_even = 0
    num_count_odd = 0
    for i in num_list:
        if i % 2 == 0:
            num_count_even += 1
        else: 
            num_count_odd +=1
    answer.append(num_count_even)
    answer.append(num_count_odd)
        
    return answer