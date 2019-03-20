//
//  Search Insert Position.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/20.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var indexOfInsert = -1
    var location = -1
    
    for i in 0..<nums.count {
        if nums[i] == target {
            location = i
            break
        }else if nums[i] > target {
            indexOfInsert = i
            break
        }
    }
    
    if location == -1 && indexOfInsert == -1 {
        return nums.count
    } else if location == -1 {
        return indexOfInsert
    } else {
        return location
    }
}
