# numbers 돌면서 *2한 값을 answer에 append
def solution(numbers):
    answer = []
    for i in numbers:
        twice = i * 2
        answer.append(twice)
    return answer