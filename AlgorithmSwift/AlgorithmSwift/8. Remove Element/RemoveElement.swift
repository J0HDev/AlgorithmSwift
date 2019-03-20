//
//  RemoveElement.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/19.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    guard nums.count > 0 else { return 0 }
    
    var index = -1
    var count = 0
    var start = 0
    var stop = false
    
    while !stop {
        if index >= 0 { nums.remove(at: index) }
        for i in max(0,min(start, nums.count - 1))..<nums.count {
            if nums[i] == val {
                index = i
                start = i
                count = count + 1
                stop = false
                break
            } else {
                stop = true
            }
        }
        
        // 如果for循环没有走，说明nums.count==0，这时候退出while循环
        // 其余的情况走到这里，for循环内部已经走了else分支把stop设置为true了
        if !stop {
            if nums.count <= 0 {
                stop = true
            }
        }
    }
    return count
}
