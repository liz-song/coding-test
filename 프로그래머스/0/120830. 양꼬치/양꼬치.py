# 12000 * n + 2000 * k - 2000 * n을 10으로 나눈 몫
def solution(n, k):
    service = n // 10
    answer = 12000 * n + 2000 * k - 2000 * service
    return answer