//
//  MaximumSubarray.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/21.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func lengthOfLastWord(_ s: String) -> Int {
    var sub = s.split(separator: " ")
    if let last = sub.last {
        return last.count
    } else {
        return 0
    }
}

func lengthOfLastWordV2(_ s: String) -> Int {
    var count = 0
    for char in s.reversed() {
        if count == 0 && char == " " { continue }
        if char == " " {
            return count
        } else {
            count = count + 1
        }
    }
    return count
}
