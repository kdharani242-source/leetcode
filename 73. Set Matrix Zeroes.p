Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.
You must do it in place.
Example 1:
Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
Output: [[1,0,1],[0,0,0],[1,0,1]]
Example 2:
Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]


class Solution:
    def setZeroes(self, matrix):
        m = len(matrix)
        n = len(matrix[0])

        firstRow = False
        firstCol = False

        # Check first row
        for j in range(n):
            if matrix[0][j] == 0:
                firstRow = True

        # Check first column
        for i in range(m):
            if matrix[i][0] == 0:
                firstCol = True

        # Mark rows and columns using first row and column
        for i in range(1, m):
            for j in range(1, n):
                if matrix[i][j] == 0:
                    matrix[i][0] = 0
                    matrix[0][j] = 0

        # Set marked rows to zero
        for i in range(1, m):
            if matrix[i][0] == 0:
                for j in range(n):
                    matrix[i][j] = 0

        # Set marked columns to zero
        for j in range(1, n):
            if matrix[0][j] == 0:
                for i in range(m):
                    matrix[i][j] = 0

        # Handle first row
        if firstRow:
            for j in range(n):
                matrix[0][j] = 0

        # Handle first column
        if firstCol:
            for i in range(m):
                matrix[i][0] = 0
