//
//  LongestCommonPrefix.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/16.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

// 自己取前缀
func longestCommonPrefix(_ strs: [String]) -> String {
    var shortest = ""
    guard let first = strs.first else { return shortest }
    shortest = first
    
    for string in strs {
        if string.count < shortest.count {
            shortest = string
        }
    }
    
    var prefix = ""
    var stop = false
    
    for i in 0..<shortest.count {
        if stop { break }
        prefix = String(shortest.substring(to: shortest.index(shortest.startIndex, offsetBy: i + 1)))
        for string in strs {
            if string == shortest { continue }
            let current = String(string.substring(to: string.index(string.startIndex, offsetBy: i + 1)))
            if current != prefix {
                stop = true
                if prefix.count > 0 { prefix.removeLast() }
                break
            }
        }
    }
    
    return prefix
}

// 用系统的方法取前缀
func longestCommonPrefixV2(_ strs: [String]) -> String {
    var shortest = ""
    guard let first = strs.first else { return shortest }
    shortest = first
    
    for string in strs {
        if string.count < shortest.count {
            shortest = string
        }
    }
    
    var prefix = ""
    var stop = false
    
    for i in 0..<shortest.count {
        if stop { break }
        prefix = String(shortest.prefix(i+1))
        for string in strs {
            if string == shortest { continue }
            if !string.hasPrefix(prefix) {
                stop = true
                if prefix.count > 0 { prefix.removeLast() }
                break
            }
        }
    }
    
    return prefix
}
