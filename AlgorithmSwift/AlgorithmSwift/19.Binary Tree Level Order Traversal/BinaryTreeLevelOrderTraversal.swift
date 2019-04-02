//
//  BinaryTreeLevelOrderTraversal.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/4/2.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

class Queue<Element> : NSObject  {
    private var array = [Element]()
    
    public func enQueue(_ val: Element) {
        array.append(val)
    }
    
    public func deQueue() -> Element? {
        let elem = array.first
        if elem != nil {
            array.remove(at: 0)
        }
        return elem
    }
    
    public func deQeueuAll() -> [Element]? {
        var elems = [Element]()
        while !isEmptyQueue() {
            if let elem = deQueue() {
                elems.append(elem)
            }
        }
        return elems
    }
    
    public func isEmptyQueue() -> Bool {
        return array.count == 0
    }
}

func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    guard let node = root else { return [[Int]]() }
    var numbers = [[Int]]()
    let queue = Queue<TreeNode>()
    queue.enQueue(node)
    
    while !queue.isEmptyQueue() {
        if let elems = queue.deQeueuAll() {
            var line = [Int]()
            for elem in elems {
                line.append(elem.val)
                if let left = elem.left {
                    queue.enQueue(left)
                }
                if let right = elem.right {
                    queue.enQueue(right)
                }
            }
            numbers.insert(line, at: 0)
        }
    }
    
    return numbers
}
