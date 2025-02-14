def solution(numbers):
    numbers.sort()
    num1 = numbers[-1]
    num2 = numbers[-2]
    answer = num1 * num2
    return answer