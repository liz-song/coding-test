# 문자열 하나씩 돌면서 해당되는 숫자에 따라 반환되는 값 answer에 더해주기
def solution(rsp):
    answer = ''
    for i in rsp:
        if i == '2':
            answer += '0'
        elif i == '0':
            answer += '5'
        else:
            answer += '2'
    return answer