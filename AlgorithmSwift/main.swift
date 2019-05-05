//
//  main.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/12.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Foundation

// 1. two sum
//twoSum([3, 2, 4], 6)

//
//reverse(1234567893)

// 3.
//isPalindromeBetter(1003001)

// 4.
//romanToInt("MCMXCIV")

// 5.
//longestCommonPrefixV2(["flower","flow","flight"])

// 6
//isValid("[]()")

// 7
//let l1 = ListNode(1)
//let l2 = ListNode(3)
//let l3 = ListNode(5)
//let l4 = ListNode(7)
//let l5 = ListNode(9)
//
//let l6 = ListNode(2)
//let l7 = ListNode(4)
//let l8 = ListNode(6)
//let l9 = ListNode(8)
//let l10 = ListNode(10)
//let l11 = ListNode(11)
//
//l1.next = l2
//l2.next = l3
//l3.next = l4
//l4.next = l5
//
//l6.next = l7
//l7.next = l8
//l8.next = l9
//l9.next = l10
//l10.next = l11

//var sorted = mergeTwoLists(l1, l6)
//while sorted != nil {
//    print(sorted?.val ?? -1)
//    sorted = sorted?.next
//}

// 8.
//var arr = [1,2,2,1]
//removeElement(&arr, 3)
//print(arr)

// 9.
//print(strStr("mississippi", "sippia"))

// 10.
//searchInsert([1,3,5,6], 7);

// 11
//lengthOfLastWordV2("a ")


// 12
//let l1 = ListNode(1)
//let l2 = ListNode(2)
//let l3 = ListNode(2)
//let l4 = ListNode(3)
//let l5 = ListNode(4)
//l1.next = l2
//l2.next = l3
//l3.next = l4
//l4.next = l5
//
//var node = deleteDuplicates(l1)
//while node != nil {
//    print(node?.val ?? -1)
//    node = node?.next
//}

// 13
//var nums1 = [4,5,6,0,0,0]
//merge(&nums1, 3, [1,2,3], 3)

// 14
//var root = TreeNode(1)
//var left = TreeNode(2)
//var right = TreeNode(3)
//root.left = left
//root.right = right
//
//var root2 = TreeNode(1)
//var left2 = TreeNode(2)
//var right2 = TreeNode(12)
//root2.left = left2
//root2.right = right2
//
//print(isSameTree(root, root2))

// 15.
//var array = [2,3,1,3,5,2,1,5]
//array.quick()
//print(array)

// 16.
//var root = TreeNode(1)
//
//print(isSymmetric(root))

// 15
//var root = TreeNode(1)
//var left = TreeNode(2)
//var right = TreeNode(3)
//root.left = left
//root.right = right
//
//print(maxDepth(root))


// 16.
//print(climbStairs(6))


// 14
//func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
//    guard let root = root else { return [[Int]]() }
//
//    var numbers = [[Int]]()
//    var line = [Int]()
//
//    func toArray(_ left: TreeNode?, _ right: TreeNode?) -> (left: Int?, right: Int?) {
//        if left == nil && right == nil { return (nil, nil) }
//
//        let a1 = toArray(left?.left, left?.right)
//        let a2 = toArray(right?.left, right?.right)
//
//        var line = [Int]()
//
//        if let a1left = a1.left {
//            line.append(a1left)
//        }
//        if let a1right = a1.right {
//            line.append(a1right)
//        }
//        if let a2left = a2.left {
//            line.append(a2left)
//        }
//        if let a2right = a2.right {
//            line.append(a2right)
//        }
//        if line.count > 0 {
//            numbers.append(line)
//        }
//
//        return (left?.val, right?.val)
//    }
//
//    let a = toArray(root.left, root.right)
//    if let left = a.left {
//        line.append(left)
//    }
//    if let right = a.right {
//        line.append(right)
//    }
//    if line.count > 0 {
//        numbers.append(line)
//    }
//    numbers.append([root.val])
//
//    return numbers
//}



//func printBinaryTree(_ root: TreeNode?) {
//    if root == nil { return }
//    print(root?.val ?? "nil")
//    printBinaryTree(root?.left)
//    printBinaryTree(root?.right)
//}
//
//var root        = TreeNode(0)
//var left        = TreeNode(2)
//var right       = TreeNode(4)
//var left_left   = TreeNode(1)
//var left_right  = TreeNode(3)
//var right_left  = TreeNode(3)
//var right_right = TreeNode(-1)
//
//root.left = left
//root.right = right
//left.left = left_left
//left.right = left_right
//right.left = right_left
//right.right = right_right
//
//print(levelOrderBottom(root))


// 15.
//let n1 = ListNode(1)
//let n2 = ListNode(2)
//let n3 = ListNode(3)
//let n4 = ListNode(4)
//let n5 = ListNode(5)
//
//n1.next = n2
//n2.next = n3
//n3.next = n4
//n4.next = n5
//n5.next = n2
//
//print(hasCycle(head: n1))

// 16.
//let stack = MinStack()
//stack.push(4)
//stack.push(5)
//stack.push(-2)
//stack.push(1)
//stack.pop()
//stack.pop()
//
//print(stack.top())
//print(stack.getMin())


// 22.
//let numbers = [2, 4 , 5 , 6, 4, 6, 6, 6]
//print(twoSum2(numbers, 10))

// 23.
//print(convertToTitle(28))

// 24.
//print(majorityElement(numbers))

// 25.
//var deque = MyCircularDeque(3)
//print(deque.insertLast(1))
//print(deque.insertLast(2))
//print(deque.insertFront(3))
//print(deque.insertFront(4))
//print(deque.getRear())
//print(deque.isFull())
//print(deque.deleteLast())
//print(deque.insertFront(4))
//print(deque.getFront())
