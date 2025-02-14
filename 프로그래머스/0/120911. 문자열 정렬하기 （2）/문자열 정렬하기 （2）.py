# my_string.lower() 한 다음에, sort
def solution(my_string):
    lowerd_code = my_string.lower()
    answer = ''.join(sorted(lowerd_code))
    return answer