Given a linked list, swap every two adjacent nodes and return its head. You must solve the problem without modifying the values in the list's nodes (i.e., only nodes themselves may be changed.)
Example 1:
Input: head = [1,2,3,4]
Output: [2,1,4,3]

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def swapPairs(self, head: ListNode | None) -> ListNode | None:
        dummy = ListNode(0)
        dummy.next = head

        curr = dummy

        while curr.next and curr.next.next:
            first = curr.next
            second = curr.next.next

            first.next = second.next
            second.next = first
            curr.next = second

            curr = first

        return dummy.next
