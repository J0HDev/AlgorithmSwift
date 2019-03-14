//
//  PalindromeNumber.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/14.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

// 笨蛋办法
func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else { return false }
    var flag = false
    var xs  = [Int]()
    var val = x
    while val != 0 {
        xs.append(val % 10)
        val = val / 10
    }
    var i = 0
    var j = xs.count - 1
    while i <= j {
        if xs[i] != xs[j] {
            flag = true
            break
        } else {
            i = i + 1
            j = j - 1
        }
    }
    flag = !flag
    return flag
}

// 聪明办法
// 把整数 x 反转得到 y，对比 y 是否等于 x 即可
func isPalindromeBetter(_ x: Int) -> Bool {
    guard x > 0 else { return false }
    
    var y = 0
    var t = x

    while t != 0 {
        y = y * 10 + t % 10
        t /= 10
        if y > INT32_MAX { return false } // 防止32位溢出
    }

    if x == y {
        return true
    }else {
        return false
    }
}
