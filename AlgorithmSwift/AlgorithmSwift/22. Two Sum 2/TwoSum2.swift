//
//  TwoSum2.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/4/8.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
    var maps = [Int: Int]()
    var rels = [Int]()
    
    for n in 0..<numbers.count {
        maps[numbers[n]] = n+1
    }
    for n in 0..<numbers.count {
        let val = target - numbers[n]
        if let f = maps[val] {
            if n < f {
                rels.append(n+1)
                rels.append(f)
            } else {
                rels.append(f)
                rels.append(n+1)
            }
            break
        }
    }
    return rels
}
