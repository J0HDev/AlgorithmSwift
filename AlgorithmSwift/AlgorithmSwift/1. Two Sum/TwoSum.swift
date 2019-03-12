//
//  TwoSum.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/12.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int: Int]()
    var res = [Int]()
    for i in 0..<nums.count {
        map[nums[i]] = i
    }
    for i in 0..<nums.count {
        let dis = target - nums[i]
        if let f = map[dis] {
            if f == i { continue }
            res.append(i)
            res.append(f)
            break
        }
    }
    return res
}
