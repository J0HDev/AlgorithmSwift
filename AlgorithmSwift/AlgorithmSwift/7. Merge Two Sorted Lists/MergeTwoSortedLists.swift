//
//  MergeTwoSortedLists.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/18.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

/**
 * Definition for singly-linked list.
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 != nil && l2 == nil { return l1 }
    if l2 != nil && l1 == nil { return l2 }

    var sortedHead: ListNode? = nil
    var dummy = sortedHead
    var head_left = l1
    var head_right = l2

    while head_left != nil && head_right != nil {
        var next: ListNode?
        
        if head_left!.val < head_right!.val {
            next = head_left
            head_left = head_left!.next
        } else {
            next = head_right
            head_right = head_right!.next
        }
        
        if sortedHead == nil {
            sortedHead = next
            dummy = sortedHead
        } else {
            dummy!.next = next
            dummy = next
        }
    }
    
    if head_left != nil {
        dummy?.next = head_left
    } else {
        dummy?.next = head_right
    }
    
    return sortedHead
}
