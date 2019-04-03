//
//  LinkedListCycle.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/4/3.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func hasCycle(head: ListNode) -> Bool {
    var slow: ListNode? = head
    var fast: ListNode? = head
    
    while fast != nil && fast!.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow == fast {
            return true
        }
    }
    
    return false
}
