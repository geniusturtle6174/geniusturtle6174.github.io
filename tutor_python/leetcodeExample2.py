class Solution(object):
    def test(self, a, b):
        return a + b
    def myFunction(self, n):
        """
        :type nums: int
        :rtype: int
        """
        return self.test(n, 123)

S = Solution()
print(S.myFunction(3)) # Should output 126
