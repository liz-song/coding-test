# money를 5500으로 나눴을 때의 몫이 answer라는 빈 리스트의 첫째 원소로, money - 첫째 원소 * 5500 의 값이 둘째 원소로 
def solution(money):
    answer = []
    cups = money // 5500
    answer.append(cups)
    money_left = money - cups * 5500 
    answer.append(money_left)
    return answer