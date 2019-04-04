//
//  MinStack.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/4/4.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

class MinStack {
    
    /** initialize your data structure here. */
    private var data = [Int]()
    private var mins = [Int]()
    
    init() {
        
    }
    
    func push(_ x: Int) {
        if let min = mins.last {
            if x < min {
                mins.append(x)
            } else {
                mins.append(min)
            }
        } else {
            mins.append(x)
        }
        data.append(x)
    }
    
    func pop() {
        data.removeLast()
        mins.removeLast()
    }
    
    func top() -> Int? {
        guard let top = data.last else { return nil }
        return top
    }
    
    func getMin() -> Int? {
        guard let min = mins.last else { return nil }
        return min
    }
}
