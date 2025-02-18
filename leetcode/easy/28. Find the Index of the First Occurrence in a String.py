class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        if needle in haystack:
            return haystack.find(needle)
        return -1          

# neeedle이 첫번째로 haystack안에 존재하는 인덱스 찾기a