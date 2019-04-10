//
//  RemoveLinkedListElements.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/4/10.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    
    var headModified = head
    var node = head
    var prev: ListNode? = nil
    
    while node != nil {
        
        if node?.val == val {
            if prev == nil {
                headModified = node?.next
            } else {
                prev?.next = node?.next
            }
        } else {
            prev = node
        }
        
        node = node?.next
    }
    
    return headModified
}
