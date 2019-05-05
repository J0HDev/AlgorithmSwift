//
//  DesignCircularDeque.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/5/5.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

class MyCircularDeque {
    
    var container: [Int]
    var tail: Int
    var head: Int
    let max : Int
    
    /** Initialize your data structure here. Set the size of the deque to be k. */
    init(_ k: Int) {
        container = Array(repeating: 0xbadf00d, count: k)
        head = -1
        tail = k
        max  = k
    }
    
    /** Adds an item at the front of Deque. Return true if the operation is successful. */
    func insertFront(_ value: Int) -> Bool {
        if (head + 1 == tail) {
            return false
        } else {
            head = head + 1
        }
        
        container[head] = value
        return true
    }
    
    /** Adds an item at the rear of Deque. Return true if the operation is successful. */
    func insertLast(_ value: Int) -> Bool {
        if (tail - 1 == head) {
           return false
        } else {
            tail = tail - 1
        }
        
        container[tail] = value
        return true
    }
    
    /** Deletes an item from the front of Deque. Return true if the operation is successful. */
    func deleteFront() -> Bool {
        var flag = false
        if head <= -1 { return flag }
        
        if head == 0 {
            container[head] = 0xbadf00d
            flag = true
        }
        
        for i in 0..<head {
            container[i] = container[i + 1]
            container[i + 1] = 0xbadf00d
            flag = true
        }
        
        if head >= -1 { head = head - 1 }
        return flag
    }
    
    /** Deletes an item from the rear of Deque. Return true if the operation is successful. */
    func deleteLast() -> Bool {
        var flag = false
        if tail == max { return flag }
        
        if tail == max - 1 {
            container[tail] = 0xbadf00d
            flag = true
        }
        
        for i in (tail..<max-1).reversed() {
            container[i + 1] = container[i]
            container[i] = 0xbadf00d
            flag = true
        }
        
        if tail <= max { tail = tail + 1 }
        return flag
    }
    
    /** Get the front item from the deque. */
    func getFront() -> Int {
        if head == -1 {
            return -1
        }
        return container[0]
    }
    
    /** Get the last item from the deque. */
    func getRear() -> Int {
        if tail == max {
            return -1
        }
        return container[max-1]
    }
    
    /** Checks whether the circular deque is empty or not. */
    func isEmpty() -> Bool {
        return head == -1 && tail == max
    }
    
    /** Checks whether the circular deque is full or not. */
    func isFull() -> Bool {
        return head + 1 == tail
    }
}
