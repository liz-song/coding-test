# price가 어느 기준에 부합하는지 if문, return 값에 %붙여서
def solution(price):
    if price >= 100000 and price < 300000:
        return int(price * 0.95)
    if price >= 300000 and price < 500000:
        return int(price * 0.9)
    if price >= 500000:
        return int(price * 0.8)
    else:
        return int(price)
