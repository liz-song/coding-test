#['a','e','i','o','u'] 하나씩 돌면서 replace
def solution(my_string):
    answer = my_string
    vowel = ['a','e','i','o','u']
    for i in vowel:
        answer = answer.replace(i,'')
    return answer