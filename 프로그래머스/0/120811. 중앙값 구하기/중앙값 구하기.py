# array 정렬한 다음에, len(array)를 2로 나눈 값을 인덱스로 하는 값 반환(짝수 케이스는 상관없음. 제한사항에 나옴)
def solution(array):
    array.sort()
    answer = array[len(array) // 2]
    return answer