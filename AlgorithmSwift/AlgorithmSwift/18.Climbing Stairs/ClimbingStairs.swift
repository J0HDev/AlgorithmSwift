//
//  ClimbingStairs.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/4/1.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

// 总结发现，就是一个斐波那契数列
func climbStairs(_ n: Int) -> Int {
    var i = 3
    
    var j = 1
    var k = 2
    var q = 0
    
    if n == 1 { return j }
    if n == 2 { return k }
    
    while i <= n {
        q = j + k
        j = k
        k = q
        i = i + 1
    }
    return q
}
