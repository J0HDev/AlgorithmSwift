//
//  RemoveDuplicatesFromSortedList.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/23.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//
//    public init(_ val: Int) {
//     self.val = val
//     self.next = nil
//    }
//}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    let headNode = head
    var node = headNode
    while node != nil {
        while node?.val == node?.next?.val {
            node?.next = node?.next?.next
        }
        node = node?.next
    }
    return head
}
