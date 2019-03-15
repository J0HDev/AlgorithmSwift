//
//  RomanToInteger.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/15.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func romanToInt(_ s: String) -> Int {
    let map = [Character("I"): 1,
               Character("V"): 5,
               Character("X"): 10,
               Character("L"): 50,
               Character("C"): 100,
               Character("D"): 500,
               Character("M"): 1000]
    
    var result = 0
    var value_pre = 0
    for char in s.reversed() {
        if let value = map[char] {
            if value >= value_pre || result == 0 {
                value_pre = value
                result = result + value
            }
            else {
                result = result - value
            }
        }
    }
    
    return result
}
