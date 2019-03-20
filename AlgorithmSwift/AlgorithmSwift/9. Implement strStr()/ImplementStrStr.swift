//
//  ImplementStrStr.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/20.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func strStr(_ haystack: String, _ needle: String) -> Int {
    if haystack == needle { return 0 }
    guard haystack.count > 0 else { return -1 }
    guard needle.count > 0 else { return 0 }
    guard needle.count < haystack.count else { return -1 }
    guard let hay_cstirng = haystack.cString(using: .utf8) else { return -1 }
    guard let nee_cstring = needle.cString(using: .utf8) else { return -1 }
    
    var nextIndex = -1
    var j = 0
    var i = 0
    
    while i < hay_cstirng.count-1 {
        if hay_cstirng[i] == nee_cstring[j] {
            if j == nee_cstring.count - 2 {
                // 匹配到最后一个，说明子串已经匹配完了，为什么减2呢？
                // 因为cstring会在每一个字符后面加一个0作为结束符
                break
            }
            j = j + 1
        } else {
            // 找下一个可以匹配的位置
            var find = false
            for k in max(nextIndex + 1, 0)..<hay_cstirng.count {
                if hay_cstirng[k] == nee_cstring.first {
                    nextIndex = k
                    find = true
                    break
                }
            }
            if find {
                i = nextIndex
                j = 0
                continue
            } else {
                j = -1
                break
            }
        }
        i = i + 1
    }
    
    if j == nee_cstring.count - 2 && nextIndex == -1 {
        // 从头开始就完全匹配的情况
        nextIndex = 0
    } else if j != nee_cstring.count - 2 {
        nextIndex = -1
    }
    
    return nextIndex
}
