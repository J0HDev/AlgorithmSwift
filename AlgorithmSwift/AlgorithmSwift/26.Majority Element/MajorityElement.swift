//
//  MajorityElement.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/4/12.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func majorityElement(_ nums: [Int]) -> Int {
    
    var countMap = [Int: Int]()
    var max = nums.count / 2
    var result = 0
    var isFound = false
    
    nums.forEach { (n) in
        if let count = countMap[n] {
            countMap[n] = count + 1
            if count + 1 >= max {
                result = n
                max = count + 1
                isFound = true
            }
        }
        else {
            countMap[n] = 1
        }
    }
    
    if !isFound {
        if let first = nums.first {
            result = first
        }
    }
    
    
    return result
}
