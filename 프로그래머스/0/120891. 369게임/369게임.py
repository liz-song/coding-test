# order에 있는 숫자들 for문으로 돌리고, 3의 배수 나오면 answer에 하나씩 카운트
def solution(order):
    answer = 0
    clap_num = ['3','6','9']
    for i in str(order):
        if i in clap_num:
            answer += 1
    return answer