//
//  ReverseInteger.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/13.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func reverse(_ x: Int) -> Int {
    var n = x
    var reversed = 0
    while n != 0 {
        let lastNumber = n % 10
        reversed = reversed * 10 + lastNumber
        n = n / 10
        if abs(reversed) > INT32_MAX { return 0 }
    }
    return reversed
}
