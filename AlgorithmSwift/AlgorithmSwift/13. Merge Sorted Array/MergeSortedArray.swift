//
//  MergeSortedArray.swift
//  AlgorithmSwift
//
//  Created by 王业 on 2019/3/24.
//  Copyright © 2019 J0hnnny. All rights reserved.
//

import Cocoa

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    guard n > 0 else { return }
    guard nums2.count > 0 else { return }
    
    var i = 0
    var j = 0
    var k = m
    while i < k {
        if nums1[i] >= nums2[j] {
            for q in (i..<k).reversed() {
                nums1[q+1] = nums1[q]
            }
            nums1[i] = nums2[j]
            j = j + 1
            k = k + 1
            if j == n { break }
        }
        i = i + 1
    }
    while j < n {
        nums1[k] = nums2[j]
        j = j + 1
        k = k + 1
    }
}
