# 숫자 리스트 만들어서 for 문 돌려서 있는지 없는지 확인한 후에 int로 변환해서 append
def solution(my_string):
    answer = []
    nums = ['0','1','2','3','4','5','6','7','8','9']
    for i in my_string:
        if i in nums:
            answer.append(int(i))
    answer.sort()
    return answer